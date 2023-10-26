module Domain.Python.CPDomain(CPValue) where

import Domain
import Domain.Python
import Domain.Python.ClassDomain
import Domain.ConstantPropagation
import Data.Map
import Data.Kind
import Data.Typeable

-- | Constant propagation Python value
type CPValue adr (a :: Type) =
   ModularPythonValue (CP Integer) (CP Bool) a (ObjAdr adr a) (CP String) (Map String adr) 

-- | Values bound to variables
newtype VarAdr adr (a :: Type) = VarAdr adr deriving (Show, Eq, Ord)
instance (Show adr, Ord adr, Typeable adr, Typeable a) => Address (VarAdr adr a) where 
   type Vlu (VarAdr adr a) = CPValue adr a

-- | Addresses pointing to objects
newtype ObjAdr adr (a :: Type) = ObjAdr adr deriving (Show, Eq, Ord)
instance (Show adr, Ord adr, Typeable adr, Typeable a) => Address (ObjAdr adr a) where 
   type Vlu (ObjAdr adr a) = AbstractObject (ObjAdr adr a) (CP String) (CPValue adr a)
