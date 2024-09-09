{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module Analysis.Python.Common (
  ObjAdr(..), 
  allocPtr,
  allocCst,
  PyVal(..), 
  ObjAddrSet,
  constant, 
  PyEnv, 
  PyClo(..),
  PyDomain,
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
import Lattice.Tainted

--
-- Addresses
--

data ObjAdr = PtrAdr PyLoc
            | FrmAdr PyLoc 
            | PrmAdr PyConstant
  deriving (Eq, Ord)

allocPtr :: PyLoc -> ObjAdr
allocPtr = PtrAdr

allocCst :: PyConstant -> ObjAdr
allocCst = PrmAdr 

instance Show ObjAdr where 
  show (PtrAdr s) = "[" ++ show s ++ "]" 
  show (PrmAdr c) = "[" ++ show c ++ "]"
  show (FrmAdr c) = "[frame at " ++ show c ++ "]"

--
-- Values 
--

class (Show v, Ord v, SplitLattice v) => PyVal v where
  injectAdr   :: ObjAdr -> v
  addrs       :: v -> Set ObjAdr 

constant :: PyVal v => PyConstant -> v
constant = injectAdr . allocCst  

-- simple PyVal 

newtype ObjAddrSet = ObjAddrSet (Set ObjAdr)
  deriving (Eq, Ord, Joinable, PartialOrder, BottomLattice)

instance Show ObjAddrSet where
  show = show . Set.toList . addrs 

instance PyVal ObjAddrSet where
  injectAdr = ObjAddrSet . Set.singleton
  addrs (ObjAddrSet s) = s 

type PyEnv = Map String ObjAdr 
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
                         Abs obj LsiPrm ~ CPList vlu,
                         Abs obj LstPrm ~ CPList vlu, 
                         Abs obj TupPrm ~ CPList vlu,
                         Abs obj StrPrm ~ CP String)
