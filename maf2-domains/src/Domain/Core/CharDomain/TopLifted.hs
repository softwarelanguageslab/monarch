{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.CharDomain.TopLifted() where

import Domain.Core.BoolDomain.Class (boolTop)
import Domain.Core.CharDomain.Class
import Lattice.Class
import Lattice.TopLiftedLattice

instance (CharLattice a int, TopLattice int) => CharLattice (TopLifted a) int where
   downcase = traverse (downcase @_ @int)
   upcase = traverse (upcase @_ @int)
   charToInt = fmap (fromTL top) . traverse charToInt
   isLower = fmap (fromTL boolTop) . traverse (isLower @_ @int)
   isUpper = fmap (fromTL boolTop) . traverse (isUpper @_ @int)
   charEq a = fmap (fromTL boolTop) . sequenceA . liftA2 (charEq @_ @int) a
   charLt a = fmap (fromTL boolTop) . sequenceA . liftA2 (charLt @_ @int) a
   charEqCI a = fmap (fromTL boolTop) . sequenceA . liftA2 (charEqCI @_ @int) a
   charLtCI a = fmap (fromTL  boolTop) . sequenceA . liftA2 (charLtCI @_ @int) a

