{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-loopy-superclass-solve #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
{- HLINT ignore "Functor law" -}
module Analysis.SimpleActor.Fixpoint(
    analyze,
    AnalysisState' (..),
    AnalysisState,
    PureAnalysisState,
    System (..),
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
      MonadFresh(..) )
import Control.Monad.Reader (ReaderT (runReaderT), MonadReader (..), asks)
import Analysis.SimpleActor.Fixpoint.Common
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Lens
import Control.Monad.State (StateT, execStateT)
import Control.Monad.Except (ExceptT, throwError)
import GHC.Generics (Generic)
import Analysis.Monad.Environment (EnvM (..))
import Analysis.Monad.Cache (CacheT, MonadCache (..))
import Analysis.Monad.Map (MapM (..))
import Analysis.Monad.Join (SetNonDetT)
import Analysis.Monad.Store (StoreM)
import qualified Analysis.Store as AStore
import Analysis.Monad (StoreM(..), CtxM (..), runIntraAnalysis, MonadDependencyTrigger, ComponentTrackingM)
import qualified Lattice.Class as Lattice
import Data.Maybe (fromMaybe, isJust)
import Analysis.Monad.DependencyTracking (DependencyTrackingM (..), MonadDependencyTrigger (trigger))
import qualified Data.Set as Set
import Analysis.Monad.Fix (lfp, runFixT)
import qualified Data.HashMap.Lazy as HashMap
import qualified Analysis.SimpleActor.Semantics as Semantics
import Lattice.Class (Joinable, BottomLattice, Meetable)
import Control.Monad.Layer (MonadLayer(..))
import Analysis.Monad.Partition (MonadPartition (..))
import Analysis.Actors.Monad (MonadActorLocal (..))
import qualified Domain.Actor
import Domain.Scheme.Store (StoreVal (..), SchemeAdr (..))
import Analysis.Monad.Allocation (AllocM (..))
import Control.Monad.IO.Class (MonadIO (liftIO))
import Analysis.Monad.ComponentTracking (ComponentTrackingM (..))
import Data.Bifunctor
import qualified Analysis.Fixpoint as Fix
import Domain.Actor (Pid(EntryPid))
import Analysis.Monad.WorkList ( WorkListM )
import Data.Tuple.Extra (dupe, (<+>))
import qualified Analysis.Actors.Mailbox.Partitioned as MB
import Control.Monad ((>=>))
import qualified Data.DeltaMap as DeltaMap
import Control.Concurrent.MVar
import qualified Analysis.Symbolic.Monad as SCV
import qualified Domain.SimpleActor as Domain
import Symbolic.AST (emptyPC)
import qualified Solver as SCV
import Domain.Core.AbstractCount (AbstractCount)
import Analysis.Monad.AbstractCount
import Solver.Z3 (runZ3SolverWithPrelude)
import Analysis.Monad.IntraAnalysis (IntraAnalysisT)
import qualified Analysis.Monad.WorkList as AWL
import qualified Analysis.Monad.Map as MapM
import qualified Analysis.ASE.SymbolicVariable as ASE
import qualified Analysis.ASE.PC as ASE
import Syntax.Span
import qualified Domain.Symbolic.Class as Symbolic
import Control.DeepSeq (NFData)
import Syntax.AST
import qualified Control.Fixpoint.WorkList as WL

-- These are here for the instances of each domain for the "TopLifted" value.
import Domain.Core.PairDomain.TopLifted ()
import Domain.Core.StringDomain.TopLifted ()
import qualified RIO as Debug



------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Beh = (Exp, ActorEnv, Map String ActorVarAdr)
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
        _dyn :: Map String ActorVarAdr,
        -- | Self
        _self :: ActorRef,
        -- | Additional context, for instance for k-cfa
        _ctx :: AdrCtx
    } deriving (Ord, Eq, Show, Generic)

instance NFData Ctx

$(makeLenses ''Ctx)

emptyCtx :: ActorRef -> Ctx
emptyCtx ref = Ctx HashMap.empty initialDynEnvironment ref (initialContext 1)

-- | Intra-actor analysis state
data State = State {
        -- | The inbox of the actor that is being analyzed.
        _inbox :: PMB,
        -- | Track the outgoing mail
        _outbox :: ActorMai
    } deriving (Ord, Eq, Show, Generic)

instance NFData State

instance Joinable State where
    join (State inbox1 outbox1) (State inbox2 outbox2) =
        State (Lattice.join inbox1 inbox2) (Lattice.join outbox1 outbox2)
