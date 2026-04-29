{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-loopy-superclass-solve #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
module Analysis.SimpleActor.Fixpoint(
    analyze,
    AnalysisState (..),
    System (..)
) where

import Control.Monad.Escape (MayEscapeT)
import Data.Set (Set)
import Analysis.SimpleActor.Monad (ActorError, Cmp (..), MonadMailbox (..), MonadSpawn (..), MonadDynamic (..))
import Control.Monad.Reader (ReaderT, MonadReader (..))
import Analysis.SimpleActor.Fixpoint.Common
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Lens
import Control.Monad.State (StateT (runStateT), execStateT)
import Syntax.AST (Exp)
import Control.Monad.Except (ExceptT, throwError)
import GHC.Generics (Generic)
import Analysis.Monad.Environment (EnvM (..))
import Analysis.Monad.Cache (CacheT, MonadCache (..))
import Analysis.Monad.Map (MapM (..))
import Analysis.Monad.Join (NonDetT, runNonDetT)
import Analysis.Monad.Store (StoreM)
import Analysis.Monad (StoreM(..), WorkListT, CtxM (..), runWithComponentTracking)
import qualified Lattice.Class as Lattice
import Data.Maybe (fromMaybe, isJust)
import Analysis.Monad.DependencyTracking (DependencyTrackingM (..))
import qualified Data.Set as Set
import Analysis.Monad.Fix (lfp, runFixT)
import qualified Data.HashMap.Lazy as HashMap
import qualified Analysis.SimpleActor.Semantics as Semantics
import Lattice.Class (Joinable, BottomLattice)
import Control.Monad.Layer (MonadLayer(..))
import Analysis.Monad.Partition (MonadPartition (..))
import Analysis.Actors.Monad (MonadActorLocal (..))
import qualified Domain.Actor
import Domain.Scheme.Store (StoreVal (..), SchemeAdr (..))
import Syntax.Ide (Ide)
import Analysis.Monad.Allocation (AllocM (..))
import Control.Monad.IO.Class (MonadIO)
import Analysis.Monad.ComponentTracking (ComponentTrackingT)
import Control.Monad.Trans.Except (runExceptT)
import Data.Bifunctor
import qualified Analysis.Fixpoint as Fix
import Domain.Actor (Pid(EntryPid))
import Analysis.Monad.WorkList (runWithWorkList)
import Data.Tuple.Extra (dupe)
import qualified Analysis.Actors.Mailbox.Partitioned as MB
import Data.Functor
import Control.Monad ((>=>))

-- These are here for the instances of each domain for the "TopLifted" value.
import Domain.Core.PairDomain.TopLifted ()
import Domain.Core.StringDomain.TopLifted ()

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Beh = (Exp, ActorEnv)
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

instance Joinable State where
    join (State inbox1 outbox1) (State inbox2 outbox2) =
        State (Lattice.join inbox1 inbox2) (Lattice.join outbox1 outbox2)
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

------------------------------------------------------------
-- Turns and continuations
------------------------------------------------------------

data Turn = Turn {
    -- | The active behavior of the actor in that turn
    _behavior :: Cnt,
    -- | The state of the actor (its inboxes and outboxes)
    _state    :: State
    } deriving (Ord, Eq, Show)

data Cnt = Become Beh | Terminated deriving (Ord, Eq, Show)

cntEither :: Either Beh () -> Cnt
cntEither = either Become (const Terminated)

$(makeLenses ''System)
$(makeLenses ''Turn)

------------------------------------------------------------
-- Monads
------------------------------------------------------------

-- The analysis basically consists of three fixpoints: 
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
        -- the evaluation context, includes a self-reference, lexical and dynamic environment.
        ReaderT Ctx (
        -- the context will be used as a key in the cache, and the 'MayEscape' value will be 
        -- used as a value.
        CacheT m
     )))

-- | The key that is used for caching function call results
type ProcKey = Key (ProcT Identity) Cmp
-- | The result values of function call results in the cache
type ProcVal = Val (ProcT Identity) ActorVlu

initialProcKey :: Cmp -> Ctx -> ProcKey
initialProcKey = (,)

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
        NonDetT m
    )))

------------------------------------------------------------

-- | Components in the intra-actor fixpoint can depend on the results 
-- of other components (i.e., calls) and address in the store.  
data Dep = StoreDep ActorAdr | CallDep ProcKey deriving (Ord, Eq, Show)
$(makePrisms ''Dep)

-- | Type class that holds whenever a type 'dep' can be projected into a 'Dep'.
class DepL dep where
    depL :: Prism' Dep dep
instance DepL ActorAdr where
    depL = _StoreDep
instance (k ~ ProcKey) => DepL k where
    depL = _CallDep

------------------------------------------------------------

-- | Inter-actor fixpoint: monadic context used for analyzing a single 
-- actor system. 
type SystemT m = (
        StateT System m
    )

------------------------------------------------------------

-- | Global analysis state (store + bookkeeping for fixpoints)
data AnalysisState = AnalysisState {
        _cache :: Map ProcKey ProcVal,
        _store :: Map ActorAdr (StoreVal ActorVlu),
        _deps  :: Map Dep (Set ProcKey),
        _trace :: [System]
    } deriving (Ord, Eq, Show, Generic)

$(makeLenses ''AnalysisState)


------------------------------------------------------------

-- | Monad global to the analysis
type GlobalT m = (
        StateT AnalysisState  (
        WorkListT [ProcKey] (
        ComponentTrackingT ProcKey m
    )))

------------------------------------------------------------

