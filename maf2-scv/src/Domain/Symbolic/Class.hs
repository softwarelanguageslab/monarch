module Domain.Symbolic.Class(SymbolicValue(..), SymbolicVar(..)) where

import Symbolic.AST
import Data.Kind
import Lattice (Joinable)

-- | Just like @Show@ but represents 
-- representations of variables that can be converted to SMT values
class SymbolicVar var where 
   varName :: var -> String

instance SymbolicVar Int where   
   varName = show

-- | SymbolicValue to capture
-- changes to the symbolic representation 
-- of a particular value.
class (Joinable (Symbolic v)) => SymbolicValue v where
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
   symbolic    :: v -> Proposition
   -- | Attaches a fresh identifier 
   -- to the given value
   var :: SymbolicVar var => var -> v -> v
   -- | Remove the symbolic part from the value
   unsymbolic :: v -> v
