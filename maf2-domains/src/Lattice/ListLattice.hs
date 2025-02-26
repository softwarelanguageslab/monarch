{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.ListLattice where

import Lattice.Class 

import Data.List (partition)


--TODO: introduce a newtype

reduce :: (Meetable v, Joinable v, BottomLattice v, Eq v) => [v] -> [v]
reduce [] = []
reduce (v:vs)
    | updated == v   = v : reduce oth
    | otherwise      = reduce (updated : oth)
    where (olp, oth) = partition (overlap v) vs
          updated    = joins (v:olp)

-- | A List lattice instance, where the elements may be overlapping
instance {-# OVERLAPPABLE #-} (Joinable l, Meetable l, BottomLattice l,  Eq l) => Joinable [l] where
   join l1 l2 = reduce (l1 ++ l2)  
   
instance BottomLattice [l] where 
   bottom = []

instance (Joinable l, Meetable l, BottomLattice l, Eq l) => PartialOrder [l] where
   subsumes l1 l2 = join l1 l2 == l1 
