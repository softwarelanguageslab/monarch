module Domain.Scheme.CPDomain(CPValue, CPPaiAdr(..), CPVecAdr(..), CPStrAdr(..)) where

import GHC.Generics (Generic)
import Data.Map
import Domain.Scheme
import Domain
import Domain.ConstantPropagation

type CPValue ptr var exp = ModularSchemeValue
                                  (CP Double)
                                  (CP Integer)
                                  (CP Char)
                                  (CP Bool)
                                  (CPPaiAdr ptr var exp)
                                  (CPVecAdr ptr var exp)
                                  (CPStrAdr ptr var exp)
                                  exp
                                  (Map String var)

newtype CPPaiAdr ptr var exp = CPPaiAdr { paiAdr :: ptr } deriving (Show, Eq, Ord, Generic)
-- instance (Hashable ptr) => Hashable (CPPaiAdr ptr var)
instance (Show ptr,  Ord ptr, Ord var, Ord exp) => Address (CPPaiAdr ptr var exp) where
   type Vlu (CPPaiAdr ptr var exp) = SimplePair (CPValue ptr var exp)

-- instance (Hashable ptr) => Hashable (CPVecAdr ptr var)
newtype CPVecAdr ptr var exp = CPVecAdr { vecAdr :: ptr } deriving (Show, Eq, Ord, Generic)
instance (Show ptr, Show var, Ord ptr, Show exp) => Address (CPVecAdr ptr var exp) where
   type Vlu (CPVecAdr ptr var exp) = PIVector (CPValue ptr var exp) (CPValue ptr var exp)

-- instance (Hashable ptr) => Hashable (CPStrAdr ptr var)
newtype CPStrAdr ptr var exp = CPStrAdr { strAddr :: ptr } deriving (Show, Eq, Ord, Generic)
instance (Show ptr, Show var, Ord ptr, Ord var, Ord exp, Show exp) => Address (CPStrAdr ptr var exp) where
   type Vlu (CPStrAdr ptr var exp) = SchemeString (CP String) (CPValue ptr var exp)

-- |  The addresses that are expected to be in the store when this type of domain is used
-- type StoreAdrs ptr var exp = Associate Vlu '[var, CPPaiAdr ptr var exp, CPVecAdr ptr var exp, CPStrAdr ptr var exp]
