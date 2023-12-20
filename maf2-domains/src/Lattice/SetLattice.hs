{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.SetLattice where

import Lattice.Class
import Domain.Class 

import Data.Set (Set)
import qualified Data.Set as Set 

-- | Joinable for sets
instance (Ord a) => Joinable (Set a) where
   join = Set.union

-- | Lattice for sets
instance (Ord a) => JoinLattice (Set a) where
   bottom = Set.empty
   subsumes = flip Set.isSubsetOf

-- | Domain instance for sets
instance Ord a => Domain (Set a) a where
   inject = Set.singleton