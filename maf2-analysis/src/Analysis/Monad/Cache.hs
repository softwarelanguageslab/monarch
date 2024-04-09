{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.Cache (
    MonadCache(..),
    runCacheT,
) where

import Control.Monad.Identity
import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.State
import Control.Monad.Escape
import Lattice (Joinable)
import Control.Monad.Layer (MonadLayer)
import Data.Functor (($>))

---
--- MonadCache typeclass
---

-- | Type class for monads whose result can be saved
-- `Cache m a` represents the result of a monadic computation `m a`
class Monad m => MonadCache m where
    type Cache m a
    cache :: m a -> m (Cache m a)
    cacheWith :: (a -> Cache m a -> r) -> m a -> m r
    cacheWith f m = do c <- cache m
                       a <- restore c
                       return $ f a c
    restore :: Cache m a -> m a  

---
--- MonadCache instances 
---

instance MonadCache Identity where
    type Cache Identity a = a
    cache = id
    restore = Identity

instance (MonadCache m) => MonadCache (IdentityT m) where
    type Cache (IdentityT m) a = Cache m a 
    cache = IdentityT . cache . runIdentityT
    restore = IdentityT . restore  

instance (MonadCache m) => MonadCache (ReaderT r m) where
    type Cache (ReaderT r m) a = Cache m a
    cache m = ReaderT (cache . runReaderT m)
    restore = ReaderT . const . restore

instance (MonadCache m, Monoid w) => MonadCache (WriterT w m) where
    type Cache (WriterT w m) a = Cache m (a, w)
    cache = WriterT . cacheWith (flip (,) . snd) . runWriterT
    restore = WriterT . restore 

instance (MonadCache m) => MonadCache (StateT s m) where
    type Cache (StateT s m) a = Cache m (a, s)
    cache m = StateT (cacheWith (flip (,) . snd) . runStateT m)
    restore = StateT . const . restore

instance (MonadCache m, Joinable e) => MonadCache (MayEscapeT e m) where
    type Cache (MayEscapeT e m) a = Cache m (MayEscape e a)
    cache = MayEscapeT . cacheWith ($>) . runMayEscape
    restore = MayEscapeT . restore 

newtype CacheT m a = CacheT (IdentityT m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer)

instance Monad m => MonadCache (CacheT m) where
    type Cache (CacheT m) a = a 
    cache = id
    restore = return 

runCacheT :: CacheT m a -> m a
runCacheT (CacheT m) = runIdentityT m 