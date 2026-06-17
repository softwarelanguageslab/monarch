{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use fewer imports" #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Analysis.SimpleActor.Fixpoint(
    analyze,
    AnalysisState (..),
    System (..),
    BlameRecord(..),
    analyzeIO
) where


import Control.Monad.Escape (MayEscapeT)
import Data.Set (Set)
import Analysis.SimpleActor.Monad
    ( ActorError,
      Cmp(..),
      MonadMailbox(..),
      MonadSpawn(..),
      MonadDynamic(..),
      MonadFresh(..),
      MonadBlame(..), message,

      )
import Control.Monad.Reader (ReaderT, MonadReader (..))
import Analysis.SimpleActor.Fixpoint.Common
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Lens
import Control.Monad.State (StateT (runStateT), execStateT, mapStateT)
import Control.Monad.Except (ExceptT, throwError)
import GHC.Generics (Generic)
import Analysis.Monad.Environment (EnvM (..))
import Analysis.Monad.Cache (CacheT, MonadCache (..))
import Analysis.Monad.Map (MapM (..))
import Analysis.Monad.Join (SetNonDetT)
import Analysis.Monad (WorkListT, CtxM (..), runWithComponentTracking, runIntraAnalysis, StoreM (lookupAdr, hasAdr))
import qualified Lattice.Class as Lattice
import Data.Maybe (fromMaybe)
import Analysis.Monad.DependencyTracking (DependencyTrackingT, runWithDependencyTracking)
import qualified Data.Set as Set
import Analysis.Monad.Fix (lfp, runFixT)
import qualified Data.HashMap.Lazy as HashMap
import qualified Analysis.SimpleActor.Semantics as Semantics
import Lattice.Class (Joinable, BottomLattice, Meetable)
import Control.Monad.Layer (MonadLayer(..))
import Analysis.Monad.Partition (MonadPartition (..))
import Analysis.Actors.Monad (MonadActorLocal (..))
import qualified Domain.Actor
import Analysis.Monad.Allocation (AllocM (..))
import Control.Monad.IO.Class (MonadIO)
import Analysis.Monad.ComponentTracking (ComponentTrackingT)
import Data.Bifunctor
import qualified Analysis.Fixpoint as Fix
import Domain.Actor (Pid(EntryPid))
import Analysis.Monad.WorkList ( runWithWorkList )
import Data.Tuple.Extra
import qualified Analysis.Actors.Mailbox.Partitioned as MB
import Data.Functor
import Control.Monad ((>=>))

-- These are here for the instances of each domain for the "TopLifted" value.
import Domain.Core.PairDomain.TopLifted ()
import Domain.Core.StringDomain.TopLifted ()

import qualified Analysis.Symbolic.Monad as SCV
import qualified Domain.SimpleActor as Domain
import Symbolic.AST (emptyPC)
import qualified Solver as SCV
import Domain.Core.AbstractCount (AbstractCount)
import Analysis.Monad.AbstractCount
import Solver.Z3 (runZ3SolverWithPrelude)
import Analysis.Monad.IntraAnalysis (IntraAnalysisT)
import qualified Analysis.Monad.Map as MapM
import qualified Analysis.ASE.SymbolicVariable as ASE
import qualified Analysis.ASE.PC as ASE
import Syntax.Span
import qualified Domain.Symbolic.Class as Symbolic
import Control.DeepSeq (NFData)
import Syntax.AST

-- These are here for the instances of each domain for the "TopLifted" value.
import Domain.Core.PairDomain.TopLifted ()
import Domain.Core.StringDomain.TopLifted ()
-- import qualified RIO as Debug
import qualified Control.Monad.State as State
import qualified RIO as Debug
import qualified Domain.Scheme.Class as Scheme
import Analysis.Scheme.Monad (SchemeStoreT, runSchemeStoreT, SchemeStoreM)
import qualified Domain.Scheme.Store as Store
import Analysis.Store (traceStore)
import Domain.Core.VectorDomain.PIVector
import Domain.Core.PairDomain.Class
import Control.Monad.Cond (ifM)
import qualified Lattice.Trace as Lattice

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Beh = (Exp, ActorEnv, Map String (Store.VarAdr K))
type Err = Set ActorError

------------------------------------------------------------
-- Hacks
------------------------------------------------------------

