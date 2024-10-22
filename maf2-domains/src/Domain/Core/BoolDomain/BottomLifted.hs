{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.BoolDomain.BottomLifted where 

import Prelude hiding (not, or, and )
import Lattice.BottomLiftedLattice
import Domain.Core.BoolDomain.Class
import Control.Applicative (Applicative(liftA2))

instance BoolDomain b => BoolDomain (BottomLifted b) where 
    not = fmap not
    or  = liftA2 or 
    and = liftA2 and 