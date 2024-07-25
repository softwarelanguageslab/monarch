{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}

module Analysis.Monad.Assertion (
    AssertM(..),
    
) where

import Domain 
import Lattice 

import Analysis.Monad.Span

import Control.Monad.Join
import Control.Monad.Escape 

import Syntax.Span


---
--- The AssertM typeclass
---

-- | Assert that certain conditions hold on the given value
-- and give an assertion error if they do not.
class (Monad m, SpanM m, MonadJoin m, MonadEscape m) => AssertM m where   
   assert :: Lattice v => (Domain (Esc m) e) => (v -> CP Bool) -> (Span -> e) -> v -> m v
   assert b e v = cond (pure $ b v) (pure v) (escape =<< usingSpan e) 

-- Auto instance
instance {-# OVERLAPPABLE #-} (Monad m, SpanM m, MonadJoin m, MonadEscape m) => AssertM m