-- This instance makes little sense on its own, but stems from the fact 
-- that Monarch requires everything that could be used in an 'mjoin' 
-- (see MonadJoinable) to be Lattice.Class.Joinable. On our monad stack
-- we use 'ExceptT' which is represented by 'Either', hence the instance.
--
-- However, we only use the list monad for non-determinism and 
-- never join values within the analysis of a single turn, hence 
-- the 'join' function does not actually get called making the error
-- below unreachable.
instance Joinable (Either e a) where
    join = error "Either is not joinable"

instance BottomLattice (Either e a) where
    bottom = error "Either does not have a bottom lattice"

------------------------------------------------------------
-- Monadic contexts
------------------------------------------------------------

data Ctx = Ctx {
        -- | Lexical environment
        _env :: ActorEnv,
        -- | Dynamic bindings 
        _dyn :: Map String (Scheme.VaAdr ActorVlu),
        -- | Self
        _self :: ActorRef,
        -- | Additional context, for instance for k-cfa
        _ctx :: AdrCtx
    } deriving (Ord, Eq, Show, Generic)

instance NFData Ctx

$(makeLenses ''Ctx)

emptyCtx :: ActorRef -> Ctx
emptyCtx ref = Ctx HashMap.empty initialDynEnvironment ref (initialContext 1)

-- | Intra-turn analysis state
data State = State {
        -- | The inbox of the actor that is being analyzed.
        _inbox :: PMB
    } deriving (Ord, Eq, Show, Generic)


instance NFData State

instance Joinable State where
    join (State inbox1) (State inbox2) =
        State (Lattice.join inbox1 inbox2)
instance Meetable State where
    meet (State _) (State _) =
        error "NYI"
        -- State (Lattice.meet inbox1 inbox2) (Lattice.meet outbox1 outbox2)
instance BottomLattice State where
    bottom = State Lattice.bottom

$(makeLenses ''State)

-- | Inter-turn analysis state
data InterTurnState = InterTurnState {
        -- | Track the outgoing mail
        _outbox :: ActorMai
    } deriving (Ord, Eq, Show, Generic)

instance NFData InterTurnState
$(makeLenses ''InterTurnState)

-- | Inter-actor actor system state
data System = System {
        -- | All the mailboxes in the system 
        _mbs   :: ActorMai,
        -- | All of the reachable behaviors/turns indexed
        -- by each actor.
        _turns :: Map ActorRef (Set Turn),
        -- | The initial behaviors of an actor 
        _initialBeh :: Map ActorRef Beh
    } deriving (Ord, Eq, Show, Generic)

instance NFData System

------------------------------------------------------------
-- Turns and continuations
------------------------------------------------------------

data Turn = Turn {
    -- | The active behavior of the actor in that turn
    _behavior :: Cnt,
    -- | The state of the actor (its inboxes and outboxes)
    _state    :: State
    } deriving (Ord, Eq, Show, Generic)
instance NFData Turn

data Cnt = Become Beh | Terminated deriving (Ord, Eq, Show, Generic)
instance NFData Cnt

cntEither :: Either Beh a -> Cnt
cntEither = either Become (const Terminated)

$(makeLenses ''System)
$(makeLenses ''Turn)

------------------------------------------------------------
-- Monads
------------------------------------------------------------

-- The analysis consists of three fixpoints: 
--
-- * A fixpoint over intra-actor procedural calls which is 
-- necessary because internal calls can be recursive. 
-- * A fixpoint over actor behaviors, which is necessary because 
-- the mailbox abstraction might introduce loops and cause the 
-- analysis of a single actor to loop as well. 
-- * A fixpoint over actor systems, which is necessary to ensure 
-- that global effects (sends and receives) between actors are 
-- propagated and taken into account.
--
-- Each of the monadic contexts defined below are contexts 
-- that are used within one iteration of each of these fixpoints.

------------------------------------------------------------

-- | Intra-procedural fixpoint: monadic context used for analyzing 
-- a single function call.
type ProcT m = (
        -- escaping control flow, primarily used for handling errors
        MayEscapeT Err (
        -- the path constraint is also part of the context and is cached
        SCV.FormulaT Domain.SymVar ActorVlu (
        -- TODO: use an actual abstract count 
        InftyCountT Domain.SymVar AbstractCount (
        -- the evaluation context, includes a self-reference, lexical and dynamic environment.
        ReaderT Ctx m
     ))))

-- | The key that is used for caching function call results
type ProcKey = Key (ProcT (IntraT Identity)) Cmp
-- | The result values of function call results in the cache
type ProcVal = Val (ProcT (IntraT Identity)) ActorVlu

