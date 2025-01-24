{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Monad.Cache (
    MonadCache(..),
    cache,
    cached,
    CacheT,
    runCacheT,
) where

import Control.Monad.Identity
import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.State hiding (get, put)
import Control.Monad.Escape
import Control.Monad.Lift
import Lattice
import Control.Monad.Layer (MonadLayer)
import Control.Monad.Trans.Maybe
import Analysis.Monad.Map
import ListT
import Data.Kind (Type)
import Analysis.Monad.Taint (MayEscapeTaintedT (..), TaintM)
import Lattice.Tainted (Tainted)
import Control.Monad.Join (MonadJoinable(..))

---
--- MonadCache typeclass
---


-- | Type class for monads that can cache the results of their computation
class Monad m => MonadCache m where
    type Key m k :: Type
    type Val m v :: Type
    type Base m  :: Type -> Type
    key :: k -> m (Key m k)
    val :: Val m v -> m v
    run :: (k -> m v) -> Key m k -> Base m (Val m v)

cache :: forall m k v . (MonadCache m, MapM (Key m k) (Val m v) (Base m)) => Key m k -> (k -> m v) -> Base m ()
cache k f = run f k >>= put k

cached :: forall m k v . (MonadCache m, MapM (Key m k) (Val m v) m) => Key m k -> m (Maybe v)
cached = get >=> Prelude.traverse val

---
--- MonadCache instances for standard monad transformers
---

instance MonadCache m => MonadCache (IdentityT m) where
    type Key (IdentityT m) k = Key m k
    type Val (IdentityT m) v = Val m v
    type Base (IdentityT m) = Base m
    key = lift . key
    val = lift . val
    {-# INLINE run #-}
    run f = run (runIdentityT . f)

instance MonadCache m => MonadCache (MaybeT m) where
    type Key (MaybeT m) k = Key m k
    type Val (MaybeT m) v = Val m (Maybe v)
    type Base (MaybeT m) = Base m
    key = lift . key
    val = MaybeT . val
    {-# INLINE run #-}
    run f = run (runMaybeT . f)

instance MonadCache m => MonadCache (StateT s m) where
     type Key (StateT s m) k = Key m (k, s)
     type Val (StateT s m) v = Val m (v, s)
     type Base (StateT s m) = Base m
     key k = StateT $ \s -> (,s) <$> key (k, s)
     val = StateT . const . val
     {-# INLINE run #-}
     run f = run (\(k,s) -> runStateT (f k) s)

instance (Joinable e, MonadCache m) => MonadCache (MayEscapeT e m) where
    type Key (MayEscapeT e m) k = Key m k
    type Val (MayEscapeT e m) v = Val m (MayEscape e v)
    type Base (MayEscapeT e m) = Base m
    key = lift . key
    val = MayEscapeT . val
    {-# INLINE run #-}
    run f = run (runMayEscape . f)

instance (TaintM t m, Joinable e, MonadCache m) => MonadCache (MayEscapeTaintedT t e m) where
    type Key (MayEscapeTaintedT t e m) k = Key m k
    type Val (MayEscapeTaintedT t e m) v = Val m (MayEscape (Tainted t e) v)
    type Base (MayEscapeTaintedT t e m) = Base m
    key = lift . key 
    val = MayEscapeTaintedT . val 
    {-# INLINE run #-}
    run f = run (runMayEscapeTainted . f)

instance MonadCache m => MonadCache (ReaderT r m) where
    type Key (ReaderT r m) k = Key m (k, r)
    type Val (ReaderT r m) v = Val m v
    type Base (ReaderT r m) = Base m
    key k = ReaderT $ \r -> key (k,r)
    val = ReaderT . const . val
    {-# INLINE run #-}
    run f = run (\(k,r) -> runReaderT (f k) r)

instance (MonadCache m, Monoid w) => MonadCache (WriterT w m) where
    type Key (WriterT w m) k = Key m k
    type Val (WriterT w m) v = Val m (v, w)
    type Base (WriterT w m) = Base m
    key = lift . key
    val = WriterT . val
    {-# INLINE run #-}
    run f = run (runWriterT . f)

instance MonadCache m => MonadCache (ListT m) where
    type Key (ListT m) k = Key m k
    type Val (ListT m) v = Val m [v]
    type Base (ListT m) = Base m
    key = lift . key
    val :: forall v . Val (ListT m) v -> ListT m v
    val v = ListT (val @m @[v] v >>= uncons . ListT.fromFoldable)
    {-# INLINE run #-}
    run f = run (ListT.toList . f)

instance (MonadJoinable m) => MonadJoinable (CacheT m) where
   {-# INLINE mjoin #-}
   mjoin (CacheT ma) (CacheT mb) = CacheT $ IdentityT $ mjoin (runIdentityT ma) (runIdentityT mb)


-- ---
-- --- CacheT instance
-- ---

newtype CacheT m a = CacheT (IdentityT m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadTransControl)

instance Monad m => MonadCache (CacheT m) where
    type Key (CacheT m) k = k
    type Val (CacheT m) v = v
    type Base (CacheT m) = m
    key = CacheT . return
    val = CacheT . return
    {-# INLINE run #-}
    run f = runCacheT . f

{-# INLINE runCacheT #-}
runCacheT :: CacheT m a -> m a
runCacheT (CacheT m) = runIdentityT m


