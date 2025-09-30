{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.BoolDomain.ConstantPropagation (bool) where 

import Lattice.Class
import Lattice.ConstantPropagationLattice
import Domain.Class 
import Domain.Core.BoolDomain.Class 
import Control.Applicative (Applicative(..))

instance BoolLattice (CP Bool) where
   isTrue Top = True
   isTrue (Constant b) = b
   isFalse Top = True
   isFalse (Constant b) = Prelude.not b
   not = fmap Prelude.not
   and (Constant False) _ = Constant False
   and _ (Constant False) = Constant False 
   and a b = liftA2 (&&) a b
   or (Constant True) _ = Constant True
   or _ (Constant True) = Constant True 
   or a b = liftA2 (||) a b

-- | Convert from (CP Bool) to another boolean domain
bool :: (Domain b Bool) => CP Bool -> b
bool (Constant b) = inject b
bool Top = boolTop 
