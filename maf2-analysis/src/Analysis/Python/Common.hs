{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module Analysis.Python.Common (
  FrmLoc(..),
  ObjAdr(..), 
  allocPtr,
  allocFrm, 
  allocCst,
  PyVal, 
  addrs, 
  injectAdr,
  constant, 
  PyEnv, 
  PyClo(..),
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

data ObjAdr = PtrAdr PyLoc
            | FrmAdr PyLoc 
            | PrmAdr PyConstant
  deriving (Eq, Ord)

newtype FrmLoc = FrmLoc PyLoc
  deriving (Eq, Ord, Show)

allocPtr :: PyLoc -> ObjAdr
allocPtr = PtrAdr

allocFrm :: FrmLoc -> ObjAdr
allocFrm (FrmLoc loc) = FrmAdr loc 

allocCst :: PyConstant -> ObjAdr
allocCst = PrmAdr 

instance Show ObjAdr where 
  show (PtrAdr s) = "[" ++ show s ++ "]" 
  show (PrmAdr c) = "[" ++ show c ++ "]"
  show (FrmAdr c) = "[frame at " ++ show c ++ "]"

--
-- Values 
--

newtype PyVal = PyVal { addrs :: Set ObjAdr }
  deriving (Eq, Ord, Joinable, JoinLattice)

instance Show PyVal where
  show = show . Set.toList .addrs 

injectAdr :: ObjAdr -> PyVal
injectAdr = PyVal . Set.singleton

constant :: PyConstant -> PyVal
constant = injectAdr . allocCst  

type PyEnv = Map String ObjAdr 
data PyClo = PyClo PyLoc [PyPar] PyStm [String] PyEnv
  deriving (Eq, Ord)

instance Show PyClo where
  show (PyClo loc _ _ _ _) = "<func@" ++ show loc ++ ">" 

--
-- Python objects with the common objects/values instantiated
--

type PyObj' obj = (PyObj obj,
                   Ref obj ~ PyVal,
                   Adr obj ~ ObjAdr,
                   Clo obj ~ PyClo, 
                   Abs obj TupPrm ~ CPList PyVal)