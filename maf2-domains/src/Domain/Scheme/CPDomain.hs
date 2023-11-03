module Domain.Scheme.CPDomain(CPValue, CPPaiAdr(..), CPVecAdr(..), CPStrAdr(..)) where

import GHC.Generics (Generic)
import Data.Map
import Domain.Scheme
import Domain
import Domain.ConstantPropagation
import Data.Dynamic
import Data.Hashable

type CPValue ptr var exp = ModularSchemeValue
                                  (CP Double)
                                  (CP Integer)
                                  (CP Char)
                                  (CP Bool)
                                  (CPPaiAdr ptr var exp)
                                  (CPVecAdr ptr var exp)
                                  (CPStrAdr ptr var exp)
                                  var
                                  exp
                                  (Map String var)

newtype CPPaiAdr ptr var exp = CPPaiAdr { paiAdr :: ptr } deriving (Show, Eq, Ord, Generic)
instance (Hashable ptr, Hashable exp) => Hashable (CPPaiAdr ptr var exp)
instance (Show ptr,  Ord ptr, Ord var, Ord exp, Typeable ptr, Typeable var, Typeable exp) => Address (CPPaiAdr ptr var exp) where
   type Vlu (CPPaiAdr ptr var exp) = SimplePair (CPValue ptr var exp)

instance (Hashable ptr, Hashable exp) => Hashable (CPVecAdr ptr var exp)
newtype CPVecAdr ptr var exp = CPVecAdr { vecAdr :: ptr } deriving (Show, Eq, Ord, Generic)
instance (Show ptr, Show var, Ord ptr, Show exp, Typeable ptr, Typeable var, Typeable exp) => Address (CPVecAdr ptr var exp) where
   type Vlu (CPVecAdr ptr var exp) = PIVector (CPValue ptr var exp) (CPValue ptr var exp)

instance (Hashable ptr, Hashable exp) => Hashable (CPStrAdr ptr var exp)
newtype CPStrAdr ptr var exp = CPStrAdr { strAddr :: ptr } deriving (Show, Eq, Ord, Generic)
instance (Show ptr, Show var, Ord ptr, Ord var, Ord exp, Show exp, Typeable ptr, Typeable var, Typeable exp) => Address (CPStrAdr ptr var exp) where
   type Vlu (CPStrAdr ptr var exp) = SchemeString (CP String) (CPValue ptr var exp)