instance Meetable State where
    meet (State _ _) (State _ _) =
        error "NYI"
        -- State (Lattice.meet inbox1 inbox2) (Lattice.meet outbox1 outbox2)
instance BottomLattice State where
    bottom = State Lattice.bottom Lattice.bottom

$(makeLenses ''State)

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
        CacheT m
    ))))

------------------------------------------------------------

-- | Components in the intra-actor fixpoint can depend on the results 
-- of other components (i.e., calls) and address in the store.  
data Dep = StoreDep ActorAdr | CallDep ProcKey deriving (Ord, Eq, Show, Generic)
instance NFData Dep
$(makePrisms ''Dep)

-- | Type class that holds whenever a type 'dep' can be projected into a 'Dep'.
class DepL dep where
    depL :: Prism' Dep dep
instance DepL ActorAdr where
    depL = _StoreDep
instance {-# OVERLAPPABLE #-} (k ~ ProcKey) => DepL k where
    depL = _CallDep

------------------------------------------------------------

-- | Inter-actor fixpoint: monadic context used for analyzing a single 
-- actor system. 
type SystemT m = (
        StateT System m
    )

------------------------------------------------------------

-- | Global analysis state (store + bookkeeping for fixpoints)
data AnalysisState' f = AnalysisState {
        _cache :: f (Map ProcKey ProcVal),
        _store :: f (Map ActorAdr (StoreVal ActorVlu)),
        _deps  :: f (Map Dep (Set ProcKey)),
        _trace :: f [System],
        _wl    :: f [ProcKey],
        _cmps  :: f (Set ProcKey)
    } deriving (Generic)

-- Thread-safe analysis state as used throughout the analysis
type AnalysisState = AnalysisState' MVar
-- Pure analysis state
type PureAnalysisState = AnalysisState' Identity

-- | Read the current contents of the AnalysisState's protected 
-- variables and copy them into a pure analysis state version.
toPureAnalysisState :: (MonadIO m) => AnalysisState -> m PureAnalysisState
toPureAnalysisState st = AnalysisState
        <$> (Identity <$> liftIO (readMVar (_cache st)))
        <*> (Identity <$> liftIO (readMVar (_store st)))
        <*> (Identity <$> liftIO (readMVar (_deps st)))
        <*> (Identity <$> liftIO (readMVar (_trace st)))
        <*> (Identity <$> liftIO (readMVar (_wl st)))
        <*> (Identity <$> liftIO (readMVar (_cmps st)))

