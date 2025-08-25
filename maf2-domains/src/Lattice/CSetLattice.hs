-- | A set lattice abstraction that only contains 
-- concrete elements (e.g., strings) and not abstract 
-- ones (e.g., abstract addresses)
module Lattice.CSetLattice(CSet(..)) where

import Lattice.Class
import Lattice.Split
import Lattice.Equal
import Lattice.Trace
import Domain.Class
import Domain.Core

import Data.Set (Set)
import qualified Data.Set as Set


newtype CSet a = CSet { getSet :: Set a } deriving (Eq, Ord, Show)

-- | Joinable for sets
instance (Ord a) => Joinable (CSet a) where
   join a b = CSet $ Set.union (getSet a) (getSet b)

-- | Sets have a smallest element according to their subset relation
instance BottomLattice (CSet a) where
   bottom = CSet Set.empty

-- | Sets are partially ordered according to their subset relation
instance (Ord a) => PartialOrder (CSet a) where
   subsumes a = flip Set.isSubsetOf (getSet a) . getSet

-- | Implementation of of `meet` for sets. It is implemented
-- as the intersection of the sets.
--
-- NOTE: The assumption here is that all elements of type `a` are "disjoint" from each other
-- meaning that for each set S of type (Set a):
-- ∀x, y ∈ S: x /= y => x ⨅ y == ⊥
instance (Ord a) => Meetable (CSet a) where
   meet a b = CSet $ Set.intersection (getSet a) (getSet b)

instance (Ord a) => SplitLattice (CSet a) where
   split = Set.map (CSet . Set.singleton) . getSet

-- | Domain instance for sets
instance Ord a => Domain (CSet a) a where
   inject = CSet . Set.singleton

instance Ord a => EqualLattice (CSet a) where
   eql (CSet s1) (CSet s2)
      | Set.null s1 || Set.null s2 = bottom
      | Set.size s1 == 1 && Set.size s2 == 1 = inject (s1 == s2)
      | Set.null (Set.intersection s1 s2) = inject False
      | otherwise = boolTop

-- A CSet contains concrete values and is therefore assumed to have no
-- abstract addresses.
instance Ord adr => Trace adr (CSet a) where
   trace = const Set.empty
   
