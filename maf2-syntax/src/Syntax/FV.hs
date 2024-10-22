{-# LANGUAGE FlexibleInstances #-}
-- | Compute free variables inside expressions
module Syntax.FV(FreeVariables(..)) where

import Data.Set (Set)
import qualified Data.Set as Set

class FreeVariables e where
   -- | Compute the set of free variables 
   -- in the expression.
   fv :: e -> Set String

instance {-# OVERLAPPABLE #-} (FreeVariables a, FreeVariables b) => FreeVariables (a, b) where
   fv (a, b) = Set.union (fv a) (fv b)

instance {-# OVERLAPPABLE #-} FreeVariables a where   
   fv = const Set.empty
