-- | Compute free variables inside expressions
module Syntax.FV(FreeVariables(..)) where

import Data.Set

class FreeVariables e where
   -- | Compute the set of free variables 
   -- in the expression.
   fv :: e -> Set String

