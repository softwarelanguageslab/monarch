{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}

module Domain.Core.BoolDomain.Class (
   BoolLattice(..),
   BoolDomain, 
   true,
   false,
   boolTop,
   isDefinitelyTrue,
) where 

import Lattice.Class
import Domain.Class 

------------------------------------------------------------
-- BoolDomain
------------------------------------------------------------

type BoolDomain b = (BoolLattice b, Domain b Bool)

true :: Domain b Bool => b
true = inject True 

false :: Domain b Bool => b
false = inject False 

boolTop :: Domain b Bool => b
boolTop = true `join` false

isDefinitelyTrue :: BoolLattice b => b -> Bool
isDefinitelyTrue b =
   isTrue b && Prelude.not (isFalse b)

class Joinable b => BoolLattice b where
   isTrue ::  b -> Bool
   isFalse :: b -> Bool
   not :: b -> b
   and :: b -> b -> b
   or  :: b -> b -> b
