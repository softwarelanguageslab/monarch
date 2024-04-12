{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.SetLattice where

import Lattice.Class
import Domain.Class 
import Domain.Core.BoolDomain.Class
import Lattice.Equal (EqualLattice(..))

import Data.Set (Set)
import qualified Data.Set as Set 

-- | Joinable for sets
instance (Ord a) => Joinable (Set a) where
   join = Set.union

-- | Lattice for sets
instance (Ord a) => JoinLattice (Set a) where
   bottom = Set.empty
   subsumes = flip Set.isSubsetOf

-- | Implementation of of `meet` for sets. It is implemented
-- as the intersection of the sets.
--
-- NOTE: The assumption here is that all elements of type `a` are "disjoint" from each other
-- meaning that for each set S of type (Set a):
-- ∀x, y ∈ S: x /= y => x ⨅ y == ⊥
instance (Ord a) => Meetable (Set a) where
   meet = Set.intersection

instance (Ord a) => SplitLattice (Set a) where
   split = Set.map Set.singleton  

-- | Domain instance for sets
instance Ord a => Domain (Set a) a where
   inject = Set.singleton

-- | Equal instance for sets
-- NOTE: The assumption here is that `a` is a concrete value type
instance Ord a => EqualLattice (Set a) where
   eql s1 s2
      | Set.null s1 || Set.null s2 = bottom 
      | Set.size s1 == 1 && Set.size s2 == 1 = inject (s1 == s2)
      | Set.null (Set.intersection s1 s2) = inject False
      | otherwise = boolTop