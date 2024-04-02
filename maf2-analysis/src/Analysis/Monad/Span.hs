{-# LANGUAGE FlexibleInstances #-}

module Analysis.Monad.Span (
    SpanM(..),  
    SpanT,
    runSpanT,
) where

import Syntax.Span

import Control.Monad.Layer 

import Control.Monad.Reader


---
--- The SpanM typeclass
---

-- | Adds location information to the context
class SpanM m where   
   withSpan  :: Span -> m a -> m a
   usingSpan :: (Span -> a) -> m a

instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, SpanM m) => SpanM (t m) where 
   withSpan s = lowerM (withSpan s)
   usingSpan = upperM . usingSpan


---
--- The SpanT monad transformer
---

newtype SpanT m a = SpanT (ReaderT Span m a) 
   deriving (Functor, Applicative, Monad, MonadLayer, MonadTrans, MonadReader Span)

instance (Monad m) => SpanM (SpanT m) where
   withSpan  = local . const
   usingSpan = asks

runSpanT :: SpanOf e => e -> SpanT m a -> m a 
runSpanT e (SpanT m) = runReaderT m (spanOf e)