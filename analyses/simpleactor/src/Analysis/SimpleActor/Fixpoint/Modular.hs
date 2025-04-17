{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# LANGUAGE UndecidableInstances #-}
-- | Actor-modular analysis
module Analysis.SimpleActor.Fixpoint.Modular where

import Analysis.SimpleActor.Fixpoint.Common
import Analysis.SimpleActor.Fixpoint.Sequential (SequentialCmp, SequentialRes)
import qualified Analysis.SimpleActor.Fixpoint.Sequential as Sequential
import Control.Lens.TH
import RIO hiding (view)
import qualified Data.Map as Map
import Domain.Actor (Pid(EntryPid, Pid))
import Domain.Scheme.Store (StoreVal (VarVal), SchemeAdr (PrrAdr))
import Analysis.SimpleActor.Semantics (allPrimitives, initialSto)
import Control.Monad.State
import RIO.Partial (fromJust)
import qualified RIO.Set as Set
import Analysis.Actors.Monad (MonadMailbox (..), runWithMailboxT)
import Solver (FormulaSolver, runCachedSolver)
import Solver.Z3 (runZ3SolverWithSetup)
import Analysis.Monad (runIntraAnalysis, MonadIntraAnalysis (currentCmp), StoreM(..), runStoreT)
import qualified Analysis.Monad.ComponentTracking as C
import Analysis.Monad.ComponentTracking (ComponentTrackingM)
import Analysis.Monad.Map
import qualified Analysis.Monad.Map as MapM
import Control.Monad.Layer (MonadLayer (..))
import Analysis.Monad.DependencyTracking
import Control.Monad.Trans.Identity
import Analysis.Monad.WorkList
import Analysis.Monad.Join (runJoinT)
import Data.Tuple.Syntax
import Analysis.SimpleActor.Monad (MonadSpawn (spawn), Ctx)
import qualified Symbolic.SMT as SMT
import qualified Debug.Trace as Debug
import Control.Monad.Cond
import Control.Fixpoint.WorkList (LIFOWorklist)
import qualified Data.HashMap.Strict as HashMap

------------------------------------------------------------
-- Analysis data
------------------------------------------------------------

type SequentialResult = Map SequentialCmp SequentialRes

-- The analysis result
type AnalysisResult = (Map ActorResOut SequentialResult, ActorMai)

-- | State kept during the analysis that falls outside the
-- scope of the monad transformers
newtype AnalysisState = AnalysisState {
    -- | Mapping from PIDs to processes (i.e., expressions and enviroments)
    _pidToProcess :: Map ActorRef (ActorExp, ActorEnv)
  }
$(makeLenses ''AnalysisState)

spawnWL :: (Ord cmp, ComponentTrackingM m cmp, WorkListM m cmp) => cmp -> m ()
spawnWL cmp = ifM (Set.member cmp <$> C.components) (return ()) (C.spawn cmp >> add cmp)

instance (Monad m, ComponentTrackingM m ActorRef, WorkListM m ActorRef) => MonadSpawn ActorVlu Ctx (StateT AnalysisState m) where
  spawn expr env ctx = (modify (over pidToProcess (Map.insert pid (expr, env))) $> pid) <* spawnWL pid
    where pid  = Pid expr ctx
          env' = env -- HashMap.restrictKeys env (fv expr)  


------------------------------------------------------------
-- Trigger intra analysis
------------------------------------------------------------

newtype ModularIntraAnalysisT cmp m a = ModularIntraAnalysisT (IdentityT m a)
                                          deriving (Monad, Applicative, Functor, MonadLayer)


instance (MonadDependencyTrigger cmp dep m, MonadIO m, Show dep) => MonadDependencyTrigger cmp dep (ModularIntraAnalysisT cmp m) where
  trigger dep = liftIO (putStrLn $ "triggering " ++ show dep) >> upperM (trigger dep)


instance ( MonadMailbox ActorVlu m, MonadIntraAnalysis cmp m, MonadIO m, Show cmp, MonadDependencyTracking cmp ActorRef m, MonadDependencyTriggerTracking cmp ActorRef m) => MonadMailbox ActorVlu (ModularIntraAnalysisT cmp m) where
  send to msg =
    ifM (upperM (send to msg))
        (trigger @cmp to $> True)
        (return False)
  receive' ref = currentCmp >>= register @cmp ref >> upperM (receive' ref)



runModularIntraAnalysisT :: ModularIntraAnalysisT cmp m a -> m a
runModularIntraAnalysisT (ModularIntraAnalysisT m) = runIdentityT m

------------------------------------------------------------
-- Initial analysis state
------------------------------------------------------------

-- | Construct the initial analysis state
initialAnalysisState :: ActorExp -> AnalysisState
initialAnalysisState expr =
  AnalysisState (Map.singleton EntryPid (expr, initialEnv))

-- | Initial global store
initialGlobalStore :: ActorSto
initialGlobalStore = VarVal <$> initialSto allPrimitives PrrAdr

-- | Initial per-actor stores
initialPerActorSto :: Map ActorRef ActorSto
initialPerActorSto = Map.singleton EntryPid  initialGlobalStore

-- | The initial analysis environment
initialEnv :: ActorEnv
initialEnv = HashMap.fromList (fmap (\nam -> (nam, PrrAdr nam)) allPrimitives)

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

type ModularInterM m = (MonadState AnalysisState m,
                        MonadActorStoreDependencyTracking m,
                        MonadDependencyTracking ActorRef ActorRef m,
                        MonadDependencyTriggerTracking ActorRef ActorRef m,
                        MonadDependencyTracking ActorRef ActorResOut m,
                        WorkListM m ActorRef,
                        MonadMailbox ActorVlu m,
                        -- Z3 Solvin g
                        FormulaSolver ActorVarAdr m,
                        -- Tracking actor spawns
                        MonadSpawn ActorVlu Ctx m,
                        -- Actor results
                        MapM ActorResOut (Map SequentialCmp SequentialRes) m,
                        -- Global store
                        StoreM ActorAdr (StoreVal ActorVlu) m,
                        -- For debugging
                        MonadIO m)

-- | "intra"-analysis
intra :: ModularInterM m => ActorRef -> m ()
intra ref = (gets (fromJust . Map.lookup ref . _pidToProcess) >>= flip (uncurry Sequential.analyze) (Debug.traceWith (("analyzing: " ++) . show) ref))
          & runModularIntraAnalysisT
          & runIntraAnalysis ref
          & runJoinT
          & void

inter :: ModularInterM m => m ()
inter = iterateWL' EntryPid intra

-- | Analyze the whole actor program
analyze :: ActorExp -> IO AnalysisResult
analyze expr = fmap toAnalysisResult $ inter
             & flip evalStateT (initialAnalysisState expr)
             & runStoreT @ActorSto @ActorAdr @(StoreVal ActorVlu) initialGlobalStore 
             & runWithMapping @ActorResOut @(Map SequentialCmp SequentialRes)
             & runWithDependencyTracking @ActorRef @ActorVarAdr
             & runWithDependencyTracking @ActorRef @ActorRef
             & runWithDependencyTracking @ActorRef @ActorResOut
             & runWithDependencyTriggerTrackingT @ActorRef @ActorRef
             & runWithDependencyTriggerTrackingT @ActorRef @ActorVarAdr
             & runWithMailboxT @ActorVlu @(Set _)
             & C.runWithComponentTracking
             & runWithWorkList @(LIFOWorklist _)
             & runCachedSolver
             & runZ3SolverWithSetup SMT.prelude
  where toAnalysisResult (_res ::*:: _varSto ::*:: resOut ::*:: mb) = (resOut, mb)


