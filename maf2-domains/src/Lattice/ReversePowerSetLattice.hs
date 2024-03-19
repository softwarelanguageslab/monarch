module Lattice.ReversePowerSetLattice (ReversePowerSet, empty, insert, contains) where

import Lattice.Class

import Data.Set (Set)
import qualified Data.Set as Set 

-- | A reverse powerset
data ReversePowerSet a = Bottom
                       | RPSet (Set a) 
   deriving Eq

empty :: ReversePowerSet a
empty = RPSet Set.empty

insert :: Ord a => a -> ReversePowerSet a -> ReversePowerSet a
insert a Bottom    = Bottom
insert a (RPSet s) = RPSet (Set.insert a s)

contains :: Ord a => a -> ReversePowerSet a -> Bool
contains _ Bottom    = True
contains a (RPSet s) = Set.member a s

instance (Ord a) => Joinable (ReversePowerSet a) where
   join Bottom v = v
   join v Bottom = v
   join (RPSet s1) (RPSet s2) = RPSet (s1 `Set.intersection` s2)

instance (Ord a) => JoinLattice (ReversePowerSet a) where
   bottom = Bottom 
   subsumes _ Bottom = True
   subsumes Bottom _ = False
   subsumes (RPSet s1) (RPSet s2) = s1 `Set.isSubsetOf` s2 

instance (Ord a) => Meetable (ReversePowerSet a) where
   meet Bottom _ = Bottom
   meet _ Bottom = Bottom
   meet (RPSet s1) (RPSet s2) = RPSet (s1 `Set.union` s2)

instance (Ord a) => TopLattice (ReversePowerSet a) where
   top = RPSet Set.empty
