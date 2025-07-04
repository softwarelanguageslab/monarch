{-# LANGUAGE RecordWildCards #-}
module Syntax.Span(Span(..), SpanOf(..), Position(..)) where   

import GHC.Generics
import Control.DeepSeq

-- | Location in the source code
data Position = Position { line :: Int, column :: Int }
              deriving (Eq, Ord, Generic)

instance NFData Position

instance Show Position where  
   show Position { .. } = show line ++ ":" ++ show column

-- | Location information of elements in an abstract syntax tree
data Span = Span {
      filename :: String, 
      startPosition :: Position, 
      endPosition :: Position 
   } deriving (Eq, Ord, Generic)

instance NFData Span
instance Show Span where 
   show Span { .. } = show startPosition ++ "-" ++ show endPosition ++ "@" ++ filename

-- | Class of syntax trees that have 'Span' information for each
-- of their nodes
class SpanOf s where 
   spanOf :: s -> Span
