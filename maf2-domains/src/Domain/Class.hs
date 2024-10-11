{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE UndecidableInstances #-}
module Domain.Class (Domain(..), Domain') where

import Data.Kind
import Data.Singletons
import Lattice.Class

-- | A domain maps a concrete value `c`
-- into an abstract value `v` using the `inject` 
-- function.
class (PartialOrder v, Joinable v, Eq v) => Domain v c where
   inject :: c -> v
   gamma :: v -> c -> Bool
   gamma v = subsumes v . inject    -- valid since for a Galois connection: c ∈ γ(a) <=> α(c) ⊑ a  


injects :: (Lattice v, Domain v c) => Foldable t => t c -> v 
injects = joinMap inject 

-- | A curried and flipped version of the `Domain` constraint
data Domain' (c :: Type) :: Type ~> Constraint
type instance Apply (Domain' c) v = Domain v c