-- The type aliases defined below are for convenience and readibility. 
-- The idea is that when defining each layer of fixpoint iterations, we peel off one 
-- of the monads in the stack and use the corresponding type alias to make it clear 
-- which leayer of fixpoint iteration we are working on.

-- The monad for the entire analysis
type AnalysisT m = (ProcT (IntraT (SystemT (GlobalT m))))
-- The monad stack for the intra-actor fixpoint.
type AnalysisIntraT m = (IntraT (SystemT (GlobalT m)))
-- The monad stack for the inter-actor fixpoint. 
type AnalysisSystemT m = (SystemT (GlobalT m))
-- The monad stack for the analysis-global fixpoint.
type AnalysisGlobalT m = (GlobalT m)

------------------------------------------------------------
-- Monad instances
------------------------------------------------------------


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
  recv expr = throwError . (expr,)

------------------------------------------------------------

-- Inter-actor monad instances

instance Monad m => MonadSpawn ActorVlu AdrCtx (SystemT m) where
    spawn behExpr environ k = do
        let newRef = Domain.Actor.Pid behExpr k
            beh = (behExpr, environ)
        initialBeh . at newRef ?= beh
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

-- The 'AnalysisState' also contains a store, so we can use it for the 'StoreM' instance as well.
instance (Monad m) => StoreM ActorAdr (StoreVal ActorVlu) (StateT AnalysisState m) where
  storeSize = use (store . to Map.size)
  lookupAdr adr =
    use (store . at adr . to (fromMaybe (error $ "Address " ++ show adr ++ " not found in store")))
  writeAdr adr v = store . at adr ?= v
  updateWith _ fw adr =
    -- no counts in this store, so we must always use the weak update function.
    store . at adr %= maybe (error $ "address " ++ show adr ++ " could not be found in store") (Just . fw)
  hasAdr adr =
    use (store . at adr . to isJust)

-- Finally, we can track dependencies in the same 'AnalysisState'.
instance (Monad m, k ~ ProcKey, DepL d) => DependencyTrackingM k d (StateT AnalysisState m) where
  register dep cmp = deps . at (review depL dep) %= Just . maybe (Set.singleton cmp) (Set.insert cmp)
  dependent dep = use (deps . at (review depL dep) . to (fromMaybe Set.empty))

-- | Register a system after a inter-actor turn, and returns the registered system
traceSystem :: Monad m => System -> AnalysisGlobalT m System
traceSystem sys = (trace %= (sys:)) $> sys

------------------------------------------------------------
-- Fixpoints
------------------------------------------------------------

-- | Intra-turn fixpoint: analyze a single turn of an actor.
--
-- This is the only place where the semantics from 'Analysis.SimpleActor.Semantics' is actually called.
intraTurn :: forall m . MonadIO m => Beh -> ActorRef -> AnalysisIntraT m ()
intraTurn beh selfRef = lfp (runFixT @(AnalysisT m) Semantics.eval) key'
    where ctx' = emptyCtx selfRef
               & env .~ (beh ^._2)
          cmp' = ActorExp $ beh ^._1
          key' = initialProcKey cmp' ctx'

-- | Inter-turn fixpoint: analyze a sequence of turns of an actor 
-- until its state (i.e., inbox and outbox) no longer changes.
transferTurn :: MonadIO m
             => ActorRef
             -> Turn
             -> AnalysisSystemT m (Set Turn)
transferTurn selfRef (Turn (Become beh) turnState) =  Set.fromList . map (uncurry Turn . first cntEither) <$> results
    where results = intraTurn beh selfRef
                  & runExceptT
                  & flip runStateT turnState
                  & runNonDetT
-- Terminated actors do not generate successor turns, so we return the empty set.
transferTurn _ (Turn Terminated _) = return Set.empty

fixTurn :: MonadIO m => ActorRef -> Turn -> AnalysisSystemT m (Set Turn)
fixTurn selfRef = Fix.lfp (Fix.lift $ transferTurn selfRef) . Set.singleton

-- | Inter-system fixpoint, analyze a system of actors until the global state (i.e., the mailboxes) no longer changes. 
transferSystem :: MonadIO m => System -> AnalysisGlobalT m System
transferSystem s@System { .. } = analyze' & flip execStateT s
        where turnState ref = State (Map.findWithDefault Lattice.bottom ref _mbs) _mbs
              initialTurns  = Map.mapWithKey (\ref beh -> Set.singleton (Turn (Become beh) (turnState ref))) _initialBeh
              analyze' = do 
                newTurns <- Map.traverseWithKey (Fix.lift . fixTurn) initialTurns
                -- join the new turns with the old turns 
                turns %= Lattice.join newTurns
                -- join the outboxes of each turn with the old mailboxes
                let newMbs = Lattice.joins $ foldMap (map (view (state . outbox)) . Set.toList . snd) $ Map.toList newTurns
                mbs %= Lattice.join newMbs
fixSystem :: MonadIO m => System -> AnalysisGlobalT m System
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
        _mbs = Map.empty,
        _turns = Map.empty,
        _initialBeh = Map.singleton EntryPid (mainExp, mainEnv)
    }

-- | Create an empty analysis state
emptyAnalysisState :: AnalysisState 
emptyAnalysisState = AnalysisState {
        _cache = Map.empty,
        _store = mainStore,
        _deps = Map.empty,
        _trace = []
    }

-- | Top-level function to analyze an actor system.
analyze :: MonadIO m => Exp -> m (System, AnalysisState) 
analyze mainExpr = 
        fixSystem initSystem 
      & flip runStateT initState
      & runWithWorkList 
      & runWithComponentTracking
    where initSystem = initialSystem mainExpr
          initState  = emptyAnalysisState  

