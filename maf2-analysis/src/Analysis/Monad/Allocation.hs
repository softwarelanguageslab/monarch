{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE PolyKinds #-}

module Analysis.Monad.Allocation (
    AllocM(..),
    AllocT,
    runAlloc,
) where

import Analysis.Monad.Context

import Control.Monad.Reader hiding (mzero)
import Control.Monad.Join (MonadJoin(..))
import Control.Monad.Layer
import Analysis.Monad.Cache
import Data.TypeLevel.AssocList
import Data.Kind (Type)

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
newtype AllocT from ctx to m a = AllocT (ReaderT (Allocator from ctx to) m a)
    deriving (MonadReader (Allocator from ctx to), Monad, Applicative, Functor, MonadJoin, MonadLayer, MonadTrans)

instance (Monad m, MonadCache k v m) => MonadCache k v (AllocT from ctx to m) where
   cached = upperM . cached
   cache k (AllocT m) = AllocT (ReaderT (cache k . runReaderT m))

instance {-# OVERLAPPING #-} (Monad m, CtxM m ctx) => AllocM (AllocT from ctx to m) from to where
   alloc loc = do
      ctx <- AllocT $ lift getCtx
      f   <- ask
      return $ f loc ctx

instance (AllocM m from to, MonadLayer l) => AllocM (l m) from to where
   alloc = upperM . alloc @m @from @to

runAlloc :: forall from ctx to m a . Allocator from ctx to -> AllocT from ctx to m a ->  m a
runAlloc allocator (AllocT m) = runReaderT m allocator