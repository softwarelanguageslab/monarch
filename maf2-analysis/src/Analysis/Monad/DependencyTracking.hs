{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.DependencyTracking (
    DependencyTrackingM(..),
    DependencyTrackingT,
    MonadDependencyTrigger(..),
    MonadDependencyTriggerTracking(..),
    MonadDependencyTracking(..),
    trigger,
    runWithDependencyTracking,
    runWithDependencyTracking'
) where

import Control.Monad ((>=>))
import Data.Set (Set)
import qualified Data.Set as Set 
import Data.Map (Map)
import qualified Data.Map as Map 

import Analysis.Monad.WorkList
import Control.Monad.State
import Control.Monad.Layer
import Data.Maybe (fromMaybe)
import Analysis.Monad.Cache (MonadCache)
import Data.Kind


---
--- Dependency tracking typeclass
---

class Monad m => DependencyTrackingM cmp dep m where
    register :: dep -> cmp -> m ()
    dependent :: dep -> m (Set cmp)

class (Monad m) => MonadDependencyTrigger cmp dep m | m -> cmp dep where
    trigger :: dep -> m ()

class MonadDependencyTriggerTracking cmp dep m | m -> cmp dep where
    -- | Returns the components that have triggered the given dependency 
    triggers :: dep -> m (Set cmp)


instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, Monad (t m), MonadDependencyTrigger cmp dep m)  => MonadDependencyTrigger cmp dep (t m) where
    trigger = upperM . trigger

instance {-# OVERLAPPABLE #-} (Monad m, MonadDependencyTriggerTracking cmp dep m, MonadLayer t) => MonadDependencyTriggerTracking cmp dep (t m) where
    triggers = upperM . triggers

type MonadDependencyTracking cmp dep m = (DependencyTrackingM cmp dep m, MonadDependencyTrigger cmp dep m)


---
--- Dependency tracking monad transformer 
---

newtype DependencyTrackingT cmp dep m a = DependencyTrackingT (StateT (Map dep (Set cmp)) m a)
    deriving (Functor, Applicative, Monad, MonadState (Map dep (Set cmp)), MonadTrans, MonadLayer, MonadTransControl, MonadCache)

instance {-# OVERLAPPING #-} (Monad m, Ord dep, Ord cmp) => DependencyTrackingM cmp dep (DependencyTrackingT cmp dep m) where
    register d = modify . Map.insertWith Set.union d . Set.singleton
    dependent d = gets (fromMaybe Set.empty . Map.lookup d)

instance {-# OVERLAPPING #-} (Ord dep, Ord cmp, Monad m, WorkListM m cmp) => MonadDependencyTrigger cmp dep (DependencyTrackingT cmp dep m) where
    trigger = dependent >=> adds

instance (DependencyTrackingM cmp dep m, Monad (t m), MonadLayer t) => DependencyTrackingM cmp dep (t m) where
    register d = upperM . register d
    dependent = upperM . dependent


-- | Run a dependency tracking monad transformer
runWithDependencyTracking :: forall cmp dep m a . Monad m => DependencyTrackingT cmp dep m a -> m a
runWithDependencyTracking (DependencyTrackingT m) = fst <$> runStateT m Map.empty  

-- | Same as @runWithDependencyTracking@ but returns the dependent mapping
runWithDependencyTracking' :: forall cmp dep m a . DependencyTrackingT cmp dep m a -> m (a, Map dep (Set cmp))
runWithDependencyTracking' (DependencyTrackingT m) = runStateT m Map.empty


--
-- Trigger tracking
-- --


-- | Layer to transparently track all dependency triggers
newtype TrackTriggerDependenciesT cmp (dep :: Type) m a = TrackTriggerDependenciesT (StateT (Set dep) m a)
                                            deriving (Functor, Applicative, Monad, MonadLayer, MonadCache, MonadState (Set dep))

instance (MonadDependencyTrigger cmp dep m, Ord dep) => MonadDependencyTrigger cmp dep (TrackTriggerDependenciesT cmp dep m) where           
    trigger dep = modify (Set.insert dep) >> upperM (trigger dep)



    
