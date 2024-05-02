{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Analysis.Context where

import Data.Functor
import Analysis.Monad (AllocM(..))
import Analysis.Monad.Context
import Control.Monad.Identity (IdentityT, runIdentityT)
import Control.Monad.Layer
import Control.Monad.Trans.Class

------------------------------------------------------------
-- m-cfa
------------------------------------------------------------

-- | m-cfa context,
data MCFA e = MCFA {es :: ![e], max :: !Int}
            deriving (Eq, Ord, Show)

-- | Push an element on the m-cfa context,
-- respecting the maximum number of elements in the context
push :: e -> MCFA e -> MCFA e
push e (MCFA es m) = MCFA (take m (e : es)) m

-- | Create an empty MCFA context with the given maximum 
-- context size
emptyMcfaContext :: forall e .  Int -> MCFA e
emptyMcfaContext = MCFA []


--

newtype AllocCFAContextT e m a = AllocCFAContextT (IdentityT m a)
  deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer)

instance (Monad m, CtxM m (MCFA e)) => AllocM (AllocCFAContextT e m) e (MCFA e) where
  alloc e = getCtx <&> push e

runAllocCFAContextT :: AllocCFAContextT e m a -> m a 
runAllocCFAContextT (AllocCFAContextT ma) = runIdentityT ma
