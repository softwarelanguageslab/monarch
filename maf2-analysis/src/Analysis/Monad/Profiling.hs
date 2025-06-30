{-# LANGUAGE UndecidableInstances #-}
module Analysis.Monad.Profiling(MonadProfiling(..), runProfilingT, runWithWorklistProfilingT, Profile(..), emptyProfile) where

import Analysis.Monad.WorkList
import Control.Lens
import Control.Monad.Layer
import Control.Monad.State
import Control.Monad.Trans.Identity
import Data.Bifunctor
import Data.Map (Map)
import qualified Data.Map as Map

-- | Profiling of the analysis by keeping track how often each
-- component is analyzed.
class MonadProfiling cmp m where
  registerAnalysis :: cmp -> m ()

-- | Layered instance of the profiling monad
instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadProfiling cmp m) => MonadProfiling cmp (t m) where
  registerAnalysis = upperM . registerAnalysis

-------------------------------------------------------------
-- Instance
-------------------------------------------------------------

-- | The state of the profiling monad
newtype Profile cmp = ProfilingState { _profile :: Map cmp Int }
                        deriving (Ord, Eq, Show)

$(makeLenses ''Profile)

emptyProfile :: Profile cmp
emptyProfile = ProfilingState Map.empty
                        

-- | State monad-based profiling monad
newtype ProfilingT cmp m a = ProfilingT { getProfilingT :: StateT (Profile cmp) m a }
                           deriving (Functor, Monad, Applicative, MonadLayer, MonadState (Profile cmp))

instance (Ord cmp, Monad m) => MonadProfiling cmp (ProfilingT cmp m) where
  registerAnalysis = modify . over profile . flip (Map.insertWith (+)) 1 

runProfilingT :: forall cmp m a . ProfilingT cmp m a -> m (a, Profile cmp)
runProfilingT = flip runStateT emptyProfile . getProfilingT

------------------------------------------------------------
-- Profiling of worklist
------------------------------------------------------------

-- | Instrumenting the worklist algorithm to keep track of profiling information
newtype WorklistProfilingT cmp m a = WorkListProfilingT { getWorkListProfilingT :: IdentityT m a } deriving (Functor, Applicative, Monad, MonadLayer)

instance (WorkListM m cmp, MonadProfiling cmp m, Ord cmp) => WorkListM (WorklistProfilingT cmp m) cmp where
  done = upperM done
  pop = upperM pop >>= (\item -> registerAnalysis item >> return item)
  add = upperM . add

runWithWorklistProfilingT :: WorklistProfilingT cmp m a -> m a
runWithWorklistProfilingT = runIdentityT . getWorkListProfilingT

