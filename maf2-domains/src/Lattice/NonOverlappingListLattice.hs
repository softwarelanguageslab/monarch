-- | Lattice for lists without overlapping elements. See 'Lattice.ListLattice' for a lattice 
-- for lists that have overlapping elements. 
--
-- By "overlapping" we mean any pair of elements for which v1 \sqcap v2 = ∅
module Lattice.NonOverlappingListLattice(NonOverlappingList(..)) where

import Lattice.Class

newtype NonOverlappingList a = NonOverlappingList { getList :: [a] }
    deriving (Ord, Eq, Show)


instance {-# OVERLAPPABLE #-} Joinable (NonOverlappingList a) where
    join l1 l2 = NonOverlappingList $ getList l1 ++ getList l2

instance BottomLattice (NonOverlappingList a) where 
    bottom = NonOverlappingList []

instance Eq a => PartialOrder (NonOverlappingList a) where 
    subsumes l1 l2 = join l1 l2 == l1
