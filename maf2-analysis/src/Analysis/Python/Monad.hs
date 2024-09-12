{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module Analysis.Python.Monad (
  PyBdy(..),
  PyM(..),
  pyDeref',
  pyDeref2',
  pyDeref3',
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
import qualified Analysis.Monad.ComponentTracking as M

import Prelude hiding (lookup, exp, break)
import Analysis.Monad.ComponentTracking (ComponentTrackingM)
import Control.Monad.AbstractM (AbstractM)
import Control.Monad ((>=>))
import Domain (BoolDomain)
import Domain.Python.Objects.Class (PyObj(..))

--
-- The Python monad 
--

-- | Python components
data PyBdy = Main PyPrg
           | FuncBdy PyLoc PyStm
           | LoopBdy PyLoc PyExp PyStm
  deriving (Eq, Ord, Show)

-- type PyM m obj vlu = (PyDomain obj vlu,
--                       MonadJoin m,
--                       MonadCache m,
--                       MapM (Key m PyBdy) (Val m vlu) m, 
--                       ComponentTrackingM m (Key m PyBdy),
--                       MonadEscape m,
--                       PyEscape (Esc m) vlu,
--                       Domain (Esc m) PyError,
--                       Domain (Esc m) DomainError,
--                       SplitLattice (Esc m),
--                       EnvM m ObjAdr PyEnv, 
--                       AllocM m PyLoc ObjAdr,
--                       StoreM m ObjAdr obj)

class (PyDomain obj vlu, AbstractM m) => PyM m obj vlu | m -> obj vlu where
  -- components -- 
  pyCall       :: PyBdy -> m vlu
  -- objects and values --
  pyAlloc      :: PyLoc -> obj -> m ObjAdr
  pyStore      :: PyLoc -> obj -> m vlu
  pyStore loc = fmap injectAdr . pyAlloc loc
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

catchOn :: (MonadEscape m, MonadJoin m, SplitLattice (Esc m), Lattice (Esc m), Lattice a) => m a -> (Esc m -> CP Bool, Esc m -> m a) -> m a
catchOn bdy (prd, hdl) = bdy `catch` msplitOn (return . prd) hdl throw 

pyDeref' :: forall m obj vlu . PyM m obj vlu => (obj -> m vlu) -> vlu -> m vlu
pyDeref' = pyDeref . const

pyDeref2' :: forall m obj vlu . PyM m obj vlu => (obj -> obj -> m vlu) -> vlu -> vlu -> m vlu
pyDeref2' f a1 a2 = pyDeref' (\o1 -> pyDeref' (f o1) a2) a1 

pyDeref3' :: forall m obj vlu . PyM m obj vlu => (obj -> obj -> obj -> m vlu) -> vlu -> vlu -> vlu -> m vlu
pyDeref3' f a1 a2 a3 = pyDeref2' (\o1 o2 -> pyDeref' (f o1 o2) a3) a1 a2

instance (PyDomain obj vlu,
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
          =>
          PyM m obj vlu where
  pyCall = M.call 
  pyAlloc = store 
  pyDeref f = deref f . addrs 
  pyDeref_ f = deref f . addrs 
  pyAssignAt k v = updateWith (setAttr k v) (setAttrWeak k v)
  pyAssign k v = mjoinMap (pyAssignAt k v) . addrs 
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
