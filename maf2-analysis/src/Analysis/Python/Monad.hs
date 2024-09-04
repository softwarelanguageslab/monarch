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

type PyM m obj vlu = (PyDomain obj vlu,
                      MonadJoin m,
                      MonadCache m,
                      MapM (Key m PyBdy) (Val m vlu) m, 
                      ComponentTrackingM m (Key m PyBdy),
                      MonadEscape m,
                      PyEscape (Esc m) vlu,
                      Domain (Esc m) PyError,
                      Domain (Esc m) DomainError,
                      SplitLattice (Esc m),
                      EnvM m ObjAdr PyEnv, 
                      AllocM m PyLoc ObjAdr,
                      StoreM m ObjAdr obj)

pyDeref :: (Lattice a, PyM m obj vlu) => (ObjAdr -> obj -> m a) -> vlu -> m a
pyDeref f = deref f . addrs 

pyDeref' :: PyM m obj vlu => vlu -> m obj
pyDeref' = deref' . addrs 

pyAlloc :: PyM m obj vlu => PyLoc -> obj -> m vlu
pyAlloc loc = fmap injectAdr . store loc

break :: forall pyM obj vlu . PyM pyM obj vlu => pyM ()
break = escape (Break @vlu)

continue :: forall pyM obj vlu . PyM pyM obj vlu => pyM ()
continue = escape (Continue @vlu)

returnWith :: PyM pyM obj vlu => vlu -> pyM ()
returnWith = escape . Return 

throwException :: (PyM pyM obj vlu, Lattice a) => vlu -> pyM a 
throwException = escape . Exception
