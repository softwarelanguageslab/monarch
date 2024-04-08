{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.ComponentTracking (
    ComponentTrackingM(..),
    ComponentTrackingT,
    has,
    call,
    runWithComponentTracking,  
) where

import Analysis.Monad.Store
import Control.Monad.Layer

import Data.Set (Set)
import qualified Data.Set as Set 
import Control.Monad.State

---
--- Component tracking typeclass
---

class Monad m => ComponentTrackingM m cmp | m -> cmp where
    spawn :: cmp -> m ()
    components :: m (Set cmp)

has :: (ComponentTrackingM m cmp, Ord cmp) => cmp -> m Bool
has cmp = Set.member cmp <$> components

call :: (ComponentTrackingM m cmp, StoreM m cmp v) => cmp -> m v
call cmp = spawn cmp >> lookupAdr cmp



---
--- Component tracking monad transformer 
---

newtype ComponentTrackingT cmp m a = ComponentTrackingT (StateT (Set cmp) m a)
    deriving (Functor, Applicative, Monad, MonadState (Set cmp), MonadTrans, MonadLayer)

instance {-# OVERLAPPING #-} (Monad m, Ord cmp) => ComponentTrackingM (ComponentTrackingT cmp m) cmp where
    spawn = modify . Set.insert
    components = get

instance (ComponentTrackingM m cmp, MonadLayer t) => ComponentTrackingM (t m) cmp where
    spawn = upperM . spawn
    components = upperM components

runWithComponentTracking :: forall cmp m a . Monad m => ComponentTrackingT cmp m a -> m a
runWithComponentTracking (ComponentTrackingT m) = fst <$> runStateT m Set.empty 
