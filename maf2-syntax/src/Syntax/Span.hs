{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE PatternSynonyms #-}
module Syntax.Span(pattern Span, Span, ESpan(..), ESpanOf(..), SpanOf(..), Position(..), mkSpan) where

import GHC.Generics
import Control.DeepSeq

-- | Location in the source code
data Position = Position { line :: Int, column :: Int }
              deriving (Eq, Ord, Generic)

instance NFData Position

instance Show Position where
   show Position { .. } = show line ++ ":" ++ show column

-- | Location information of elements in an abstract syntax tree
data ESpan ξ = ESpan {
      filename :: String,
      startPosition :: Position,
      endPosition :: Position,
      annotation :: ξ
   } deriving (Eq, Ord, Generic)


type Span = ESpan ()

instance (NFData ξ) => NFData (ESpan ξ)
instance (Show ξ) => Show (ESpan ξ) where
   show ESpan { .. } = show startPosition ++ "-" ++ show endPosition ++ "@" ++ filename

class ESpanOf ξ s | s -> ξ where
   espanOf :: s -> ESpan ξ

-- | Class of syntax trees that have 'Span' information for each
-- of their nodes
class SpanOf s where
   spanOf :: s -> Span


pattern Span f s e <- ESpan f s e ()
   where Span f s e = ESpan f s e ()

-- | Compute the span of a list of expressions, using the start position of the
-- first one as the start position of the span, and the end position of the last one as the end position of the span
instance SpanOf a => SpanOf [a] where
   spanOf [] = error "cannot compute the span of an empty list"
   spanOf xs = Span (filename (spanOf (head xs)))
                    (startPosition $ spanOf (head xs))
                    (endPosition $ spanOf (last xs))

-- | Construct a span from two elements that have a span, using the first element
-- as the start of the new span, and the second element as its end.
mkSpan :: (SpanOf a) => a -> a -> Span
mkSpan  start end = spanOf [start, end]
