{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
module Analysis.PureActor.Semantics(
    runEvalEmpty,
    eval,
    halt,
    runAnalysis,
    Fork(..),
    NonDet,
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
data Turn = Turn EvalExpr Env S
  deriving (Ord, Eq, Show)

type Sto = Map Adr Val

-----------------------------------------
-- Monad
-----------------------------------------

-- Reader component
type R = Env
-- State component
data S = S {
    _sto     :: Sto,
    _spawned :: Map ActorRef (Set (EvalExpr, Env)),
    _outbox  :: Map ActorRef (Set (Tag, Val))
  } deriving (Ord, Show, Eq)

$(makeLenses ''S)

-- | Create an empty state 'S'
emptyState :: S
emptyState = S Map.empty Map.empty Map.empty


-- Other effects (i.e., non-determinism and short-circuiting/failure)
type F a = [K a]

newtype EvalM ξ a =
  EvalM { runEvalM :: R -> S -> F (a, S) }

-- | Continuation type, "Continue" if the evaluation can proceed, or "Stop" if
-- the evaluation has to halt
newtype K a = K { unK :: Either Turn a }
         deriving (Applicative, Functor, Monad, Foldable, Traversable, Ord, Eq, Show)

-- | Runs the evaluation monad wih an empty initial environment and store 
runEvalEmpty :: EvalM ξ a -> [K (a, Sto)]
runEvalEmpty ma = fmap (second _sto) <$> runEvalM ma Map.empty emptyState


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
halt expr env = getState >>= \st -> EvalM $ const $ const $ pure $ K $ Left (Turn expr env st)


-- | Return the current environment
getEnv :: EvalM ξ Env
getEnv = ask

withEnv :: MonadReader Env m => (Env -> Env) -> m a -> m a
withEnv = local

-- | Return the current store
getStore :: EvalM ξ Sto
getStore = view sto <$> getState

-- | Store a value of a new variable and returns its address.
store :: Ide -> Val -> EvalM ξ Adr
store nam vlu = modify (over sto (Map.insertWith L.join adr vlu)) $> adr
  where adr = Adr $ spanOf nam

-- | Register that a new actor should be spawned
spawn :: Span -> EvalExpr -> Env -> EvalM ξ ActorRef
spawn sp expr env = do
    modify (over spawned (Map.insertWith Set.union ref (Set.singleton (expr, env)))) $> ref
  where ref = ActorRef sp

-- | Lookup the value of the given variable
lookup :: String -> EvalM ξ Val
lookup nam =
  maybe mzero return =<< fmap (flip Store.lookupSto) getStore <*> (Env.lookup nam <$> getEnv)

-- | Send a mailbox the given actor and record it in its outbox
send :: ActorRef -> Tag -> Val -> EvalM ξ ()
send ref t val = modify (over outbox (Map.insertWith Set.union ref (Set.singleton (t, val))))

-----------------------------------------
-- Polymorphic configuration points for "EvalM" 
-----------------------------------------

-- | Determines how forking (and joining) should be
-- performed for the 'EvalM' monad according to the ξ family.
--
-- Families are meant to be implemented in this module, as the
-- internal representation of the EvalM monad remains opaque
-- for external clients.
class Fork ξ where
  type C ξ a :: Constraint
  -- | Monadic action over the EvalM monad for forking (e.g., splitting on a conditional)
  fork :: C ξ a => EvalM ξ a -> EvalM ξ a -> EvalM ξ a

-- Some useful forking configurations (encoded as a family)

-- | This configuration simply splits the monad into distinct non-deterministic paths, but does so without duplicates, hence the "Ord" constraint is required.
data NonDet
instance Fork NonDet where
  type C NonDet a = Ord a
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
  v <- withEnv (Env.extend (Ide.name nam) adr) (eval bdn)
  _ <- store nam v
  evalLetrec bds bdy


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
analyze :: Set Turn -> Set Turn
analyze = foldMap analyze'

-- unlifted version of 'analyze'
analyze' :: Turn -> Set Turn
analyze' = error "NYI"

-- TODO: add some other parameters for the initial state, the initial
-- states are currently empty
runAnalysis :: Expr -> Set Turn
runAnalysis expr =
  lfp analyze (Set.singleton $ Turn (ProgramExpr expr) Map.empty emptyState)
