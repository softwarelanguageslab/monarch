module ASE.Domain.SymbolicVariable(SymbolicVariable(..), PC) where  

import Syntax.Span
import qualified Symbolic.AST

newtype SymbolicVariable = SymbolicVariable Span
                         deriving (Eq, Ord, Show)

type PC = Symbolic.AST.PC SymbolicVariable