instance (forall a . NFData a => NFData (f a)) => NFData (AnalysisState' f)

------------------------------------------------------------
-- | Global analysis monad: restricted to IO since we use MVars
type GlobalT m = (ReaderT AnalysisState m)

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
instance Monad m => AllocM (ProcT m) Exp ActorAdr where
    alloc expr = PtrAdr expr <$> getCtx
instance Monad m => AllocM (ProcT m) Ide ActorAdr where
    alloc expr = VarAdr expr <$> getCtx

------------------------------------------------------------

-- Intra-actor monad instances.

-- TODO: actually implement this instance for any type of partitioning scheme.
instance Monad m => MonadPartition Partition (IntraT m) where
    integrate = const $ return ()
    get = return Lattice.bottom

instance Monad m => MonadMailbox Partition ActorRef ActorVlu (IntraT m) where
  send ref v = do
    oldOutbox <- use outbox
    outbox . at ref . non MB.empty %= MB.enqueue Lattice.bottom Lattice.bottom v
    outbox %= Lattice.join oldOutbox
    return ()
  select expr env' dyn' = throwError (expr, env', dyn') -- throwError is only here for its escaping mechanism, not for actually reporting an error
  recv =
    uses inbox (MB.dequeue Lattice.bottom)
  putMailbox = assign inbox

------------------------------------------------------------

-- | Inter-actor monad instances

instance Monad m => MonadSpawn ActorVlu AdrCtx (SystemT m) where
    spawn behExpr environ k = do
        let newRef = Domain.Actor.Pid behExpr k
            beh = (behExpr, environ, initialDynEnvironment)
        initialBeh . at newRef ?= beh
        mbs . at newRef ?= Lattice.bottom
        return newRef

------------------------------------------------------------

-- Analysis-global instances.

-- The 'AnalysisState' precisely captures the state needed for keeping 
-- track of a 'MapM' cache.
instance (MonadIO m, k ~ ProcKey, v ~ ProcVal) => MapM k v (ReaderT AnalysisState m) where
  get k = do
    vMVar <- asks _cache
    liftIO $ withMVar vMVar (return . view (at k))
  put k v = do
    vMVar <- asks _cache
    liftIO $ modifyMVar_ vMVar (return . set (at k) (Just v))
  joinWith k v = do
    vMVar <- asks _cache
    liftIO $ modifyMVar_ vMVar (return . over (at k) (Just . maybe v (Lattice.join v)))
  getAll = do
    vMVar <- asks _cache
    liftIO $ readMVar vMVar

-- The 'AnalysisState' also contains a store, so we can use it for the 'StoreM' instance as well.
-- The store operations are delegated to the canonical 'Store' instance in
-- 'Analysis.Store' (for 'Map a v'), which uses weak (join) updates. This is
-- important here: abstract allocation reuses addresses (e.g. all pairs share
-- one 'PtrAdr'), so writes must join with any existing value rather than
-- overwrite it, otherwise the system fixpoint cannot converge.
instance (MonadIO m) => StoreM ActorAdr (StoreVal ActorVlu) (ReaderT AnalysisState m) where
  storeSize            = do
    vMVar <- asks _store
    liftIO $ withMVar vMVar (return . AStore.size)
  lookupAdr adr        = do
    vMVar <- asks _store
    liftIO $ withMVar vMVar (return . fromMaybe (error $ "Address " ++ show adr ++ " not found in store") . AStore.lookupSto adr)
  writeAdr adr v       = do
    vMVar <- asks _store
    liftIO $ modifyMVar_ vMVar (return . AStore.extendSto adr v)
  updateWith fs fw adr = do
    vMVar <- asks _store
    liftIO $ modifyMVar_ vMVar (return . AStore.updateStoWith fs fw adr)
  hasAdr adr           = do
    vMVar <- asks _store
    liftIO $ withMVar vMVar (return . isJust . AStore.lookupSto adr)

instance {-# OVERLAPPING #-} (MonadIO m, k ~ ProcKey, DepL d) => DependencyTrackingM k d (ReaderT AnalysisState m) where
  register dep cmp = do
    vMVar <- asks _deps
    liftIO $ modifyMVar_ vMVar (return . over (at (review depL dep)) (Just . maybe (Set.singleton cmp) (Set.insert cmp)))
  dependent dep = do
    vMVar <- asks _deps
    liftIO $ withMVar vMVar (return . fromMaybe Set.empty . view (at (review depL dep)))

instance (DepL d, k ~ ProcKey, MonadIO m) => MonadDependencyTrigger k d (ReaderT AnalysisState m) where
  trigger = dependent >=> AWL.adds

instance {-# OVERLAPPING #-} (MonadIO m, k ~ ProcKey) => WorkListM (ReaderT AnalysisState m) k where
  done =
    (asks _wl >>= liftIO . readMVar) <&> WL.isEmpty
  pop = do
    wlMVar <- asks _wl
    liftIO $ modifyMVar wlMVar $ \wl -> case WL.pop wl of
        Nothing -> error "worklist is empty, cannot pop"
        Just (k, wl') -> return (wl', k)
  add el =
    asks _wl >>= liftIO . flip modifyMVar_ (return . WL.add el)

instance {-# OVERLAPPING #-} (MonadIO m, k ~ ProcKey) => ComponentTrackingM (ReaderT AnalysisState m) k where
  spawn cmp = asks _cmps >>= liftIO . flip modifyMVar_ (return . Set.insert cmp)
  components = asks _cmps >>= liftIO . readMVar

-- | Register a system after a inter-actor turn, and returns the registered system
traceSystem :: MonadIO m => System -> AnalysisGlobalT m System
traceSystem sys = do
    ref <- asks _trace
    liftIO $ modifyMVar_ ref (return . (sys:))
    return sys

------------------------------------------------------------
-- Fixpoints
------------------------------------------------------------

-- | Constraints that need to be satisfied when executing the analysis
type AnalysisM m = (MonadIO m, SCV.FormulaSolver Domain.SymVar m)

-- | Intra-turn fixpoint: analyze a single turn of an actor, and returns a set of successor turns.
--
-- This is the only place where the semantics from 'Analysis.SimpleActor.Semantics' is actually called.
intraTurn :: forall m . AnalysisM m => Beh -> ActorRef -> State -> AnalysisSystemT m (Set Turn)
intraTurn beh selfRef st = do
        Debug.traceShowIO "intraTurn"
        -- compute a fixpoint over the function calls within this turn
        lfp intra key'
        -- The set of successor turns will have been cached at the entry component
        (Set.fromList . map (uncurry Turn . first cntEither)) . maybe [] Set.toList <$> MapM.get key'
    where ctx' = emptyCtx selfRef
               & env .~ (beh ^._2)
               & dyn .~ (beh ^._3)
          cmp'  = case beh ^._1 of
                    expr@Receive {} ->  ReceiveExp expr
                    expr -> ActorExp expr
          key'  = initialProcKey cmp' ctx' st
          intra :: ProcKey -> AnalysisSystemT m ()
          intra k = runFixT @(AnalysisT m) Semantics.eval k
                  & runIntraAnalysis k

-- | Inter-turn fixpoint: analyze a sequence of turns of an actor 
-- until its state (i.e., inbox and outbox) no longer changes.
transferTurn :: AnalysisM m
             => ActorRef
             -> Turn
             -> AnalysisSystemT m (Set Turn)
transferTurn selfRef (Turn (Become beh) turnState) = intraTurn beh selfRef turnState
-- Terminated actors do not generate successor turns, so we return the empty set.
transferTurn _ (Turn Terminated _) = return Set.empty

fixTurn :: AnalysisM m => ActorRef -> Turn -> AnalysisSystemT m (Set Turn)
fixTurn selfRef = Fix.lfp (Fix.lift $ transferTurn selfRef) . Set.singleton

-- | Inter-system fixpoint, analyze a system of actors until the global state (i.e., the mailboxes) no longer changes.
transferSystem :: AnalysisM m => System -> AnalysisGlobalT m System
transferSystem s = do
    Debug.traceShowIO "transferSystem"
    let _changed = DeltaMap.changedKeysSet (s ^. mbs)
    let sPersisted = s & mbs %~ DeltaMap.persistMap
    flip execStateT sPersisted $ do
        let turnState ref = State (fromMaybe Lattice.bottom (DeltaMap.lookup ref (s ^. mbs))) Lattice.bottom
        let initialTurns  = Map.mapWithKey (\ref beh -> Set.singleton (Turn (Become beh) (turnState ref)))
                                             -- (Map.restrictKeys (s ^. initialBeh) changed)
                                             (s ^. initialBeh)
        newTurns <- Map.traverseWithKey (Fix.lift . fixTurn) initialTurns
        -- join the new turns with the old turns
        turns %= Lattice.join newTurns
        -- join the outboxes of each turn with the old mailboxes
        let newMbs = Lattice.joins $ foldMap (map (view (state . outbox)) . Set.toList . snd) $ Map.toList newTurns
        mbs %= Lattice.join newMbs

fixSystem :: AnalysisM m => System -> AnalysisGlobalT m System
fixSystem = Fix.lfp (transferSystem >=> traceSystem)

------------------------------------------------------------
-- Running the analysis
------------------------------------------------------------

-- | The initial store contains all the primitive functions whhich are stored 
-- at a fixed address.
mainStore :: Map ActorAdr (StoreVal ActorVlu)
mainStore = Map.map VarVal $ Semantics.initialSto Semantics.allPrimitives PrrAdr

-- | The environment is populated with the initial bindings for the primitive functions.
mainEnv :: ActorEnv
mainEnv =
    HashMap.fromList $ map (second PrrAdr . dupe) Semantics.allPrimitives

-- | Create an initial system from the expression of the main behavior. 
initialSystem :: Exp -> System
initialSystem mainExp = System {
        _mbs = DeltaMap.fromList [(EntryPid, Lattice.bottom)],
        _turns = Map.empty,
        _initialBeh = Map.singleton EntryPid (mainExp, mainEnv, initialDynEnvironment)
    }

-- | Create an empty analysis state
emptyAnalysisState :: IO AnalysisState
emptyAnalysisState = AnalysisState
        <$> newMVar Map.empty
        <*> newMVar mainStore
        <*> newMVar Map.empty
        <*> newMVar []
        <*> newMVar []
        <*> newMVar Set.empty

-- | Top-level function to analyze an actor system.
analyze :: (MonadIO m, SCV.FormulaSolver Domain.SymVar m) => Exp -> m (System, PureAnalysisState)
analyze mainExpr = do
    initState <- liftIO emptyAnalysisState
    system <- fixSystem initSystem
            & flip runReaderT initState
    (system,) <$> toPureAnalysisState initState
    where initSystem = initialSystem mainExpr

-- | Top-level function to analyze an actor system within the IO monad
analyzeIO :: Exp -> IO (System, PureAnalysisState)
analyzeIO mainExpr = analyze mainExpr
                   & runZ3SolverWithPrelude
