-- | Identifier representations
module Syntax.Ide(Ide(..)) where    

import GHC.Generics
import Control.DeepSeq
import Syntax.Span
import Prelude hiding (span)

data Ide = Ide { name :: String, span :: Span } deriving (Ord, Eq, Generic)

instance NFData Ide

instance Show Ide where
   show (Ide { name, span }) = name++":"++show (line (startPosition span))++":"++show (column (startPosition span))

instance SpanOf Ide where  
   spanOf (Ide _ s) = s  
