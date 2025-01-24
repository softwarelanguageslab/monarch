{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE PolyKinds #-}

module Analysis.Monad.Allocation (
    AllocM(..),
    AllocT,
    -- TODO: rename this to `runAllocT`
    runAlloc,
) where

import Analysis.Monad.Context

import Control.Monad.Reader hiding (mzero)
import Control.Monad.Join (MonadJoinable(..))
import Control.Monad.Layer
import Analysis.Monad.Cache
import Control.Monad.Escape (MonadEscape(..))

------------------------------------------------------------
--- The AllocM typeclass
------------------------------------------------------------

class (Monad m) => AllocM m from adr where
   alloc :: from -> m adr


------------------------------------------------------------
--- The AllocT monad transformer
------------------------------------------------------------

-- | Allocator represented as a function
type Allocator from ctx to = from -> ctx -> to

-- Allocator that turns a function into an allocator of the suiteable type
newtype AllocT from ctx to m a = AllocT { runAllocT_ :: ReaderT (Allocator from ctx to) m a }
    deriving (MonadReader (Allocator from ctx to), Monad, Applicative, Functor, MonadJoinable, MonadLayer, MonadTransControl, MonadTrans)

instance (MonadCache m) => MonadCache (AllocT from ctx to m) where
   type Key (AllocT from ctx to m) k = Key m k 
   type Val (AllocT from ctx to m) v = Val m v
   type Base (AllocT from ctx to m) = AllocT from ctx to (Base m)
   key = lift . key
   val = lift . val 
   run f k = AllocT $ ReaderT $ \alloc -> run (runAlloc alloc . f) k

instance (Monad m, MonadEscape m) => MonadEscape (AllocT from ctx to m) where
   type Esc (AllocT from ctx to m) = Esc m
   throw = upperM . throw 
   catch (AllocT m) f = AllocT $ ReaderT $ \alloc -> runReaderT m alloc `catch` (flip runReaderT alloc . runAllocT_ . f)

instance {-# OVERLAPPING #-} (Monad m, CtxM m ctx) => AllocM (AllocT from ctx to m) from to where
   {-# INLINE alloc #-}
   alloc loc = do
      ctx <- AllocT $ lift getCtx
      f   <- ask
      return $ f loc ctx

instance (AllocM m from to, Monad (l m), MonadLayer l) => AllocM (l m) from to where
   {-# INLINE alloc #-}
   alloc = upperM . alloc @m @from @to



runAlloc :: forall from ctx to m a . Allocator from ctx to -> AllocT from ctx to m a -> m a
runAlloc allocator (AllocT m) = runReaderT m allocator
