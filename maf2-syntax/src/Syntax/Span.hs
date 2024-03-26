module Syntax.Span(Span(..), SpanOf(..)) where   

import GHC.Generics

-- | Location information of elements in an abstract syntax tree
data Span = Span { filename :: String, line :: Int, column :: Int }
          deriving (Eq, Ord, Show, Generic)

-- | Class of syntax trees that have 'Span' information for each
-- of their nodes
class SpanOf s where 
   spanOf :: s -> Span
