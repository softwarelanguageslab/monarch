{-# LANGUAGE TupleSections #-}
module Control.Monad.Extra where

import Control.Concurrent.Classy
import Control.Monad.State

modifyM :: MonadState s m => (s -> m s) -> m ()
modifyM f = get >>= f >>= put

getsM :: MonadState s m => (s -> m b) -> m b
getsM f = get >>= f

modifyRef :: MonadConc m => (a -> a) -> IORef m a -> m (IORef m a) 
modifyRef f ref = do
   atomicModifyIORef ref ((,()) . f)
   return ref 

modifyRef' :: MonadConc m => (a -> a) -> IORef m a -> m ()
modifyRef' f ref = 
   atomicModifyIORef ref ((,()) . f)
