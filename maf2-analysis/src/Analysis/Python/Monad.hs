{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Python.Monad (
  PyBdy(..),
  PyM(..),
  pyDeref',
  pyDeref'',
  pyDeref2',
  pyDeref2'',
  pyDeref3',
  pyStore,
  PyRef,
  PyRet,
  Taint, 
) where

import Lattice
import Domain.Class
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.Escape
import Analysis.Python.Common
import Analysis.Monad hiding (call)
import Domain.Python.Syntax hiding (Continue, Break, Return, None)
import Domain.Python.World
import Analysis.Python.Escape

import Prelude hiding (lookup, exp, break)
import Control.Monad.AbstractM (AbstractM)
import Control.Monad ((>=>), (<=<))
import Domain.Python.Objects.Class (PyObj(..), at, set, atPrm)
import Analysis.Monad.Call (CallM(..))
import Domain.Core.TaintDomain
import Lattice.Tainted (Tainted(..))
import Data.Singletons (SingI, Sing)
import Data.Kind (Type)
import Data.Set (Set, singleton)

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
  pyAssignInPrm :: Sing k -> (vlu -> Abs obj k -> m (Abs obj k)) -> vlu -> vlu -> m () 
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
  -- extra primitives -- 
  applyXPrim   :: XPyPrim -> PyLoc -> [vlu] -> m vlu

pyDeref' :: forall m obj vlu . PyM m obj vlu => (obj -> m vlu) -> vlu -> m vlu
pyDeref' = pyDeref . const

pyDeref'' :: forall k m obj vlu . (PyM m obj vlu, SingI k) => (Abs obj k -> m vlu) -> vlu -> m vlu 
pyDeref'' f = pyDeref' (f <=< at @k)

pyDeref2' :: forall m obj vlu . PyM m obj vlu => (obj -> obj -> m vlu) -> vlu -> vlu -> m vlu
pyDeref2' f a1 a2 = pyDeref' (\o1 -> pyDeref' (f o1) a2) a1

pyDeref2'' :: forall k1 k2 m obj vlu . (PyM m obj vlu, SingI k1, SingI k2) => (Abs obj k1 -> Abs obj k2 -> m vlu) -> vlu -> vlu -> m vlu
pyDeref2'' f = pyDeref2' $ \o1 o2 -> do v1 <- at @k1 o1 
                                        v2 <- at @k2 o2 
                                        f v1 v2 

pyDeref3' :: forall m obj vlu . PyM m obj vlu => (obj -> obj -> obj -> m vlu) -> vlu -> vlu -> vlu -> m vlu
pyDeref3' f a1 a2 a3 = pyDeref2' (\o1 o2 -> pyDeref' (f o1 o2) a3) a1 a2

pyStore :: PyM m obj vlu => PyLoc -> obj -> m vlu
pyStore loc = fmap injectAdr . pyAlloc loc



-- Taint analysis instance 

type Taint = Set String  
type PyRef = Tainted Taint ObjAddrSet
type PyRet = Tainted Taint (Set (PyEsc PyRef))

instance (vlu ~ PyRef, 
          PyDomain obj vlu,
          TaintM Taint m, 
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
  pyDeref f = unwrapTainted (deref f . addrs)
  pyDeref_ f = unwrapTainted_ (deref f . addrs)
  pyAssignAt k v a = addTaint v >>= \v' -> updateWith (setAttr k v') (setAttrWeak k v') a
  pyAssign k v = unwrapTainted_ (mjoinMap (pyAssignAt k v) . addrs) --- !!! important
  pyAssignInPrm s f v = pyDeref_ $ \adr obj -> do v' <- addTaint v 
                                                  old <- atPrm s obj
                                                  upd <- f v' old
                                                  let obj' = setPrm s upd obj
                                                  updateAdr adr obj'
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
  applyXPrim ObjectTaint _ = \case
                              [a] -> withTaint (singleton "boe") (addTaint a)
                              _   -> pyError ArityError
