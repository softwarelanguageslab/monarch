module ASE.Domain.SymbolicVariable(SymbolicVariable(..), PC, SymbolicCountMap) where  

import Syntax.Span
import qualified Symbolic.AST
import Domain.Core.AbstractCount (AbstractCount)
import RIO


-- | A symbolic variable is derived from the location of @input@ expressions
newtype SymbolicVariable = SymbolicVariable Span
   deriving (Ord, Eq, Show)

-- | Path contraints for formulas containing @SymbolicVariable@s
type PC = Symbolic.AST.PC SymbolicVariable

-- | Type of mapping of symbolic variables to their abstract counts
type SymbolicCountMap = Map SymbolicVariable AbstractCount
