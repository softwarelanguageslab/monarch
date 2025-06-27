module Domain.Core.TaintDomain.Single where

import Domain.Core.TaintDomain.Class
import Domain.Core.BoolDomain.ConstantPropagation 
import Domain.Core.BoolDomain.Class
import Domain.Class 
import Lattice

-- simplest taint lattice
newtype SingleTaint = SingleTaint (CP Bool)
    deriving (Eq, Ord, Show, Joinable, PartialOrder, TopLattice)

instance TaintDomain SingleTaint where
    emptyTaint = SingleTaint (Constant False)
    isTainted (SingleTaint t) = bool t 