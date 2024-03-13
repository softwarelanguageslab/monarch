{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
-- | This module introduces a scoped state monad.
--
-- A scoped state monad is a state monad that is 
-- equipped with a "scoped" operation.
-- This operation is similar to `local` in the reader
-- monad but keeps track of the state in order 
-- to restore it after the scoped computation 
-- has been performed.
module Control.Monad.State.Scoped(runScoped, MonadScopedState(scoped)) where

import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.State
import Data.Functor.Identity

class MonadScopedState m where
   -- | Run the given computation
   -- in a new scope
   scoped :: m a -> m a

------------------------------------------------------------
-- ScopedT
------------------------------------------------------------

instance (MonadLayer m, MonadScopedState (Lower m)) => MonadScopedState m where
   scoped = lowerM scoped

newtype ScopedT m a = ScopedT { getScoped :: m a } deriving (Functor, Applicative, Monad, MonadJoin)

instance (Monad m) => MonadLayer (ScopedT m) where
   type Lower (ScopedT m) = m
   lowerM f (ScopedT m) = ScopedT $ f m
   layerM f' f = ScopedT $ f' (getScoped . f)
   upperM = ScopedT

instance {-# OVERLAPPING #-} (MonadState s m, MonadScopedState m) => MonadScopedState (ScopedT m) where
   scoped m = do 
      st <- ScopedT get 
      v <- lowerM scoped m
      ScopedT (put st)
      return v

instance {-# OVERLAPPING #-} MonadScopedState Identity where 
   scoped = id

-- | Runs the given `runState` as a scoped version. 
-- Essentially, this is the same as 
-- `runScoped & runStateT` but written in a more convient way.
runScoped :: (MonadLayer m) => (m a -> Lower m a) -> ScopedT m a -> Lower m a
runScoped run (ScopedT m) = run m
