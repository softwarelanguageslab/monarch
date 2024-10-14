{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.BoolDomain.ConstantPropagation (bool) where 

import Lattice.Class
import Lattice.ConstantPropagationLattice
import Domain.Class 
import Domain.Core.BoolDomain.Class 

instance BoolDomain (CP Bool) where
   isTrue Top = True
   isTrue Bottom = False
   isTrue (Constant b) = b
   isFalse Top = True
   isFalse Bottom = False
   isFalse (Constant b) = Prelude.not b
   not = fmap Prelude.not
   boolTop = Top

-- | Convert from (CP Bool) to another boolean domain
bool :: (BottomLattice b, BoolDomain b) => CP Bool -> b
bool Bottom = bottom
bool (Constant b) = inject b
bool Top = boolTop 
