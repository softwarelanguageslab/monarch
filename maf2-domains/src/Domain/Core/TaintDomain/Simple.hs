module Domain.Core.TaintDomain.Simple where

import Domain.Core.TaintDomain.Class
import Domain.Core.BoolDomain.Class
import Domain.Class 
import Lattice

-- simplest taint lattice
data SimpleTaint = Untainted | MaybeTainted 
    deriving (Eq, Ord, Show)

instance Joinable SimpleTaint where
    join Untainted Untainted = Untainted
    join _ _ = MaybeTainted 
instance TopLattice SimpleTaint where
    top = MaybeTainted

-- Untainted < Tainted
instance PartialOrder SimpleTaint where
    leq Untainted _ = True
    leq _ MaybeTainted = True 
    leq _ _ = False 

instance TaintDomain SimpleTaint where
    emptyTaint = Untainted
    isTainted Untainted     = inject False
    isTainted MaybeTainted  = boolTop  