initialProcKey :: Cmp -> Ctx -> State -> ProcKey
initialProcKey cmp ctx' st' = cmp <+> emptyPC <+> ctx' <+> st'

------------------------------------------------------------

-- | Intra-actor fixpoint: monadic context used for analyzing a single 
-- turn of an actor.
type IntraT m = (
        -- allows returning from the analysis when ending a turn (i.e., when the 'become' statement is reached, 
        -- or when a 'receive' statement is evaluated). 
        ExceptT Beh (
        -- the state of the actor (inbox and outbox) is tracked in this monad.
        StateT State (
        -- the intra-actor analysis is path-sensitive meaning that it tracks 
        -- inbox content independently for each path through the actor. 
        SetNonDetT (
        CacheT (
        StateT InterTurnState m
    )))))


-- | Lift an IntraT computation to a ProcT computation
liftIntraT :: Monad m => IntraT m a -> ProcT (IntraT m) a 
liftIntraT = upperM . upperM . upperM . upperM

-- | Lift a InterTurnState computation to an IntraT computation
liftInterTurnT :: Monad m => StateT InterTurnState m a -> IntraT m a
liftInterTurnT = upperM . upperM . upperM. upperM

------------------------------------------------------------

-- | Inter-actor fixpoint: monadic context used for analyzing a single 
-- actor system. 
type SystemT m = (
        StateT System m
    )

------------------------------------------------------------

-- | Datatype for recording a blame error
data BlameRecord = BlameRecord {
        partyExpr    :: Exp, 
        partyValue   :: ActorVlu,
        contractExpr :: Exp,
        blameLoc     :: Span
    } deriving (Ord, Eq, Show, Generic)

instance NFData BlameRecord

-- | Global analysis state: the call-result cache plus bookkeeping (trace and
-- recorded blames). Dependency tracking lives in dedicated
-- 'DependencyTrackingT' layers, see 'GlobalT'.
data AnalysisState = AnalysisState {
        _cache  :: Map ProcKey ProcVal,
        _trace  :: [System],
        _blames :: Set BlameRecord
    } deriving (Ord, Eq, Show, Generic)

instance NFData AnalysisState

$(makeLenses ''AnalysisState)


------------------------------------------------------------

-- | Monad global to the analysis
--
-- Dependency tracking is delegated to dedicated 'DependencyTrackingT' layers,
-- one per kind of dependency: call dependencies (keyed by 'ProcKey') and one
-- per store-address type (the multi-store keeps variables, pairs, vectors and
-- strings in separate maps). This mirrors the layering used in
-- 'Analysis.Scheme' and keeps the 'StateT AnalysisState' layer responsible
-- only for the call cache, the trace, and recorded blames.
type GlobalT m = (
        StateT AnalysisState  (
        SchemeStoreT Exp K ActorVlu (
        ComponentTrackingT ProcKey (
        DependencyTrackingT ProcKey ProcKey (
        DependencyTrackingT ProcKey (Store.VarAdr K) (
        DependencyTrackingT ProcKey (Store.PaiAdr Exp K) (
        DependencyTrackingT ProcKey (Store.VecAdr Exp K) (
        DependencyTrackingT ProcKey (Store.StrAdr Exp K) (
        WorkListT [ProcKey] m)))))))))

------------------------------------------------------------

-- The type aliases defined below are for convenience and readibility. 
-- The idea is that when defining each layer of fixpoint iterations, we peel off one 
-- of the monads in the stack and use the corresponding type alias to make it clear 
-- which leayer of fixpoint iteration we are working on.

-- The monad for the entire analysis
type AnalysisT m = (ProcT (IntraT (IntraAnalysisT ProcKey (SystemT (GlobalT m)))))
-- The monad stack for the intra-actor fixpoint.
type AnalysisIntraT m = (IntraT (SystemT (GlobalT m)))
-- The monad stack for the inter-actor fixpoint. 
type AnalysisSystemT m = (SystemT (GlobalT m))
-- The monad stack for the analysis-global fixpoint.
type AnalysisGlobalT m = (GlobalT m)

------------------------------------------------------------
-- Monad instances
------------------------------------------------------------

instance Monad m => MonadFresh ActorVlu (ProcT m) where
    -- TODO: let the semantics decide what value to annotate with the symbolic variable
    fresh = return . flip Symbolic.var Lattice.top . flip ASE.SymbolicVariable ASE.emptyPC . spanOf


-- Intra-procedural monad instances.

