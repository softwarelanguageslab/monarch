{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Python.Common (
  VarAdr, 
  ObjAdr, 
  PyVal, 
  addrs, 
  injectAdr,
  constant, 
  PyEnv, 
  PyClo
) where

import Lattice
import Analysis.Python.Syntax 
import Analysis.Python.Infrastructure

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

--
-- Values 
--

newtype PyVal = PyVal { addrs :: Set ObjAdr }
  deriving (Eq, Joinable, JoinLattice)

injectAdr :: ObjAdr -> PyVal
injectAdr = PyVal . Set.singleton

constant :: PyConstant -> PyVal
constant = injectAdr . PrmAdr 

type PyEnv = Map String VarAdr
type PyClo = ([PyPar], PyStm, PyEnv)