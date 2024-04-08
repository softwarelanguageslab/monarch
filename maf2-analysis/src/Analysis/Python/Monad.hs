{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module Analysis.Python.Monad (
  PyControl(..),
  PyCache(..),
  PyControlEsc(..),
  PyM,
  pyAlloc,
  pyDeref,
  pyDeref',
) where

import Lattice
import Domain.Class 
import Control.Monad.Join
import Control.Monad.DomainError
import Analysis.Python.Common 
import Analysis.Monad
import Domain.Python.Syntax hiding (Continue, Break, Return)
import Domain.Python.World 

import Prelude hiding (lookup, exp, break)
import Control.Monad.Layer

--
-- The Python monad 
--

class Monad m => PyCache m where
  callBdy :: PyStm -> m PyVal
  callWhi :: PyExp -> PyStm -> m PyVal 

class (Monad m, MonadEscape m) => PyControl m where
  returnWith :: PyVal -> m ()
  break :: m ()
  continue :: m () 

data PyControlEsc = Return PyVal 
                  | Break 
                  | Continue 
  deriving (Eq, Ord)

instance (Monad m, MonadEscape m, Domain (Esc m) PyControlEsc) => PyControl m where 
  returnWith = escape . Return 
  break = escape Break
  continue = escape Continue 
  
type PyM m obj = (PyObj' obj,
                  MonadJoin m,
                  PyControl m,
                  Domain (Esc m) PyError,
                  Domain (Esc m) DomainError,
                  EnvM m VarAdr PyEnv, 
                  AllocM m PyLoc ObjAdr,
                  StoreM m ObjAdr obj,
                  StoreM m VarAdr PyVal,
                  PyCache m)

pyDeref :: (JoinLattice a, PyM m obj) => (ObjAdr -> obj -> m a) -> PyVal -> m a
pyDeref f = deref f . addrs 

pyDeref' :: PyM m obj => PyVal -> m obj
pyDeref' = deref' . addrs 

pyAlloc :: PyM m obj => PyLoc -> obj -> m PyVal
pyAlloc loc = fmap injectAdr . store loc