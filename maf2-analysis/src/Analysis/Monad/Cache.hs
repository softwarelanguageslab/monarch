{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Monad.Cache (
    MonadCache(..),
    CacheT(..),
    runCacheT,
) where

import Control.Monad.Identity
import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.State hiding (get, put)
import Control.Monad.Escape
import Lattice (JoinLattice(..))
import Control.Monad.Layer (MonadLayer)
import Data.Functor (($>))
import Control.Monad.Trans.Maybe
import Analysis.Monad.Map
import ListT
import Data.Set (Set)
import qualified Data.Set as Set 
import Lattice (Joinable)

---
--- MonadCache typeclass
---

-- | Type class for monads that can cache the results of their computation
class Monad m => MonadCache k v m | m k -> v where
    type Key m k
    key    :: k -> m (Key m k)
    cache  :: Key m k -> m v -> m v   -- compute and save in cache
    cached :: Key m k -> m v          -- get the cached version


---
--- MonadCache instances for standard monad transformers
---

instance MonadCache k v m => MonadCache k v (IdentityT m) where
    type Key (IdentityT m) k = Key m k
    key = lift . key 
    cache k = IdentityT . cache @k k . runIdentityT
    cached = IdentityT . cached @k 

instance MonadCache k (Maybe v) m => MonadCache k v (MaybeT m) where
    type Key (MaybeT m) k = Key m k
    key = lift . key 
    cache k = MaybeT . cache @k k . runMaybeT
    cached = MaybeT . cached @k 

instance (Joinable e, MonadCache k (MayEscape e v) m) => MonadCache k v (MayEscapeT e m) where
    type Key (MayEscapeT e m) k = Key m k
    key = lift . key 
    cache k = MayEscapeT . cache @k k . runMayEscape
    cached = MayEscapeT . cached @k 

instance MonadCache (k, r) v m => MonadCache k v (ReaderT r m) where
    type Key (ReaderT r m) k = Key m (k, r)
    key k = ReaderT $ \r -> key (k,r) 
    cache k (ReaderT m) = ReaderT $ cache @(k, r) k . m
    cached = ReaderT . const . cached @(k,r)

instance (MonadCache k (v, w) m, Monoid w) => MonadCache k v (WriterT w m) where
    type Key (WriterT w m) k = Key m k
    key = lift . key
    cache k = WriterT . cache @k k . runWriterT
    cached = WriterT . cached @k

instance MonadCache (k, s) (v, s) m => MonadCache k v (StateT s m) where
    type Key (StateT s m) k = Key m (k, s)
    key k = StateT $ \s -> (,s) <$> key (k,s)
    cache k (StateT m) = StateT $ cache @(k,s) k . m
    cached = StateT . const . cached @(k,s)

instance (MonadCache k (Set v) m, Ord v) => MonadCache k v (ListT m) where
    type Key (ListT m) k = Key m k
    key = lift . key 
    cache k m = ListT $ cache @k k (Set.fromList <$> ListT.toList m) >>= uncons . ListT.fromFoldable
    cached k = ListT $ cached @k k >>= uncons . ListT.fromFoldable 

---
--- CacheT instance
---

newtype CacheT m a = CacheT (IdentityT m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer)

instance (MapM k v m, JoinLattice v) => MonadCache k v (CacheT m) where
    type Key (CacheT m) k = k 
    key = CacheT . IdentityT . return 
    cache k (CacheT m) = CacheT $ m >>= \v -> put k v $> v 
    cached = CacheT . IdentityT . (get >=> maybe (return bottom) return)

runCacheT :: CacheT m a -> m a
runCacheT (CacheT m) = runIdentityT m 