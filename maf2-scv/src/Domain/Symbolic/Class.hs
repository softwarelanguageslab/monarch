module Domain.Symbolic.Class(SymbolicValue(..)) where

import Symbolic.AST
import Data.Kind
import Lattice (Joinable)
import Data.Set (Set)


-- | SymbolicValue to capture
-- changes to the symbolic representation 
-- of a particular value.
class (Joinable (Symbolic v), Ord i) => SymbolicValue v i | v -> i where
   -- | All symbolic values have a purely symbolic 
   -- symbolic part and an abstract part, 
   -- this function teases out the purely symbolic 
   -- part
   type Symbolic v :: Type
   -- | Similarly, a symbolic value also has 
   -- a purely abstract part
   type Abstract v :: Type
   -- | Combine the abstract part with the symbolic part
   combine :: Abstract v -> Symbolic v -> v

   -- 
   abstractValue :: v -> Abstract v
   symbolicValue :: v -> Symbolic v

   -- | Construct a symbolic representation of 
   -- a function application.
   ap :: v -> [v] -> v -> v
   -- | Assert that the given value is true 
   -- as a symbolic expression
   assertTrue :: v -> v
   -- | Assert that the given value is false
   -- as a symbolic expression
   assertFalse :: v -> v
   -- | Extract a symbolic value from the value
   symbolic    :: v -> Proposition i
   -- | Attaches a fresh identifier 
   -- to the given value
   var :: i -> v -> v
   -- | Remove the symbolic part from the value
   unsymbolic :: v -> v
   -- | Equality between two symbolic values
   -- resulting in another symbolic value
   equal :: v -> v -> v
   -- | Returns all symbolic variables that occur in the symbolic value
   variables :: v -> Set i
   -- | Same as 'variables' but only returns the variables that are certainly 
   -- in the formula.
   strictVariables :: v -> Set i
