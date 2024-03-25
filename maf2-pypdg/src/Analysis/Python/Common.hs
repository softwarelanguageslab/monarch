{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

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
  PyClo
) where

import Lattice
import Domain.Python.World
import Analysis.Python.Syntax 

import Prelude hiding (True, False, all)
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set 

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