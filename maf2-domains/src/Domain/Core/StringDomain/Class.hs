module Domain.Core.StringDomain.Class where

import Lattice 
import Domain.Class 
import Domain.Core.BoolDomain.Class
import Control.Monad.AbstractM

import Data.Kind 

class (Joinable s, Domain s String) => StringDomain s where
   type IntS s :: Type
   type ChaS s :: Type
   length :: AbstractM m => s -> m (IntS s)
   append :: AbstractM m => s -> s -> m s
   ref :: AbstractM m => s -> IntS s -> m (ChaS s)
   set :: AbstractM m => s -> IntS s -> ChaS s -> m s
   stringLt :: AbstractM m => s -> s -> m (BoolFor s)
   toNumber :: AbstractM m => s -> m (IntS s)
   makeString :: AbstractM m => IntS s -> ChaS s -> m s
   topString  :: s
