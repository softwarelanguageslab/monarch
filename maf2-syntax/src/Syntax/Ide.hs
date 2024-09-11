-- | Identifier representations
module Syntax.Ide(Ide(..)) where    

import Syntax.Span
import Prelude hiding (span)

data Ide = Ide { name :: String, span :: Span } deriving (Ord, Eq)

instance Show Ide where
   show (Ide { name, span }) = name++":"++show (line span)++":"++show (column span)

instance SpanOf Ide where  
   spanOf (Ide _ s) = s  
