{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.UnitLattice where

import Lattice.Class

-- | Joinable for Unit
instance Joinable () where
   join _ _ = ()

-- | JoinLattice for Unit 
instance JoinLattice () where
   bottom       = ()
   subsumes _ _ = True