{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.BoolDomain.ConstantPropagation (bool) where 

import Lattice.Class
import Lattice.ConstantPropagationLattice
import Domain.Class 
import Domain.Core.BoolDomain.Class 
import Control.Applicative (Applicative(..))

instance BoolDomain (CP Bool) where
   isTrue Top = True
   isTrue (Constant b) = b
   isFalse Top = True
   isFalse (Constant b) = Prelude.not b
   not = fmap Prelude.not
   and = liftA2 (&&)
   or = liftA2 (||)
   boolTop = Top

-- | Convert from (CP Bool) to another boolean domain
bool :: (BoolDomain b) => CP Bool -> b
bool (Constant b) = inject b
bool Top = boolTop 
