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
  emptyObjAddrSet,
  insertObjAddr
) where

import Lattice hiding (empty, Top)
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
import Domain (CPDictionary)
import Lattice.BottomLiftedLattice (BottomLifted)
import Lattice.TopLattice
import Data.TypeLevel.HMap (BindingFrom, Sigma((:&:)), Assoc)
import Data.TypeLevel.AssocList (LookupIn)

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
  show (PtrAdr s c) = "[" ++ show s ++ " with context " ++ show c ++ "]" 
  show (PrmAdr c)   = "[" ++ show c ++ "]"

--
-- Values 
--

class (Show v, Ord v, Lattice v, SplitLattice v) => PyVal v where
  injectAdr :: ObjAdr -> v
  adrs :: v -> Set ObjAdr

constant :: PyVal v => PyConstant -> v
constant = injectAdr . allocCst  

typeVal :: PyVal vlu => PyType -> vlu
typeVal = constant . TypeObject

-- simple PyVal 

newtype ObjAddrSet = ObjAddrSet { addrs :: Set ObjAdr }
  deriving (Eq, Ord, Joinable, PartialOrder, BottomLattice)

emptyObjAddrSet :: ObjAddrSet
emptyObjAddrSet = ObjAddrSet Set.empty

insertObjAddr :: ObjAdr -> ObjAddrSet -> ObjAddrSet 
insertObjAddr a (ObjAddrSet s) = ObjAddrSet $ Set.insert a s

instance Show ObjAddrSet where
  show (ObjAddrSet s) = show (Set.toList s)

instance PyVal ObjAddrSet where
  injectAdr = ObjAddrSet . Set.singleton
  adrs = addrs

-- tainted PyVal

instance (PyVal v, TaintDomain t, Lattice t, Ord t) => PyVal (Tainted t v) where
  injectAdr = pure . injectAdr
  adrs (Tainted s _) = adrs s

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
                         Abs obj DctPrm ~ CPDictionary String vlu, 
                         Abs obj DfrPrm ~ CP Bool,
                         Abs obj SrsPrm ~ CP Bool)

new'' :: PyDomain obj vlu => vlu -> [(String, vlu)] -> [BindingFrom (PyPrmMap obj)] -> obj
new'' cls attrs = new $ (attrStr ClassAttr, cls):attrs 

new' :: PyDomain obj vlu => PyType -> [(String, vlu)] -> [BindingFrom (PyPrmMap obj)] -> obj
new' = new'' . typeVal

-- | Convenience function to construct a Python object immediately from primitive abstract value
from :: forall (k :: PyPrmKey) obj vlu . (PyDomain obj vlu, SingI k) => Abs obj k -> obj
from v = new' cls [] [sing @k :&: v]
  where cls = classFor (sing @k)

-- | Convenience function to construct a Python object immediately from primitive concrete value
from' :: forall (k :: PyPrmKey) obj v vlu . (PyDomain obj vlu, Domain (Abs obj k) v, SingI k) => v -> obj
from' = from @k . Domain.inject
