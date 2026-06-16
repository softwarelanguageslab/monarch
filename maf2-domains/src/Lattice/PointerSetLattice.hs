module Lattice.PointerSetLattice(PointerSet(..)) where

import Lattice.SetLattice ()
import Lattice.Class
import Lattice.Trace
import Lattice.Equal
import Data.Set (Set)

-- A pointer-set is equivalent to a regular set, but returns its set of 
-- address when traced.

newtype PointerSet a = PointerSet { getPointerSet :: Set a } deriving (Meetable, Joinable, PartialOrder, EqualLattice, Show, Eq, Ord)

instance (Ord a) => Trace a (PointerSet a) where
  trace = getPointerSet


-- A casted pointer-set is equivalent to a pointer-set except that the elements of the set are also expected to implement "trace" with the expected address type.

newtype CastedPointerSet a = CastedPointerSet { getCastedPointerSet :: Set a } deriving (Meetable, PartialOrder, EqualLattice, Show, Eq, Ord)

instance (Trace adr a) => Trace adr (CastedPointerSet a) where 
    trace = foldMap trace . getCastedPointerSet
