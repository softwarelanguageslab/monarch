module Domain.Symbolic.Class where

import Symbolic.AST
import Domain.Scheme

-- | SymbolicValue to capture
-- changes to the symbolic representation 
-- of a particular value.
class (SchemeValue v) => SymbolicValue v where
   -- | Construct a symbolic representation of 
   -- a function application.
   ap :: v -> [v] -> v ->  v
   -- | Assert that the given value is true 
   -- as a symbolic expression
   assertTrue :: v -> v
   -- | Assert that the given value is false
   -- as a symbolic expression
   assertFalse :: v -> v
   -- | Extract a symbolic value from the value
   symbolic    :: v -> Proposition
