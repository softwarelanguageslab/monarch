{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module Analysis.Python.Common (
  VarAdr(..), 
  ObjAdr, 
  allocVar,
  allocPtr,
  allocCst,
  PyVal, 
  addrs, 
  injectAdr,
  constant, 
  PyEnv, 
  PyClo,
  PyObj',
) where

import Lattice
import Domain.Python.World
import Domain.Python.Syntax 

import Prelude hiding (True, False, all)
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set 
import Domain.Python.Objects
import Domain.Core.SeqDomain (CPList)

--
-- Addresses
--

newtype VarAdr = VarAdr String
  deriving (Eq, Ord, Show)

data ObjAdr = PtrAdr PyLoc
            | PrmAdr PyConstant
  deriving (Eq, Ord, Show)

allocVar :: PyIde -> VarAdr
allocVar = VarAdr . ideName . lexIde

allocPtr :: PyLoc -> ObjAdr
allocPtr = PtrAdr

allocCst :: PyConstant -> ObjAdr
allocCst = PrmAdr 

--
-- Values 
--

newtype PyVal = PyVal { addrs :: Set ObjAdr }
  deriving (Eq, Ord, Show, Joinable, JoinLattice)

injectAdr :: ObjAdr -> PyVal
injectAdr = PyVal . Set.singleton

constant :: PyConstant -> PyVal
constant = injectAdr . allocCst  

type PyEnv = Map String VarAdr
type PyClo = ([PyPar], PyStm, PyEnv)

--
-- Python objects with the common objects/values instantiated
--

type PyObj' obj = (PyObj obj,
                   Ref obj ~ PyVal,
                   Adr obj ~ ObjAdr,
                   Clo obj ~ PyClo, 
                   Abs obj TupPrm ~ CPList PyVal)