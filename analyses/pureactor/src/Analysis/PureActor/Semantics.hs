{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
module Analysis.PureActor.Semantics(
    -- * Evaluation
    eval,
    Fork(..),
    NonDet,
    -- * System
    System(..),
    actorSeeds,
    actorTurns,
    mailboxes,
    storeSys,
    Turn(..),
    EvalExpr(..),
    -- * State components
    MB,
    Sto,
    S(..),
    sto,
    spawned,
    inbox,
    outbox,
    R(..),
    env,
    self,
    Env,
    -- * Entrypoints
    analyzeProgram,
    -- Filtering operations
    filterSubsumed
  ) where

import qualified Domain.Class as Domain
import Domain.PureActor
import Language.PureActor
import qualified Data.List as List
import qualified Data.Map.Lazy as Map
import qualified Data.Set as Set
import Lattice.ProductLattice ()
import Lattice.MapLattice ()
import Analysis.Fixpoint (lfp)
import qualified Lattice.Class as L
import qualified Analysis.Environment as Env
import qualified Analysis.Store as Store
import Syntax.Span (spanOf, Span)
import qualified Syntax.Ide as Ide
import Control.Monad
import Control.Lens
import qualified Analysis.Actors.Mailbox as MB
import Relude.Extra (dup)


-----------------------------------------
-- State space 
-----------------------------------------

-- | An expression to evaluate, this differs from the 'Expr'
-- datatype in the AST as handlers can also implicitly be
-- seen as a "receive" block but are not part of the surface
-- syntax.
data EvalExpr =
    ProgramExpr Expr | ReceiveExpr Handlers
  deriving (Ord, Eq, Show)

-- | A 'Turn' captures the entire state of the actor prior to executing its next turn
-- the 'Termoinated' variant captures when the actor has terminated and captures its state
-- but discards its value.
data Turn = Turn EvalExpr R S | Terminated S
  deriving (Ord, Eq, Show)

-- | Returns true if the static components of the turn (i.e., "EvalExpr" and "R") are equal.
eqStatic :: Turn -> Turn -> Bool
eqStatic (Turn e1 r1 _) (Turn e2 r2 _) =
  e1 == e2 && r1 == r2
eqStatic _ _ = False


-- | Returns the state embedded in the turn
stateOf :: Turn -> S
stateOf = \case Turn _ _ s -> s
                Terminated s -> s

-- | Store type
type Sto = Map Adr Val

-- | Mailbox type
type MB = Set (Tag, Val)

-----------------------------------------
-- Monad
-----------------------------------------

-- State component
data S = S {
    _sto     :: Sto,
    _spawned :: Map ActorRef (Set (EvalExpr, Env)),
    _inbox   :: MB,
    _outbox  :: Map ActorRef MB
  } deriving (Ord, Show, Eq)


-- Reader component
data R = R {
    _env   :: Env,
    _self :: ActorRef
  } deriving (Ord, Eq, Show)


$(makeLenses ''S)
$(makeLenses ''R)

-- | Extracts the store component from the turn
turnStore :: Turn -> Sto
turnStore (Turn _ _ s) = s ^. sto
turnStore (Terminated s) = s ^. sto

-- | Create an empty state 'S'
emptyState :: S
emptyState = S Map.empty Map.empty MB.empty Map.empty


-- | Create an empty reader 'R'
emptyReader :: ActorRef -> R
emptyReader = R Map.empty


-- Other effects (i.e., non-determinism and short-circuiting/failure)
type F a = [K a]

newtype EvalM ξ a =
  EvalM { runEvalM :: R -> S -> F (a, S) }

-- | Continuation type, "Continue" if the evaluation can proceed, or "Stop" if
-- the evaluation has to halt
newtype K a = K { unK :: Either Turn a }
         deriving (Applicative, Functor, Monad, Foldable, Traversable, Ord, Eq, Show)

instance Functor (EvalM ξ) where
  fmap f (EvalM s) = EvalM $ \r st -> fmap (fmap (first f)) (s r st)

instance Applicative (EvalM ξ) where
  pure a = EvalM $ const $ pure . pure . (a,)
  (<*>) (EvalM fs) (EvalM as)  =
    EvalM $ \r st ->
      foldMap
        (fmap join . traverse (\(f, st') -> fmap (first f) <$> as r st'))
        (fs r st)

instance Monad (EvalM ξ) where
  return = pure
  EvalM ma >>= f = EvalM $ \r st ->
    foldMap
      (fmap join . traverse (\(a, st') -> runEvalM (f a) r st'))
      (ma r st)


instance MonadReader R (EvalM ξ) where
  ask = EvalM $ \r -> List.singleton . pure . (r,)
  local f (EvalM m) = EvalM $ \r s -> m (f r) s

instance MonadState S (EvalM ξ) where
  state f = EvalM $ const $ pure . pure . f


instance Alternative (EvalM ξ) where
  empty = EvalM $ const $ const []
  (<|>) (EvalM as) (EvalM bs) =
    EvalM $ \r st -> as r st ++ bs r st

instance MonadPlus (EvalM ξ)

--
-- Monad operations
-- 

-- | Capture the current state
getState :: EvalM ξ S
getState = EvalM $ const $ \s -> pure (pure (s, s))

-- | End an actors turn and return the state for the next turn
halt :: EvalExpr -> Env -> EvalM ξ a
halt expr environ = do
  r <- set env environ <$> ask
  getState >>= \st -> EvalM $ const $ const $ pure $ K $ Left (Turn expr r st)


-- | Return the current environment
getEnv :: EvalM ξ Env
getEnv = asks (view env)

withEnv :: MonadReader R m => (Env -> Env) -> m a -> m a
withEnv f = local (over env f)

-- | Return the reference to the currently analyzed actor
getSelf :: EvalM ξ ActorRef
getSelf = asks (^. self)

-- | Return the current store
getStore :: EvalM ξ Sto
getStore = view sto <$> getState

-- | Store a value of a new variable and returns its address.
store :: Ide -> Val -> EvalM ξ Adr
store nam vlu = modify (over sto (Map.insertWith L.join adr vlu)) $> adr
  where adr = Adr $ spanOf nam

-- | Register that a new actor should be spawned
spawn :: Span -> EvalExpr -> Env -> EvalM ξ ActorRef
spawn sp expr environ = do
    modify (over spawned (Map.insertWith Set.union ref (Set.singleton (expr, environ)))) $> ref
  where ref = ActorRef sp

-- | Lookup the value of the given variable
lookup :: String -> EvalM ξ Val
lookup nam =
  maybe mzero return =<< fmap (flip Store.lookupSto) getStore <*> (Env.lookup nam <$> getEnv)

-- | Send a mailbox the given actor and record it in its outbox
send :: ActorRef -> Tag -> Val -> EvalM ξ ()
send ref t val = modify (over outbox insertIntoMailbox)
  where insertIntoMailbox mb = Map.insert ref (MB.enqueue (t, val) (fromMaybe MB.empty $ Map.lookup ref mb)) mb

-- | Receive a message from the inbox
rcv :: Fork ξ => EvalM ξ (Tag, Val)
rcv = do
  currentInbox <- gets (view inbox)
  forks $ map (\(msg, currentInbox') -> modify (set inbox currentInbox') $> msg) (Set.toList $ MB.dequeue currentInbox)

-----------------------------------------
-- Polymorphic configuration points for "EvalM" 
-----------------------------------------

-- TODO: this should actually be a type family, but it would mean that C constraints
-- would propagate to all levels if we would use "fork" for someting, which is not ideal.
type C ξ a = Ord a

-- | Determines how forking (and joining) should be
-- performed for the 'EvalM' monad according to the ξ family.
--
-- Families are meant to be implemented in this module, as the
-- internal representation of the EvalM monad remains opaque
-- for external clients.
class Fork ξ where
  -- type C ξ a :: Constraint
  -- | Monadic action over the EvalM monad for forking (e.g., splitting on a conditional)
  fork :: C ξ a => EvalM ξ a -> EvalM ξ a -> EvalM ξ a

forks :: (Fork ξ, C ξ a) => [EvalM ξ a] -> EvalM ξ a
forks = foldr fork mzero

-- Some useful forking configurations (encoded as a family)

-- | This configuration simply splits the monad into distinct non-deterministic paths, but does so without duplicates, hence the "Ord" constraint is required.
data NonDet
instance Fork NonDet where
  -- type C NonDet a = Ord a
  fork ma mb =
    EvalM $
      \r st -> Set.toList $ Set.fromList $ runEvalM (ma <|> mb) r st


-- | This configuration joins all of states resulting from both computations
-- together into a single element.
-- data Join
-- instance Fork Join where
--   type C Join a = (BottomLattice a, Joinable a, Eq a)
--   fork ma mb =
--     -- [K a] -> K [a] -> [K a]
--     EvalM $
--       \r st ->
--         -- TODO: Turn is not Joinable, could be fixed to have sets of turns returned, but with a joined state
--         -- i.e., type K a = Either (Set (Expr, Env), S) a
--         let (continues, stops) = bimap (Left . L.joins) (Right . L.joins) $ partitionEithers (unK <$> runEvalM (ma <|> mb) r st)
--         in filter (either (/= L.bottom) (/= L.bottom) . unK) [K continues, K stops]

-----------------------------------------
-- Semantics
-----------------------------------------

-- | Allocates the argument value for the behavior in the store
-- and returns the behavior
evalBehavior :: Val -> Beh -> EvalM ξ (Beh, Env)
evalBehavior val beh@(Beh ide _ env') = do
  adr <- store ide val
  return (beh, Env.extend (Ide.name ide) adr env')


-- | Evaluate the a letrec special form
evalLetrec :: Fork ξ => [(Ide, Expr)] -> Expr -> EvalM ξ Val
evalLetrec [] bdy = eval bdy
evalLetrec ((nam, bdn) : bds) bdy = do
  let adr = Adr (spanOf nam)
  environ <- getEnv
  let env' = Env.extend (Ide.name nam) adr environ
  v <- withEnv (const env') (eval bdn)
  _ <- store nam v
  withEnv (const env') $ evalLetrec bds bdy


-- | Encodes the big-step evaluation relation of a single-turn
eval :: Fork ξ => Expr -> EvalM ξ Val
eval =
  \case
    Lit l _ -> return $ Domain.inject l
    Begin es _ ->
      mapM eval es >>= maybe mzero return . viaNonEmpty last
    Behavior nam hdls _ -> Domain.inject . Beh nam hdls <$> getEnv
    Var (Ide nam _) -> lookup nam
    Become expr exprValue _ -> do
      -- (become expr exprValue)
      -- The new behavior to become
      abehavior' <- eval expr
      -- The argument for the behavior's state
      value <- eval exprValue
      -- Allocate the behavior's state ...
      (Beh _ hdls _, env') <- msum $ map (evalBehavior value) (Set.toList $ behs abehavior')
      -- ... and end the current turn.
      halt (ReceiveExpr hdls) env'

    Spawn behExpr valueExpr sp ->  do
      abehavior <- eval behExpr
      value <- eval valueExpr
      (Beh _ hdls _, env') <- msum $ map (evalBehavior value) (Set.toList $ behs abehavior)
      Domain.inject <$> spawn sp (ReceiveExpr hdls) env'

    Send refExpr tag valueExpr _ -> do
      aref <- eval refExpr
      value <- eval valueExpr
      msum (map (\ref -> send ref tag value) (Set.toList (refs aref)))  $> nilValue

    Letrec bds bdy _ ->
      evalLetrec bds bdy

    Self _ -> Domain.inject <$> getSelf

-- | Select a handler by serving a message from the inbox
-- and execute it.
selectHandler :: Fork ξ => Handlers -> EvalM ξ Val
selectHandler (Handlers hdls) = do
  (tag, val) <- rcv
  maybe mzero (\(nam, expr) -> store nam val >>= flip withEnv (eval expr) . Env.extend (Ide.name nam)) $ Map.lookup tag hdls

-----------------------------------------
-- Single actor analysis
-----------------------------------------

-- | The execution of a single actor can be thought of as a sequence
-- of actor turns which we collect into a set.
--
-- This set is monotonically increasing and finite, thus a least fixed
-- point can be computed over it.
--
-- Hence, the analysis of a single actor is defined as the least
-- fixpoint over the set of possible reachable behaviors.
analyze :: forall ξ . Fork ξ => Set Turn -> Set Turn
analyze visited = visited `Set.union` foldMap (analyze' @ξ) visited

-- unlifted version of 'analyze'
analyze' :: forall ξ . Fork ξ => Turn -> Set Turn
analyze' (Turn expr r st) =
  Set.fromList $ map (either id (Terminated . snd) . unK) $
    runEvalM (case expr of
       ProgramExpr programExpr -> eval @ξ programExpr
       ReceiveExpr hdls -> withEnv (const $ r ^.  env) $ selectHandler @ξ hdls
    ) r st
analyze' (Terminated _) = Set.empty -- nothing to do for terminated actors

-----------------------------------------
-- Actor system analysis
-----------------------------------------

-- | An actor system is characterized by the seed (initial) turns per actor,
-- all reachable turns per actor, mailbox contents, and a shared store.
data System = System {
    -- | The seed (initial) turn(s) per spawned actor
    _actorSeeds :: Map ActorRef (Set Turn),
    -- | All reachable turns per actor (result of the intra-actor fixpoint)
    _actorTurns :: Map ActorRef (Set Turn),
    -- | The mailbox contents for each actor
    _mailboxes  :: Map ActorRef MB,
    -- | The global shared store (joined across all actors)
    _storeSys   :: Sto
  } deriving (Ord, Eq, Show)

emptySystem :: System
emptySystem = System Map.empty Map.empty Map.empty Map.empty

$(makeLenses ''System)


-- | We define the analysis of an entire actor program as the least
-- fix point over the actor system (see 'System').
--
-- This function defines the transition from one system to another,
-- and function 'analyzeProgram' computes the least fix point of the
-- system to obtain an analysis result for the program.
analyzeSystem :: System -> System
analyzeSystem sys =
  let
    -- For each actor, inject the system store and current mailbox into its seed
    -- turns, then run the full intra-actor fixpoint from those seeds.
    analyzedActors :: Map ActorRef (Set Turn)
    analyzedActors = Map.mapWithKey (\ref seeds ->
        let mb = fromMaybe MB.empty (Map.lookup ref (sys ^. mailboxes))
            seedsWithCtx = Set.map (\case
                Turn expr r st -> Turn expr r (set inbox mb (set sto (sys ^. storeSys) st))
                t@(Terminated _) -> t) seeds
        in lfp (analyze @NonDet) seedsWithCtx
      ) (sys ^. actorSeeds)

    -- All reachable turns across all actors
    allTurns :: [Turn]
    allTurns = concatMap Set.toList (Map.elems analyzedActors)

    allStates = map stateOf allTurns

    -- Extract and join stores from all reachable and terminated turns
    newStore :: Sto
    newStore = L.join (sys ^. storeSys) $ L.joins $ map (view sto) allStates

    -- Collect seed turns for newly spawned actors; they inherit the system store
    newlySpawnedSeeds :: Map ActorRef (Set Turn)
    newlySpawnedSeeds = L.joins $ map (\st ->
        Map.mapWithKey (\ref -> Set.map (\(expr, envi) -> Turn expr (R envi ref) emptyState)) (st ^. spawned)
      ) allStates

    -- Extract outbox messages sent during all reachable and terminated turns
    newOutbox :: Map ActorRef MB
    newOutbox = L.joins $ map (view outbox) allStates

    -- Seeds only grow with newly discovered spawned actors
    newActorSeeds = L.join (sys ^. actorSeeds) newlySpawnedSeeds

    -- All reachable turns are updated from the intra-actor fixpoints
    newActorTurns = L.join (sys ^. actorTurns) analyzedActors

    -- Accumulate all ever-sent messages into the mailboxes
    newMailboxes = L.join (sys ^. mailboxes) newOutbox

  in System newActorSeeds newActorTurns newMailboxes newStore


-- | Returns an initial system (see 'System') for the given main actor expression
injectSystem :: Expr -> System
injectSystem expr =
  emptySystem { _actorSeeds = Map.singleton MainRef (Set.singleton (Turn (ProgramExpr expr) (R Map.empty MainRef) emptyState)) }

-- | Analyze a program given by the first argument as an 'Expr'.
--
-- The first argument is treated as the 'main actor'. It does not
-- have a mailbox of its own, but can send messages to the other actors
-- in the system.
--
-- In principle, the main actor should not call "become" but is not prohibited
-- from doing so by the analysis. In fact, the analysis remains sound even
-- if 'become' gets called from the main actor.
analyzeProgram :: Expr -> System
analyzeProgram = lfp analyzeSystem . injectSystem

-----------------------------------------
-- Filtering
-----------------------------------------

-- Filter reachable states from the system that are smaller than other
-- reachable states (i.e., have a smaller global store component).
-- These states do not need to be reported as their results are already
-- subsumed by other seen states.
filterSubsumed :: System -> System
filterSubsumed s@System { _actorTurns } =
    s { _actorTurns = Map.map filterSubsumedTurns _actorTurns }
  where
    filterSubsumedTurns =
      Set.fromList .
        map
          (  fst  -- select the "greatest" one.
           . fromMaybe (error "invariant: partial order cannot be empty")
           . (      viaNonEmpty head
               <=< (  viaNonEmpty head
                    . map reverse
                    . L.allOrderingsMap snd
                    . map (second turnStore)
                    . uncurry zip
                    . dup)))
           . List.groupBy eqStatic -- group all of the "same" turns together
           . Set.toList


