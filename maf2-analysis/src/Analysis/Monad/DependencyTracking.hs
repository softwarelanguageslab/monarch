{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.DependencyTracking (
    DependencyTrackingM(..),  
    trigger,
    runWithDependencyTracking,
) where

import Data.Set (Set)
import qualified Data.Set as Set 
import Data.Map (Map)
import qualified Data.Map as Map 

import Analysis.Monad.WorkList
import Control.Monad.State
import Control.Monad.Layer
import Data.Maybe (fromMaybe)


---
--- Dependency tracking typeclass
---

class Monad m => DependencyTrackingM m cmp dep where
    register :: dep -> cmp -> m ()
    dependent :: dep -> m (Set cmp)

trigger :: (DependencyTrackingM m cmp dep, WorkListM m cmp) => dep -> m ()
trigger = dependent >=> adds


---
--- Dependency tracking monad transformer 
---

newtype DependencyTrackingT cmp dep m a = DependencyTrackingT (StateT (Map dep (Set cmp)) m a)
    deriving (Functor, Applicative, Monad, MonadState (Map dep (Set cmp)), MonadTrans, MonadLayer)

instance {-# OVERLAPPING #-} (Monad m, Ord dep, Ord cmp) => DependencyTrackingM (DependencyTrackingT cmp dep m) cmp dep where
    register d = modify . Map.insertWith Set.union d . Set.singleton
    dependent d = gets (fromMaybe Set.empty . Map.lookup d)

instance (DependencyTrackingM m cmp dep, MonadLayer t) => DependencyTrackingM (t m) cmp dep where
    register d = upperM . register d
    dependent = upperM . dependent

runWithDependencyTracking :: forall cmp dep m a . Monad m => DependencyTrackingT cmp dep m a -> m a
runWithDependencyTracking (DependencyTrackingT m) = fst <$> runStateT m Map.empty  