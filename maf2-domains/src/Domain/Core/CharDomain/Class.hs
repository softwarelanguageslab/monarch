module Domain.Core.CharDomain.Class (CharDomain(..)) where

import Lattice 
import Control.Monad.AbstractM
import Domain.Core.BoolDomain

import Data.Kind 

class (Domain c Char) => CharDomain c where
   type IntC c :: Type

   downcase :: AbstractM m => c -> m c
   upcase :: AbstractM m => c -> m c
   charToInt :: AbstractM m => c -> m (IntC c)
   isLower :: (AbstractM m, BoolDomain b) => c -> m b
   isUpper :: (AbstractM m, BoolDomain b) => c -> m b
   charEq :: (AbstractM m, BoolDomain b) => c -> c -> m b
   charLt :: (AbstractM m, BoolDomain b) => c -> c -> m b
   charEqCI :: (AbstractM m, BoolDomain b) => c -> c -> m b
   charLtCI :: (AbstractM m, BoolDomain b) => c -> c -> m b