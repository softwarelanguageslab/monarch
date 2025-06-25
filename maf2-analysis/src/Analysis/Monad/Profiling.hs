{-# LANGUAGE UndecidableInstances #-}
module Analysis.Monad.Profiling(MonadProfiling(..), runProfilingT) where

import Analysis.Monad.WorkList
import Control.Lens
import Control.Lens.TH
import Control.Monad.Layer
import Control.Monad.Reader
import Control.Monad.State
import Control.Monad.Trans.Identity
import Data.Bifunctor
import Data.Map (Map)
import qualified Data.Map as Map

-- | Profiling of the analysis by keeping track how often each
-- component is analyzed.
class MonadProfiling cmp m | m -> cmp where
  registerAnalysis :: cmp -> m ()

-- | Layered instance of the profiling monad
instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadProfiling cmp m) => MonadProfiling cmp (t m) where
  registerAnalysis = upperM . registerAnalysis

-------------------------------------------------------------
-- Instance
-------------------------------------------------------------

-- | The state of the profiling monad
data ProfilingState cmp = ProfilingState { _profile :: Map cmp Int }
                        deriving (Ord, Eq, Show)

$(makeLenses ''ProfilingState)

emptyProfilingState :: ProfilingState cmp
emptyProfilingState = ProfilingState Map.empty
                        

-- | State monad-based profiling monad
newtype ProfilingT cmp m a = ProfilingT { getProfilingT :: StateT (ProfilingState cmp) m a }
                           deriving (Functor, Monad, Applicative, MonadLayer, MonadState (ProfilingState cmp))

instance (Ord cmp, Monad m) => MonadProfiling cmp (ProfilingT cmp m) where
  registerAnalysis = modify . over profile . flip (Map.insertWith (+)) 1 

runProfilingT :: Functor m => ProfilingT cmp m a -> m (a, Map cmp Int)
runProfilingT = fmap (second _profile) .  flip runStateT emptyProfilingState . getProfilingT

------------------------------------------------------------
-- Profiling of worklist
------------------------------------------------------------

-- | Instrumenting the worklist algorithm to keep track of profiling information
newtype WorklistProfilingT cmp' cmp m a = WorkListProfilingT (ReaderT (cmp' -> cmp) m a) deriving (Functor, Applicative, Monad, MonadLayer, MonadReader (cmp' -> cmp))

instance (WorkListM m cmp', MonadProfiling cmp m, Ord cmp) => WorkListM (WorklistProfilingT cmp' cmp m) cmp' where
  done = upperM done
  pop = do
    item <- upperM pop
    f <- ask
    registerAnalysis (f item)
    return item 
  add = upperM . add

