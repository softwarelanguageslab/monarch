{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.Context (
   CtxM(..),
   CtxT,
   runCtx,
) where

import Control.Monad.Reader hiding (mzero)
import Control.Monad.Layer 
import Control.Monad.Join 


---
--- The CtxM typeclass 
---

-- | Manipulating the context of the current abstract state
class CtxM m ctx | m -> ctx where
   -- | Changes the current context for the given subcomputation
   withCtx  :: (ctx -> ctx) -> m a -> m a
   -- | Retrieves the current context
   getCtx    :: m ctx


---
--- CtxT monad transfomer
---


newtype CtxT ctx m a = CtxT { getContextReader :: ReaderT ctx m a } 
   deriving (MonadReader ctx, Monad, Applicative, MonadLayer, MonadTrans, Functor)
instance {-# OVERLAPPING #-} Monad m => CtxM (CtxT ctx m) ctx where
   getCtx = ask
   withCtx = local
instance (MonadLayer t, Monad m, CtxM m ctx) => CtxM (t m) ctx where
   getCtx =  upperM getCtx
   withCtx f = lowerM (withCtx f)

instance (MonadJoin m) => MonadJoin (CtxT ctx m) where
   mjoin (CtxT ma) = CtxT . mjoin ma . getContextReader
   mzero = CtxT mzero

runCtx :: ctx -> (CtxT ctx m) a -> m a
runCtx initialCtx (CtxT m) = runReaderT m initialCtx