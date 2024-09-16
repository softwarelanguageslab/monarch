{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module Analysis.Python.Monad (
  PyBdy(..),
  PyM(..),
  pyDeref',
  pyDeref2',
  pyDeref3',
  pyStore,
  PyRef,
  Taint, 
) where

import Lattice
import Domain.Class
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.Escape
import Analysis.Python.Common
import Analysis.Monad hiding (call)
import Domain.Python.Syntax hiding (Continue, Break, Return)
import Domain.Python.World
import Analysis.Python.Escape

import Prelude hiding (lookup, exp, break)
import Control.Monad.AbstractM (AbstractM)
import Control.Monad ((>=>))
import Domain.Python.Objects.Class (PyObj(..))
import Analysis.Monad.Call (CallM(..))
import Domain.Core.TaintDomain
import Lattice.Tainted (Tainted(..))

--
-- The Python monad 
--

-- | Python components
data PyBdy = Main PyPrg
           | FuncBdy PyLoc PyStm
           | LoopBdy PyLoc PyExp PyStm
  deriving (Eq, Ord, Show)

class (PyDomain obj vlu, AbstractM m) => PyM m obj vlu | m -> obj vlu where
  -- components -- 
  pyCall       :: PyBdy -> m vlu
  -- objects and values --
  pyAlloc      :: PyLoc -> obj -> m ObjAdr
  pyDeref      :: (ObjAdr -> obj -> m vlu) -> vlu -> m vlu 
  pyDeref_     :: (ObjAdr -> obj -> m ()) -> vlu -> m () 
  pyAssignAt   :: String -> vlu -> ObjAdr -> m ()
  pyAssign     :: String -> vlu -> vlu -> m ()
  pyAssign k v = pyDeref_ $ \a _ -> pyAssignAt k v a
  pyUpdate     :: ObjAdr -> obj -> m ()
  -- control flow -- 
  pyBreak      :: m ()
  pyContinue   :: m ()
  pyReturn     :: vlu -> m ()
  pyError      :: Lattice a => PyError -> m a
  pyRaise      :: Lattice a => vlu -> m a
  pyCatchExc   :: Lattice a => m a -> (vlu -> m a) -> m a
  pyCatchLoop  :: m vlu -> m vlu -> m vlu -> m vlu
  pyReturnable :: m vlu -> m vlu
  -- environment -- 
  pyGetEnv     :: m PyEnv
  pyWithEnv    :: PyEnv -> m a -> m a
  pyLookupEnv  :: String -> m ObjAdr
  -- store -- 
  pyLookupSto  :: ObjAdr -> m obj

pyDeref' :: forall m obj vlu . PyM m obj vlu => (obj -> m vlu) -> vlu -> m vlu
pyDeref' = pyDeref . const

pyDeref2' :: forall m obj vlu . PyM m obj vlu => (obj -> obj -> m vlu) -> vlu -> vlu -> m vlu
pyDeref2' f a1 a2 = pyDeref' (\o1 -> pyDeref' (f o1) a2) a1 

pyDeref3' :: forall m obj vlu . PyM m obj vlu => (obj -> obj -> obj -> m vlu) -> vlu -> vlu -> vlu -> m vlu
pyDeref3' f a1 a2 a3 = pyDeref2' (\o1 o2 -> pyDeref' (f o1 o2) a3) a1 a2

pyStore :: PyM m obj vlu => PyLoc -> obj -> m vlu
pyStore loc = fmap injectAdr . pyAlloc loc



-- Taint analysis instance 

type Taint = SimpleTaint 
type PyRef = Tainted Taint ObjAddrSet

instance (vlu ~ PyRef, 
          PyDomain obj vlu,
          TaintM SimpleTaint m, 
          MonadJoin m,
          MonadEscape m,
          CallM PyBdy PyRef m, 
          PyEscape (Esc m) vlu,
          Domain (Esc m) PyError,
          Domain (Esc m) DomainError,
          SplitLattice (Esc m),
          EnvM m ObjAdr PyEnv,
          AllocM m PyLoc ObjAdr,
          StoreM m ObjAdr obj)
          =>
          PyM m obj vlu where
  pyCall = call 
  pyAlloc = store 
  pyDeref f (Tainted s t) = deref f (addrs s)  
  pyDeref_ f (Tainted s t) = deref f (addrs s) 
  pyAssignAt k v = updateWith (setAttr k v) (setAttrWeak k v)
  pyAssign k v (Tainted s t) = mjoinMap (pyAssignAt k v) (addrs s) 
  pyUpdate = updateAdr
  pyBreak = escape (Break @vlu)
  pyContinue = escape (Continue @vlu) 
  pyReturn = escape . Return 
  pyError = escape
  pyRaise = escape . Exception
  pyCatchExc bdy hdl = bdy `catchOn` (isException, getException >=> hdl) 
  pyCatchLoop bdy brk cnt = bdy `catchOn` (isBreak, const brk) `catchOn` (isContinue, const cnt)
  pyReturnable = (`catchOn` (isReturn, getReturn))
  pyGetEnv = getEnv 
  pyWithEnv = withEnv . const 
  pyLookupEnv = lookupEnv
  pyLookupSto = lookupAdr
