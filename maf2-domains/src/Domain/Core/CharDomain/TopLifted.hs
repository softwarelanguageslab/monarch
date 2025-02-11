{-# LANGUAGE UndecidableInstances #-}
module Domain.Core.CharDomain.TopLifted() where 

import Domain.Core.BoolDomain.Class (boolTop)
import Domain.Core.CharDomain.Class 
import Lattice.Class
import Lattice.TopLiftedLattice

instance (CharDomain a, TopLattice (IntC a)) => CharDomain (TopLifted a) where 
   type IntC (TopLifted a) = IntC a

   downcase = sequenceA . fmap downcase
   upcase = sequenceA . fmap upcase
   charToInt = fmap (fromTL top) . sequenceA . fmap charToInt
   isLower = fmap (fromTL boolTop) . sequenceA .  fmap isLower
   isUpper = fmap (fromTL boolTop) . sequenceA .  fmap isUpper
   charEq a = fmap (fromTL boolTop) . sequenceA . liftA2 charEq a
   charLt a = fmap (fromTL boolTop) . sequenceA . liftA2 charLt a
   charEqCI a = fmap (fromTL boolTop) . sequenceA . liftA2 charEqCI a
   charLtCI a = fmap (fromTL  boolTop) . sequenceA . liftA2 charLtCI a

