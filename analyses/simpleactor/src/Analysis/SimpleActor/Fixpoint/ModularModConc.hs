{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# LANGUAGE UndecidableInstances #-}
-- | Actor-modular analysis
module Analysis.SimpleActor.Fixpoint.ModularModConc(analyze, analyze', AnalysisResult(..)) where

import Analysis.SimpleActor.Fixpoint.Common
import Analysis.SimpleActor.Fixpoint.SequentialModConc (ActorRes)
import qualified Analysis.SimpleActor.Fixpoint.SequentialModConc as Sequential
import Control.Lens.TH
import RIO hiding (view)
import qualified Data.Map as Map
import Domain.Actor ( Pid(EntryPid, Pid), ARef )
import Domain.Scheme.Store (StoreVal (VarVal), SchemeAdr (PrrAdr))
import Analysis.SimpleActor.Semantics (allPrimitives, initialSto)
import Control.Monad.State
import RIO.Partial (fromJust)
import qualified RIO.Set as Set
import Analysis.Actors.Monad (MonadMailbox, MonadSend(..), MonadReceive(..), MonadMailbox'(..), MailboxDep(..), runWithMailboxT)
import Solver (FormulaSolver, runCachedSolver)
import Solver.Z3 (runZ3SolverWithSetup)
import Analysis.Monad (runDebugIntraAnalysis, MonadIntraAnalysis (currentCmp), StoreM(..), StoreM'(..), runStoreT)
import qualified Analysis.Monad.ComponentTracking as C
import Analysis.Monad.ComponentTracking (ComponentTrackingM)
import Analysis.Monad.Map
import Control.Monad.Layer (MonadLayer (..))
import Analysis.Monad.DependencyTracking
import Control.Monad.Trans.Identity
import Analysis.Monad.WorkList
import Analysis.Monad.Join (runJoinT)
import Data.Tuple.Syntax
import Analysis.SimpleActor.Monad (MonadSpawn (spawn))
import qualified Symbolic.SMT as SMT
import qualified Debug.Trace as Debug
import Control.Monad.Cond
import Control.Fixpoint.WorkList (LIFOWorklist)
import qualified Data.HashMap.Strict as HashMap

------------------------------------------------------------
-- Analysis data
------------------------------------------------------------

-- The analysis result
data AnalysisResult = AnalysisResult {
                         resultMap :: Map ActorResOut ActorRes,
                         mailboxes ::  ActorMai
                      } deriving (Ord, Eq, Show)

-- | State kept during the analysis that falls outside the
-- scope of the monad transformers
newtype AnalysisState = AnalysisState {
    -- | Mapping from PIDs to processes (i.e., expressions and enviroments)
    _pidToProcess :: Map ActorRef (ActorExp, ActorEnv)
  }
$(makeLenses ''AnalysisState)

spawnWL :: (Ord cmp, ComponentTrackingM m cmp, WorkListM m cmp) => cmp -> m ()
spawnWL cmp = ifM (Set.member cmp <$> C.components) (return ()) (C.spawn cmp >> add cmp)

instance (Monad m, ComponentTrackingM m ActorRef, WorkListM m ActorRef) => MonadSpawn ActorVlu K (StateT AnalysisState m) where
  spawn expr env ctx = (modify (over pidToProcess (Map.insert pid (expr, env'))) $> pid) <* spawnWL pid
    where pid  = Pid expr ctx
          env' = env -- HashMap.restrictKeys env (fv expr)  


------------------------------------------------------------
-- Trigger intra analysis
------------------------------------------------------------

newtype ModularIntraAnalysisT cmp m a = ModularIntraAnalysisT (IdentityT m a)
                                          deriving (Monad, Applicative, Functor, MonadLayer)


instance (MonadDependencyTrigger cmp dep m) => MonadDependencyTrigger cmp dep (ModularIntraAnalysisT cmp m) where
  trigger dep = upperM (trigger dep)


instance ( MonadMailbox ActorVlu m, MonadIntraAnalysis cmp m, MonadDependencyTracking cmp ActorRef m, MonadDependencyTriggerTracking cmp ActorRef m) => MonadSend ActorVlu (ModularIntraAnalysisT cmp m) where
  send rcv msg =
    ifM (upperM (send rcv msg))
        (trigger @cmp rcv $> True)
        (return False)

instance ( MonadMailbox ActorVlu m, MonadIntraAnalysis cmp m, MonadDependencyTracking cmp ActorRef m, MonadDependencyTriggerTracking cmp ActorRef m) => MonadReceive ActorVlu (ModularIntraAnalysisT cmp m) where
  receive' ref = currentCmp >>= register @cmp ref >> upperM (receive' ref)
  peek' ref = currentCmp >>= register @cmp ref >> upperM (peek' ref)

runModularIntraAnalysisT :: ModularIntraAnalysisT cmp m a -> m a
runModularIntraAnalysisT (ModularIntraAnalysisT m) = runIdentityT m

------------------------------------------------------------
-- Initial analysis state
------------------------------------------------------------

-- | Construct the initial analysis state
initialAnalysisState :: ActorExp -> AnalysisState
initialAnalysisState expr =
  AnalysisState (Map.singleton EntryPid (expr, Debug.traceShowId initialEnv))

-- | Initial global store
initialGlobalStore :: ActorSto
initialGlobalStore = VarVal <$> initialSto allPrimitives PrrAdr

-- | Initial per-actor stores
-- initialPerActorSto :: Map ActorRef ActorSto
-- initialPerActorSto = Map.singleton EntryPid  initialGlobalStore

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
                        MonadDependencyTracking ActorRef (MailboxDep ActorRef MB) m,
                        WorkListM m ActorRef,
                        -- MonadMailbox ActorVlu m,
                        MonadMailbox' (ARef ActorVlu) MB m,
                        MonadReceive ActorVlu m,
                        MonadSend ActorVlu m,
                        -- Z3 Solvin g
                        FormulaSolver ActorVarAdr m,
                        -- Tracking actor spawns
                        MonadSpawn ActorVlu K m,
                        -- Actor results
                        MapM ActorResOut ActorRes m,
                        -- Global store
                        StoreM ActorAdr (StoreVal ActorVlu) m,
                        StoreM' ActorSto ActorAdr (StoreVal ActorVlu) m,
                        -- For debugging
                        MonadIO m)

-- | "intra"-analysis
intra :: ModularInterM m => ActorRef -> m ()
intra ref = (gets (fromJust . Map.lookup ref . _pidToProcess) >>= flip (uncurry Sequential.analyze) (Debug.traceWith (("analyzing: " ++) . show) ref))
          & runModularIntraAnalysisT
          & runDebugIntraAnalysis ref
          & runJoinT
          & void

newtype MaxStepsT m a = MaxStepsT { getMaxStepsT :: StateT Int m a } deriving (Functor, Monad, Applicative, MonadLayer)

evalMaxStepsT :: Monad m => MaxStepsT m a -> m a
evalMaxStepsT = flip evalStateT 0 . getMaxStepsT

inter :: ModularInterM m => Maybe Int -> m ()
inter maxSteps = evalMaxStepsT $ iterateWLInitial'' EntryPid (maybe (return False) maxReached maxSteps) intra
  where maxReached maxSteps' = MaxStepsT (modify (+1)) >> MaxStepsT (gets (> maxSteps'))

-- | Analyze the whole actor program
analyze' :: Maybe Int -> ActorExp -> IO AnalysisResult
analyze' maxSteps expr = fmap toAnalysisResult $ inter maxSteps
             & flip evalStateT (initialAnalysisState expr)
             & runStoreT @ActorSto @ActorAdr @(StoreVal ActorVlu) initialGlobalStore
             & runWithMapping @ActorResOut @ActorRes
             & runWithDependencyTracking @ActorRef @ActorVarAdr
             & runWithDependencyTracking @ActorRef @ActorRef
             & runWithDependencyTracking @ActorRef @ActorResOut
             & runWithDependencyTracking @ActorRef @(MailboxDep ActorRef MB)
             & runWithDependencyTriggerTrackingT @ActorRef @ActorRef
             & runWithDependencyTriggerTrackingT @ActorRef @ActorVarAdr
             & runWithMailboxT @ActorVlu @MB
             & C.runWithComponentTracking
             & runWithWorkList @(LIFOWorklist _)
             & runCachedSolver
             & runZ3SolverWithSetup SMT.prelude
  where toAnalysisResult (_res ::*:: _varSto ::*:: resOut ::*:: mb) = AnalysisResult resOut mb

analyze :: ActorExp -> IO AnalysisResult
analyze = analyze' Nothing
