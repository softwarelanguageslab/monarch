{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.MapLattice where

import Lattice.Class

import Data.Map (Map)
import qualified Data.Map as Map 

-- | Joinable for maps
instance (Ord a, Joinable v) => Joinable (Map a v) where
   join = Map.unionWith join

instance (Ord a, Eq v, Joinable v) => JoinLattice (Map a v) where
   bottom = Map.empty