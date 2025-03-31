module Lattice.PointerSetLattice(PointerSet(..)) where

import Lattice.SetLattice ()
import Lattice.Class
import Lattice.Trace
import Lattice.Equal
import Data.Set (Set)
import qualified Data.Set as Set


newtype PointerSet a = PointerSet { getPointerSet :: Set a } deriving (Meetable, Joinable, PartialOrder, EqualLattice, Show, Eq, Ord)

instance (Ord a) => Trace a (PointerSet a) where
  trace = getPointerSet


