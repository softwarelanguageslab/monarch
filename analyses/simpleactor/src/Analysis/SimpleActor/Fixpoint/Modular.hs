-- | Actor-modular analysis
module Analysis.SimpleActor.Fixpoint.Modular where

import Analysis.SimpleActor.Fixpoint.Common
import qualified Analysis.SimpleActor.Fixpoint.Sequential as Sequential
import Control.Lens.TH
import RIO hiding (view)
import qualified Data.Map as Map
import Domain.Actor (Pid(EntryPid))
import Domain.Scheme.Store (EnvAdr(PrmAdr))
import Analysis.SimpleActor.Semantics (allPrimitives, initialSto)
import Control.Monad.State
import RIO.Partial (fromJust)
import Analysis.Monad.WorkList (WorkListM, iterateWL')
import Analysis.Actors.Monad (MonadMailbox)
import Solver (FormulaSolver)
import Control.Monad.Join (MonadBottom)

------------------------------------------------------------
-- Analysis data
------------------------------------------------------------

-- The analysis result
type AnalysisResult = ()

-- | State kept during the analysis that falls outside the
-- scope of the monad transformers
newtype AnalysisState = AnalysisState {
    -- | Mapping from PIDs to processes (i.e., expressions and enviroments)
    _pidToProcess :: Map ActorRef (ActorExp, ActorEnv)
  }
$(makeLenses ''AnalysisState)

------------------------------------------------------------
-- Initial analysis state
------------------------------------------------------------

-- | Construct the initial analysis state
initialAnalysisState :: ActorExp -> AnalysisState
initialAnalysisState expr =
  AnalysisState (Map.singleton EntryPid (expr, initialEnv))

-- | Initial per-actor stores
initialPerActorSto :: Map ActorRef ActorSto
initialPerActorSto = Map.singleton EntryPid (initialSto allPrimitives PrmAdr)

-- | The initial analysis environment
initialEnv :: ActorEnv
initialEnv = Map.fromList (fmap (\nam -> (nam, PrmAdr nam)) allPrimitives)

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

type ModularInterM m = (MonadState AnalysisState m,
                        MonadActorStore m,
                        MonadActorStoreDependencyTracking m,
                        WorkListM m ActorRef,
                        MonadMailbox ActorVlu m,
                        FormulaSolver (EnvAdr K) m,
                        MonadBottom m)

-- | "intra"-analysis
intra :: ModularInterM m => ActorRef -> m ()
intra ref = gets (fromJust . Map.lookup ref . _pidToProcess) >>= flip (uncurry Sequential.analyze) ref

inter :: ModularInterM m => ActorExp -> m ()
inter expr = put (initialAnalysisState expr) >> iterateWL' EntryPid intra

-- | Analyze the whole actor program
analyze :: ActorExp -> IO AnalysisResult
analyze = undefined
