{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module Analysis.Python.Monad (
  PyBdy(..),
  PyM,
  pyAlloc,
  pyDeref,
  pyDeref',
  break,
  continue,
  returnWith,
  throwException
) where

import Lattice
import Domain.Class 
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.Escape
import Analysis.Python.Common 
import Analysis.Monad
import Domain.Python.Syntax hiding (Continue, Break, Return)
import Domain.Python.World 
import Analysis.Python.Escape 

import Prelude hiding (lookup, exp, break)
import Analysis.Monad.ComponentTracking (ComponentTrackingM)

--
-- The Python monad 
--
  
-- | Python components
data PyBdy = Main PyPrg
           | FuncBdy PyLoc PyStm
           | LoopBdy PyLoc PyExp PyStm
  deriving (Eq, Ord, Show)

type PyM m obj = (PyObj' obj,
                  MonadJoin m,
                  MonadCache m,
                  MapM (Key m PyBdy) (Val m PyVal) m, 
                  ComponentTrackingM m (Key m PyBdy),
                  MonadEscape m,
                  PyEscape (Esc m),
                  Domain (Esc m) PyError,
                  Domain (Esc m) DomainError,
                  SplitLattice (Esc m),
                  EnvM m ObjAdr PyEnv, 
                  AllocM m PyLoc ObjAdr,
                  StoreM m ObjAdr obj)

pyDeref :: (Lattice a, PyM m obj) => (ObjAdr -> obj -> m a) -> PyVal -> m a
pyDeref f = deref f . addrs 

pyDeref' :: PyM m obj => PyVal -> m obj
pyDeref' = deref' . addrs 

pyAlloc :: PyM m obj => PyLoc -> obj -> m PyVal
pyAlloc loc = fmap injectAdr . store loc

break :: PyM pyM obj => pyM ()
break = escape Break

continue :: PyM pyM obj => pyM ()
continue = escape Continue

returnWith :: PyM pyM obj => PyVal -> pyM ()
returnWith = escape . Return 

throwException :: PyM pyM obj => PyVal -> pyM ()
throwException = escape . Exception
