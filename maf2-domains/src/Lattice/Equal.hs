{-# LANGUAGE UndecidableInstances #-}

module Lattice.Equal(EqualLattice(..), is) where

import Domain.Core.BoolDomain.Class
import Domain.Class
import Lattice.Class

------------------------------------------------------------
--- EqualLattice
------------------------------------------------------------

class EqualLattice v where 
   eql :: (BottomLattice b, BoolDomain b) => v -> v -> b
   {-# MINIMAL eql #-}

is  :: (EqualLattice v, BottomLattice b, BoolDomain b, Domain v c) => v -> c -> b
is v = eql v . inject 

instance {-# OVERLAPPABLE #-} (BottomLattice a, Eq a, Meetable a) => EqualLattice a where   
   eql a b 
      | a == bottom || b == bottom = bottom
      | a `meet` b == bottom = inject False
      | otherwise = boolTop
