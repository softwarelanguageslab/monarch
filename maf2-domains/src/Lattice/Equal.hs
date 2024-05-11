{-# LANGUAGE UndecidableInstances #-}
module Lattice.Equal(EqualLattice(..)) where

import Domain.Core.BoolDomain.Class
import Domain.Class
import Lattice.Class

------------------------------------------------------------
--- EqualLattice
------------------------------------------------------------

class EqualLattice v where 
   eql :: BoolDomain b => v -> v -> b
   is  :: (BoolDomain b, Domain v c) => v -> c -> b
   is v = eql v . inject 

instance {-# OVERLAPPABLE #-} (JoinLattice a, Meetable a) => EqualLattice a where   
   eql a b 
      | a == bottom || b == bottom = bottom
      | a `meet` b == bottom = inject False
      | otherwise = boolTop