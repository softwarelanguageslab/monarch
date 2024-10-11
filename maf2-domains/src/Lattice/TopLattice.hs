-- | Lattice that represents any value
module Lattice.TopLattice(Top(..)) where 

import Lattice.Class
import Lattice.Equal (EqualLattice(..))
import Domain.Core.BoolDomain
import Domain.Class

data Top = Top
   deriving (Ord, Eq, Show)

instance Joinable Top where   
   join _ _ = Top

instance Meetable Top where   
   meet _ _ = Top 

instance EqualLattice Top where 
   eql _ _ = boolTop

instance PartialOrder Top where  
   subsumes _ = const True

instance TopLattice Top where    
   top = Top

instance Domain Top a where 
   inject = const Top