-- The 'Ctx' data type captures the lexical and dynamic environment and thus implements the appropriate monad instances.
instance Monad m => EnvM (ProcT m) ActorAdr ActorEnv where
  withEnv f = lowerM (local (over env f))
  getEnv = view env
instance Monad m => MonadDynamic ActorAdr (ProcT m) where
    withDynamic f = lowerM (local (over dyn f))
    getDynamic = view dyn
-- The reader component tracks the actor local information in its context.
instance Monad m => MonadActorLocal ActorVlu (ProcT m) where
    withSelf ref = lowerM (local (set self ref))
    getSelf = view self
-- The 'Ctx' component tracks additional context information as well.
instance Monad m => CtxM (ProcT m) AdrCtx where
    withCtx f = lowerM (local (over ctx f))
    getCtx = view ctx
instance Monad m => AllocM (ProcT m) Exp (Store.PaiAdr Exp AdrCtx) where
    alloc expr = Store.PaiAdr expr <$> getCtx
instance Monad m => AllocM (ProcT m) Exp (Store.VecAdr Exp AdrCtx) where
    alloc expr = Store.VecAdr expr <$> getCtx
instance Monad m => AllocM (ProcT m) Exp (Store.StrAdr Exp AdrCtx) where
    alloc expr = Store.StrAdr expr <$> getCtx
instance Monad m => AllocM (ProcT m) Ide (Store.VarAdr AdrCtx) where
    alloc expr = Store.VrrAdr expr <$> getCtx

------------------------------------------------------------

-- Intra-actor monad instances.

-- TODO: actually implement this instance for any type of partitioning scheme.
instance Monad m => MonadPartition Partition (IntraT m) where
    integrate = const $ return ()
    get = return Lattice.bottom

-- | Adds the message context based on information in the monad
addMessageCtx :: (SCV.FormulaSolver Domain.SymVar m, SchemeStoreM Exp ActorVlu m) => MsgPayload ->  (ProcT (IntraT m) Msg)
addMessageCtx payload = do 
        reachableAdrs <- traceStore (Lattice.trace payload) lookupSchemeAdr
        reachableValues <- mapM lookupAdr $ foldMap (\case Store.SVarAdr adr -> [adr] ; _ -> []) (Set.toList reachableAdrs)
        let reachableVariables = foldMap Symbolic.variables reachableValues
        message payload . SCV.restrictPC reachableVariables <$> SCV.getPc @Domain.SymVar @_ @ActorVlu
    where lookupSchemeAdr :: forall m . (SchemeStoreM Exp ActorVlu m) => Store.SchemeAdr Exp K -> m (Maybe ActorVlu)
          lookupSchemeAdr = \case 
            Store.SStrAdr _ -> 
                -- strings do not contain values from the variable domain
                return Nothing
            Store.SPaiAdr adr -> 
                 ifM (hasAdr adr) (do
                    pairValue <- lookupAdr @_ @(Scheme.PaiDom ActorVlu) adr 
                    return (Just $ Lattice.join (car pairValue) (cdr pairValue)))
                 (return Nothing)
            Store.SVecAdr adr -> 
                ifM (hasAdr adr) 
                    (do 
                        (PIVector _ c) <- lookupAdr @_ @(Scheme.VecDom ActorVlu) adr 
                        return (Just c))
                    (return Nothing)
            Store.SVarAdr adr -> 
                ifM (hasAdr adr)
                    (Just <$> lookupAdr @_ @ActorVlu adr)
                    (return Nothing)

instance (MonadIO m, SCV.FormulaSolver Domain.SymVar m, SchemeStoreM Exp ActorVlu m) => MonadMailbox Partition ActorRef ActorVlu MsgContext (ProcT (IntraT m)) where
  send ref v = do
      v' <- addMessageCtx v
      liftIntraT $ liftInterTurnT $ do
        oldOutbox <- use outbox
        outbox . at ref . non MB.empty %= MB.enqueue Lattice.bottom Lattice.bottom v'
        outbox %= Lattice.join oldOutbox
        return ()
  select expr env' dyn' = liftIntraT $ throwError (expr, env', dyn') -- throwError is only here for its escaping mechanism, not for actually reporting an error
  recv = 
    liftIntraT $ uses inbox (MB.dequeue Lattice.bottom)
  putMailbox = liftIntraT . assign inbox
  integrateCtx = const $ return () -- SCV.putPc

------------------------------------------------------------

-- | Inter-actor monad instances

