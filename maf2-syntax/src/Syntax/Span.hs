{-# LANGUAGE RecordWildCards #-}
module Syntax.Span(Span(..), SpanOf(..), Position(..)) where   

import GHC.Generics

-- | Location in the source code
data Position = Position { line :: Int, column :: Int }
              deriving (Eq, Ord, Generic)

instance Show Position where  
   show Position { .. } = show line ++ ":" ++ show column

-- | Location information of elements in an abstract syntax tree
data Span = Span {
      filename :: String, 
      startPosition :: Position, 
      endPosition :: Position 
   } deriving (Eq, Ord, Show, Generic)

-- | Class of syntax trees that have 'Span' information for each
-- of their nodes
class SpanOf s where 
   spanOf :: s -> Span
