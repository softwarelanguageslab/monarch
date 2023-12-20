{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.ListLattice where

import Lattice.Class 

import Data.List (partition)


--TODO: introduce a newtype

reduce :: (Meetable v, JoinLattice v) => [v] -> [v]
reduce [] = []
reduce (v:vs)
    | updated == v   = v : reduce oth
    | otherwise      = reduce (updated : oth)
    where (olp, oth) = partition (overlap v) vs
          updated    = joins (v:olp)

-- | A List lattice instance, where the elements may be overlapping
instance (JoinLattice l, Meetable l) => Joinable [l] where
   join l1 l2 = reduce (l1 ++ l2)  
   
instance (JoinLattice l, Meetable l) => JoinLattice [l] where
   bottom = []
   subsumes l1 l2 = join l1 l2 == l1 