instance Monad m => MonadSpawn ActorVlu AdrCtx (SystemT m) where
    spawn behExpr environ k = do
        let newRef = Domain.Actor.Pid behExpr k
            beh = (behExpr, environ, initialDynEnvironment)
        initialBeh . at newRef ?= beh
        mbs . at newRef %= Just . fromMaybe Lattice.bottom
        return newRef

------------------------------------------------------------

-- Analysis-global instances.


-- The 'AnalysisState' precisely captures the state needed for keeping 
-- track of a 'MapM' cache.
instance (Monad m, k ~ ProcKey, v ~ ProcVal) => MapM k v (StateT AnalysisState m) where
  get k = use (cache . at k)
  put k v = cache . at k ?= v
  joinWith k v = cache . at k %= Just . maybe v (Lattice.join v)
  getAll = use cache

-- Tracking blame errors
instance Monad m => MonadBlame ActorVlu (StateT AnalysisState m) where
    recordBlame loc partyExpr partyValue contract = 
        blames %= Set.insert (BlameRecord partyExpr partyValue contract loc)

-- Access to the global analysis state

class Monad m => MonadAnalysisState m where
    getAnalysisState :: m AnalysisState
    putAnalysisState :: AnalysisState -> m ()
    modifyAnalysisState :: (AnalysisState -> AnalysisState) -> m ()
    modifyAnalysisState f = getAnalysisState >>= putAnalysisState . f
    {-# MINIMAL getAnalysisState, putAnalysisState #-}

instance {-# OVERLAPPABLE #-} (Monad (t m), MonadLayer t, MonadAnalysisState m) => MonadAnalysisState (t m) where
    getAnalysisState = upperM getAnalysisState
    putAnalysisState = upperM . putAnalysisState

instance Monad m => MonadAnalysisState (StateT AnalysisState m) where
  getAnalysisState = State.get
  putAnalysisState = State.put

-- | Register a system after a inter-actor turn, and returns the registered system
traceSystem :: Monad m => System -> AnalysisGlobalT m System
traceSystem sys = (trace %= (sys:)) $> sys

------------------------------------------------------------
-- Fixpoints
------------------------------------------------------------

-- | Constraints that need to be satisfied when executing the analysis
type AnalysisM m = (MonadIO m, SCV.FormulaSolver Domain.SymVar m)

-- | Intra-turn fixpoint: analyze a single turn of an actor, and returns a set of successor turns.
--
-- This is the only place where the semantics from 'Analysis.SimpleActor.Semantics' is actually called.
intraTurn :: forall m . AnalysisM m => Beh -> ActorRef -> State -> StateT InterTurnState (AnalysisSystemT m) (Set Turn)
intraTurn beh selfRef st = do
        -- Debug.traceShowIO $ "intraTurn actor=" ++ show selfRef ++ " beh-expr=" ++ show (spanOf (beh ^._1))
        -- compute a fixpoint over the function calls within this turn
        lfp intra key'
        -- The set of successor turns will have been cached at the entry component
        result <- (Set.fromList . map (uncurry Turn . first cntEither)) . maybe [] Set.toList <$> MapM.get key'
        -- Debug.traceShowIO $ "intraTurn result size=" ++ show (Set.size result)
        return result
    where ctx' = emptyCtx selfRef
               & env .~ (beh ^._2)
               & dyn .~ (beh ^._3)
          cmp'  = case beh ^._1 of
                    expr@Receive {} ->  ReceiveExp expr
                    expr -> ActorExp expr
          key'  = initialProcKey cmp' ctx' st
          intra :: ProcKey -> StateT InterTurnState (AnalysisSystemT m) ()
          intra k = runFixT @(AnalysisT m) Semantics.eval k
                  & mapStateT (runIntraAnalysis k)
          {-# SCC intra #-}

-- | Inter-turn fixpoint: analyze a sequence of turns of an actor 
-- until its state (i.e., inbox and outbox) no longer changes.
transferTurn :: AnalysisM m
             => ActorRef
             -> Turn
             -> StateT InterTurnState (AnalysisSystemT m) (Set Turn)
transferTurn selfRef (Turn (Become beh) turnState) = intraTurn beh selfRef turnState
-- Terminated actors do not generate successor turns, so we return the empty set.
transferTurn _ (Turn Terminated _) = return Set.empty

fixTurn :: AnalysisM m => ActorRef -> Turn -> AnalysisSystemT m (Set Turn)
fixTurn selfRef turn0 = do
    Debug.traceShowIO $ "fixTurn actor=" ++ show selfRef ++ " inbox=" ++ show (turn0 ^. state . inbox)
    -- Run the inter-turn fixpoint, accumulating the actor's outgoing mail in the
    -- 'InterTurnState' as turns are analyzed.
    (result, interTurn) <- runStateT (Fix.lfp (Fix.lift $ transferTurn selfRef) (Set.singleton turn0))
                                      (InterTurnState Lattice.bottom)
    -- Fold the accumulated outbox into the global mailboxes.
    mbs %= Lattice.join (interTurn ^. outbox)
    Debug.traceShowIO $ "fixTurn actor=" ++ show selfRef ++ " result-turns=" ++ show (Set.size result)
    return result

-- | Inter-system fixpoint, analyze a system of actors until the global state (i.e., the mailboxes) no longer changes.
transferSystem :: AnalysisM m => System -> AnalysisGlobalT m System
transferSystem s = do
    -- Debug.traceShowIO $ "transferSystem actors=" ++ show (Map.size (s ^. initialBeh)) ++ " total-turns=" ++ show (sum (map Set.size (Map.elems (s ^. turns))))
    -- Debug.traceShowIO $ "transferSystem mailboxes= " ++ show (s ^. mbs)
    flip execStateT s $ do
        let turnState ref = State (fromMaybe Lattice.bottom (Map.lookup ref (s ^. mbs)))
        let initialTurns  = Map.mapWithKey (\ref beh -> Set.singleton (Turn (Become beh) (turnState ref)))
                                             -- (Map.restrictKeys (s ^. initialBeh) changed)
                                             (s ^. initialBeh)
        newTurns <- Map.traverseWithKey (Fix.lift . fixTurn) initialTurns
        -- join the new turns with the old turns
        turns %= Lattice.join newTurns

fixSystem :: AnalysisM m => System -> AnalysisGlobalT m System
fixSystem = Fix.lfp (transferSystem >=> traceSystem)

------------------------------------------------------------
-- Running the analysis
------------------------------------------------------------

-- | The initial store contains all the primitive functions whhich are stored 
-- at a fixed address.
mainStore :: ActorSto
mainStore = Store.emptySchemeStore 
          & Store.varStore .~ withTop (Semantics.initialSto Semantics.allPrimitives Store.PrrAdr)
          & Store.paiStore .~ withTop Map.empty
          & Store.vecStore .~ Map.empty
          & Store.strStore .~ withTop Map.empty
    where  withTop :: (Ord adr, Lattice.TopLattice adr, Lattice.TopLattice vlu) => Map adr vlu -> Map adr vlu
           withTop = Map.insert Lattice.top Lattice.top

-- | The environment is populated with the initial bindings for the primitive functions.
mainEnv :: ActorEnv
mainEnv =
    HashMap.fromList $ map (second Store.PrrAdr . dupe) Semantics.allPrimitives

-- | Create an initial system from the expression of the main behavior. 
initialSystem :: Exp -> System
initialSystem mainExp = System {
        _mbs = Map.fromList [(EntryPid, Lattice.bottom)],
        _turns = Map.empty,
        _initialBeh = Map.singleton EntryPid (mainExp, mainEnv, initialDynEnvironment)
    }

-- | Create an empty analysis state
emptyAnalysisState :: AnalysisState
emptyAnalysisState = AnalysisState {
        _cache = Map.empty,
        _trace = [],
        _blames = Set.empty
    }

-- | Top-level function to analyze an actor system.
analyze :: AnalysisM m => Exp -> m (System, AnalysisState, ActorSto)
analyze mainExpr = do
    ((system, analysisState), stores :: ActorSto) <-
            fixSystem initSystem
          & flip runStateT initState
          & runSchemeStoreT mainStore
          & runWithComponentTracking
          & runWithDependencyTracking @ProcKey @ProcKey
          & runWithDependencyTracking @ProcKey @(Store.VarAdr K)
          & runWithDependencyTracking @ProcKey @(Store.PaiAdr Exp K)
          & runWithDependencyTracking @ProcKey @(Store.VecAdr Exp K)
          & runWithDependencyTracking @ProcKey @(Store.StrAdr Exp K)
          & runWithWorkList
    return (system, analysisState, stores)
    where initSystem = initialSystem mainExpr
          initState  = emptyAnalysisState

-- | Top-level function to analyze an actor system within the IO monad
analyzeIO :: Exp -> IO (System, AnalysisState, ActorSto)
analyzeIO mainExpr = analyze mainExpr
                   & runZ3SolverWithPrelude
