{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.MapLattice where

import Lattice.Class
import Lattice.Split

import Data.Map (Map)
import qualified Data.Map as Map 
import Data.Set (Set)
import qualified Data.Set as Set 

-- | Joinable for maps
instance (Ord a, Joinable v) => Joinable (Map a v) where
   join = Map.unionWith join

instance (Ord a, Eq v, Joinable v) => JoinLattice (Map a v) where
   bottom = Map.empty

instance (Ord a, Ord v) => SplitLattice (Map a v) where
   split = Map.foldrWithKey (\k -> Set.insert . Map.singleton k) Set.empty  