{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.UnitLattice where

import Lattice.Class
import Lattice.Split
import Domain.Class 

import qualified Data.Set as Set 
import Lattice.Equal (EqualLattice, eql)
import Domain.Core.BoolDomain.Class (true)

-- | Joinable for Unit
instance Joinable () where
   join _ _ = ()

instance Meetable () where 
   meet _ _ = ()

instance EqualLattice () where   
   eql _ _ = true

-- | A singleton set has a smallest element (itself)
instance BottomLattice () where   
   bottom = ()

-- | A singleton set (the unit) is partially ordered since `leq` is 
-- reflexive.
instance PartialOrder () where
   leq _ _ = True

instance SplitLattice () where
   split = Set.singleton 

-- | Domain instance for Unit
instance Domain () () where 
   inject = id 

