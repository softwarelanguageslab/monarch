-- Trivial lattice instances for the identity functor
module Lattice.Identity where

import Lattice.Class 
import Data.Functor



instance (Joinable a) => Joinable (Identity a) where
   join a b = Identity $ join (runIdentity a) (runIdentity b)

instance (PartialOrder a) => PartialOrder (Identity a) where   
   leq a b = leq (runIdentity a) (runIdentity b)

instance TopLattice a => TopLattice (Identity a) where
   top = Identity top

instance BottomLattice a => BottomLattice (Identity a) where   
   bottom = Identity bottom

instance WidenLattice a => WidenLattice (Identity a) where  
   widen a b = Identity . widen (runIdentity a) (runIdentity b)

instance Meetable a => Meetable (Identity a) where 
   meet a b = Identity $ meet (runIdentity a) (runIdentity b)



