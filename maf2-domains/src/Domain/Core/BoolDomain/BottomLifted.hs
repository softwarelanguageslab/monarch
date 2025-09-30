{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.BoolDomain.BottomLifted where 

import Prelude hiding (not, or, and )
import Lattice.BottomLiftedLattice
import Domain.Core.BoolDomain.Class

instance BoolLattice b => BoolLattice (BottomLifted b) where 
    isTrue Bottom = False
    isTrue (Value v) = isTrue v
    isFalse Bottom = False
    isFalse (Value v) = isFalse v 
    not = fmap not
    or  = liftA2 or 
    and = liftA2 and 