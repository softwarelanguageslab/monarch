{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Monad (
  PyM(..),
  PyCmp(..),
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
import Domain.Python.Syntax
import Domain.Python.World 

import Prelude hiding (lookup)

--
-- The Python monad 
--

data PyCmp = MainCmp PyPrg  
           | LoopCmp PyExp PyStm PyEnv 
           | CallCmp PyStm PyEnv 
  deriving (Eq, Ord, Show)

class (Monad m,
       MonadJoin m,
       MonadEscape m,
       -- value configuration
       PyObj' obj,
       Domain (Esc m) PyError,
       Domain (Esc m) DomainError,
       AllocM m PyLoc ObjAdr,
       EnvM m VarAdr PyEnv, 
       StoreM m ObjAdr obj,
       StoreM m VarAdr PyVal)
       =>
       PyM m obj | m -> obj where
  returnWith :: PyVal -> m ()
  break :: m ()
  continue :: m () 
  callCmp :: PyCmp -> m PyVal 

pyDeref :: (JoinLattice a, PyM m obj) => (ObjAdr -> obj -> m a) -> PyVal -> m a
pyDeref f = deref f . addrs 

pyDeref' :: PyM m obj => PyVal -> m obj
pyDeref' = deref' . addrs 

pyAlloc :: PyM m obj => PyLoc -> obj -> m PyVal
pyAlloc loc = fmap injectAdr . store loc