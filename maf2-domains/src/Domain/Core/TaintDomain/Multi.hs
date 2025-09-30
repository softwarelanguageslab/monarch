module Domain.Core.TaintDomain.Multi where

import Domain.Core.TaintDomain.Class
import Domain.Core.BoolDomain.ConstantPropagation 
import Domain.Core.BoolDomain.Class
import Domain.Class 
import Lattice
import qualified Lattice.ReversePowerSetLattice as RP

import Data.Set (Set)
import qualified Data.Set as Set 

-- simplest taint lattice
newtype MultiTaint a = MultiTaint (ReversePowerSet a, Set a)
    deriving (Eq, Joinable, PartialOrder)

instance (Eq a, Ord a) => TaintDomain (MultiTaint a) where
    emptyTaint = MultiTaint (RP.empty, Set.empty)
    isTainted (MultiTaint (lower, upper))
        | Set.null upper    = inject False
        | lower /= RP.empty = inject True 
        | otherwise         = boolTop  

