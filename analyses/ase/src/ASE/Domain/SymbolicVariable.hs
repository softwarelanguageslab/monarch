{-# LANGUAGE DeriveGeneric #-}
module ASE.Domain.SymbolicVariable(SymbolicVariable(..), symbolicVariable, adaptModel, discardContext, removeContextPC, PC, SymbolicCountMap) where

import Syntax.Span
import qualified Symbolic.AST
import qualified ASE.PC
import Domain.Core.AbstractCount (AbstractCount)
import RIO
import qualified RIO.Set as Set
import qualified RIO.Map as Map


-- | A symbolic variable is derived from the location of @input@ expressions
-- and an optional context based on the model it has been sovled for.
data SymbolicVariable = SymbolicVariable Span PC
   deriving (Ord, Eq, Show, Generic)
instance NFData SymbolicVariable

-- | Create a symbolic variable with the given context
symbolicVariable :: Span -> PC -> SymbolicVariable 
symbolicVariable x = SymbolicVariable x . removeContextPC

-- | Remove the optional context from the symbolic variable
discardContext :: SymbolicVariable -> SymbolicVariable
discardContext (SymbolicVariable s _) = SymbolicVariable s ASE.PC.emptyPC

-- | Add a context to an existing symbolic variable, but 
-- discard the context from the symbolic variables in the path constraint
addContext :: SymbolicVariable -> PC -> SymbolicVariable
addContext (SymbolicVariable s _) = SymbolicVariable s . removeContextPC

-- | Remove the context from symbolic variables in the path constraint
removeContextPC :: PC -> PC 
removeContextPC = ASE.PC.discardCount . ASE.PC.mapFormula (Symbolic.AST.mapVariables discardContext)

-- | Adapt a model so that the symbolic variables share the given context
adaptModel :: PC -> Map SymbolicVariable v -> Map SymbolicVariable v
adaptModel pc = Map.mapKeys (`addContext` pc)

-- | Path contraints for formulas containing @SymbolicVariable@s
type PC = ASE.PC.PC SymbolicVariable

-- | Type of mapping of symbolic variables to their abstract counts
type SymbolicCountMap = Map SymbolicVariable AbstractCount

