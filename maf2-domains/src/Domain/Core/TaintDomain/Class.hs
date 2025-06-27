module Domain.Core.TaintDomain.Class (
    TaintDomain(..)
) where

import Lattice (Joinable, TopLifted)
import Domain.Class 
import Domain.Core.BoolDomain.Class (BoolDomain(..))
import Data.Set (Set)
import Data.Set as Set 
import Lattice.TopLiftedLattice (TopLifted(..))

class (Joinable t, Eq t) => TaintDomain t where
    emptyTaint :: t
    isTainted  :: BoolDomain b => t -> b

instance Ord a => TaintDomain (Set a) where
    emptyTaint = Set.empty
    isTainted s
        | Set.null s = false
        | otherwise  = boolTop  

instance TaintDomain t => TaintDomain (TopLifted t) where
    emptyTaint          = Value emptyTaint
    isTainted Top       = boolTop
    isTainted (Value v) = isTainted v  
    