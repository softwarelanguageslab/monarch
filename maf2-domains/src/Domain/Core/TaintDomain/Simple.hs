module Domain.Core.TaintDomain.Simple where

import Domain.Core.TaintDomain.Class
import Lattice

data SimpleTaint = Untainted | MaybeTainted 
    deriving (Eq, Ord, Show)

instance Joinable SimpleTaint where
    join Untainted Untainted = Untainted
    join _ _ = MaybeTainted 

instance TopLattice SimpleTaint where
    top = MaybeTainted

instance PartialOrder SimpleTaint where
    leq Untainted _ = True
    leq MaybeTainted MaybeTainted = True 
    leq MaybeTainted _ = False 

instance TaintDomain SimpleTaint where 
    empty = Untainted
    addTaints = join 

