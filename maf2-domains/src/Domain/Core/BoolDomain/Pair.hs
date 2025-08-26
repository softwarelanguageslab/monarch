{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.BoolDomain.Pair where
import Domain.Core.BoolDomain.Class
import Lattice 
import Prelude hiding (not, or, and)

instance (BoolLattice a, BoolLattice b) => BoolLattice (a, b) where
    isTrue (a, b) = isTrue a && isTrue b    -- isTrue indicates whether it *may* be true
    isFalse (a, b) = isFalse a && isFalse b 
    not (a, b) = (not a, not b)
    or (a1, b1) (a2, b2) = (or a1 a2, or b1 b2)
    and (a1, b1) (a2, b2) = (and a1 a2, and b1 b2)