{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Python.Common (
  ObjAdr(..), 
  allocPtr,
  allocCst,
  PyVal(..), 
  ObjAddrSet,
  constant, 
  addrs,
  PyEnv, 
  PyClo(..),
  PyDomain,
  typeVal,
  new',
  new'',
  from,
  from',
) where

import Lattice hiding (empty)
import Domain.Python.World
import Domain.Python.Syntax 

import Prelude hiding (True, False, all)
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set 
import Domain.Python.Objects
import Domain.Core.SeqDomain (CPList)
import Lattice.Tainted (Tainted(..))
import Domain.Core.TaintDomain
import Data.Singletons (SingI, sing)
import Domain.Class (Domain)
import qualified Domain.Class as Domain

--
-- Addresses
--

data ObjAdr = PtrAdr PyLoc [PyLoc]
            | PrmAdr PyConstant
  deriving (Eq, Ord)

allocPtr :: PyLoc -> [PyLoc] -> ObjAdr 
allocPtr = PtrAdr

allocCst :: PyConstant -> ObjAdr 
allocCst = PrmAdr 

instance Show ObjAdr where 
  show (PtrAdr s _) = "["           ++ show s ++ "]" 
  show (PrmAdr c)   = "["           ++ show c ++ "]"

--
-- Values 
--

class (Show v, Ord v, SplitLattice v) => PyVal v where
  injectAdr :: ObjAdr -> v

constant :: PyVal v => PyConstant -> v
constant = injectAdr . allocCst  

-- simple PyVal 

newtype ObjAddrSet = ObjAddrSet { addrs :: Set ObjAdr }
  deriving (Eq, Ord, Joinable, PartialOrder, BottomLattice)

instance Show ObjAddrSet where
  show (ObjAddrSet s) = show (Set.toList s)

instance PyVal ObjAddrSet where
  injectAdr = ObjAddrSet . Set.singleton

-- tainted PyVal

instance (PyVal v, TaintDomain t, Ord t) => PyVal (Tainted t v) where
  injectAdr = pure . injectAdr

-- environments

type PyEnv = Map String ObjAdr 

-- closures 

data PyClo = PyClo PyLoc [PyPar] PyStm [String] PyEnv
  deriving (Eq, Ord)

instance Show PyClo where
  show (PyClo loc _ _ _ _) = "<func@" ++ show loc ++ ">" 

--
-- Python objects with the common objects/values instantiated
--

type PyDomain obj vlu = (PyVal vlu,
                         PyObj obj,
                         Ref obj ~ vlu,
                         Adr obj ~ ObjAdr,
                         Clo obj ~ PyClo, 
                         Abs obj LstPrm ~ CPList vlu, 
                         Abs obj TupPrm ~ CPList vlu,
                         Abs obj StrPrm ~ CP String,
                         Abs obj DfrPrm ~ (),
                         Abs obj SrsPrm ~ ())

typeVal :: PyVal vlu => PyType -> vlu
typeVal = constant . TypeObject

new' :: PyDomain obj vlu => PyType -> obj
new' = new . typeVal

new'' :: PyDomain obj vlu => PyType -> [(String, Ref obj)] -> obj 
new'' typ attrs = setAttrs attrs $ new' typ 

-- | Convenience function to construct a Python object immediately from primitive abstract value
from :: forall (k :: PyPrmKey) obj vlu . (PyDomain obj vlu, SingI k) => Abs obj k -> obj
from v = set @k v (new cls)
  where cls = constant $ TypeObject $ classFor $ sing @k

-- | Convenience function to construct a Python object immediately from primitive concrete value
from' :: forall (k :: PyPrmKey) obj v vlu . (PyDomain obj vlu, Domain (Abs obj k) v, SingI k) => v -> obj
from' = from @k . Domain.inject