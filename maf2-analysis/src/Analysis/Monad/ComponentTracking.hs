{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.ComponentTracking (
    ComponentTrackingM(..),
    ComponentTrackingT,
    has,
    call,
    runWithComponentTracking,
    execWithComponentTracking
) where

import Control.Monad.Layer

import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.State as State hiding (mzero)
import Analysis.Monad.Cache
import Control.Monad.Join
import Analysis.Monad.Map (MapM)
import Debug.Trace

---
--- Component tracking typeclass
---

class Monad m => ComponentTrackingM m cmp | m -> cmp where
    spawn :: cmp -> m ()
    components :: m (Set cmp)

has :: (ComponentTrackingM m cmp, Ord cmp) => cmp -> m Bool
has cmp = Set.member cmp <$> components

call :: forall v m cmp . (MonadCache m, MonadJoin m, MapM (Key m cmp) (Val m v) m, ComponentTrackingM m (Key m cmp)) => cmp -> m v
call cmp = do k <- key cmp
              spawn k
              m <- cached @m @cmp @v k
              maybe mbottom return m

---
--- Component tracking monad transformer 
---

newtype ComponentTrackingT cmp m a = ComponentTrackingT (StateT (Set cmp) m a)
    deriving (Functor, Applicative, Monad, MonadState (Set cmp), MonadTrans, MonadLayer, MonadTransControl)

instance {-# OVERLAPPING #-} (Monad m, Ord cmp) => ComponentTrackingM (ComponentTrackingT cmp m) cmp where
    spawn = State.modify . Set.insert
    components = State.get

instance (ComponentTrackingM m cmp, Monad (t m), MonadLayer t) => ComponentTrackingM (t m) cmp where
    spawn = upperM . spawn
    components = upperM components

runWithComponentTracking :: forall cmp m a . Monad m => ComponentTrackingT cmp m a -> m a
runWithComponentTracking (ComponentTrackingT m) = evalStateT m Set.empty

-- | Same as @runWithComponentTracking@ but returns the visited set instead
execWithComponentTracking :: forall cmp m a . Monad m => ComponentTrackingT cmp m a -> m (Set cmp)
execWithComponentTracking (ComponentTrackingT m) = execStateT m Set.empty


