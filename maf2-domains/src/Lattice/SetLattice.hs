{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.SetLattice where

import Lattice.Class
import Domain.Class 
import Domain.Core.BoolDomain.Class

import Data.Set (Set)
import qualified Data.Set as Set 

-- | Joinable for sets
instance (Ord a) => Joinable (Set a) where
   join = Set.union

-- | Lattice for sets
instance (Ord a) => JoinLattice (Set a) where
   bottom = Set.empty
   subsumes = flip Set.isSubsetOf

instance (Ord a) => Meetable (Set a) where
   meet = Set.intersection

instance (Ord a) => SplitLattice (Set a) where
   split = Set.map Set.singleton  

-- | Domain instance for sets
instance Ord a => Domain (Set a) a where
   inject = Set.singleton

-- | Equallity for set abstractions
instance (Ord a) => EqualLattice (Set a) where
   -- Abstract equality for sets is conservative, 
   -- we never know whether two sets are definitively 
   -- equal without looking at the underlying representation.
   --
   -- The assumption here is also that each element in the set
   -- is "disjoint" from each-other meaning that 
   -- ∀x ∈ S: ⨅ x == ⊥
   eql a b 
      | a == bottom || b == bottom = bottom
      | a `meet` b == bottom = inject False
      | otherwise = boolTop
