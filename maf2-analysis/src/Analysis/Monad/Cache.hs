{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}

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

---
--- MonadCache typeclass
---

-- | Type class for monads that can cache the results of their computation
class MonadCache k v m | m k -> v where
    cache  :: k -> m v -> m v   -- compute and save in cache
    cached :: k -> m v          -- get the cached version


---
--- MonadCache instances for standard monad transformers
---

instance MonadCache k v m => MonadCache k v (IdentityT m) where
    cache k = IdentityT . cache k . runIdentityT
    cached = IdentityT . cached

instance MonadCache k (Maybe v) m => MonadCache k v (MaybeT m) where
    cache k = MaybeT . cache k . runMaybeT
    cached = MaybeT . cached

instance MonadCache k (MayEscape e v) m => MonadCache k v (MayEscapeT e m) where
    cache k = MayEscapeT . cache k . runMayEscape
    cached = MayEscapeT . cached

instance MonadCache (k, r) v m => MonadCache k v (ReaderT r m) where
    cache k (ReaderT m) = ReaderT (\r -> cache (k, r) (m r))
    cached k = ReaderT (\r -> cached (k,r))

instance MonadCache k (v, w) m => MonadCache k v (WriterT w m) where
    cache k = WriterT . cache k . runWriterT
    cached = WriterT . cached

instance MonadCache (k, s) (v, s) m => MonadCache k v (StateT s m) where
    cache k (StateT m) = StateT (\s -> cache (k, s) (m s))
    cached k = StateT (\s -> cached (k,s))

instance (MonadCache k (Set v) m, Ord v, Monad m) => MonadCache k v (ListT m) where
    cache k m = ListT $ cache k (Set.fromList <$> ListT.toList m) >>= uncons . ListT.fromFoldable
    cached k = ListT $ cached k >>= uncons . ListT.fromFoldable 

---
--- CacheT instance
---

newtype CacheT m a = CacheT (IdentityT m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer)

instance (MapM k v m, JoinLattice v) => MonadCache k v (CacheT m) where
    cache k (CacheT m) = CacheT $ m >>= \v -> put k v $> v 
    cached = CacheT . IdentityT . (get >=> maybe (return bottom) return)

runCacheT :: CacheT m a -> m a
runCacheT (CacheT m) = runIdentityT m 