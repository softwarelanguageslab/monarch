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
  -- PyRefTaint,
  -- PyRetTaint,
  Taint,
  runPythonTaintAnalysisT,
  PythonTaintAnalysisT
) where

import Lattice
import Domain.Class
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Escape
import Analysis.Python.Common
import Analysis.Monad hiding (call, get)
import Domain.Python.Syntax hiding (Continue, Break, Return, None)
import Domain.Python.World
import Analysis.Python.Escape

import Prelude hiding (lookup, exp, break)
import Control.Monad.AbstractM (AbstractM)
import Control.Monad ((>=>), (<=<))
import Analysis.Monad.Call (CallM(..))
import Lattice.Tainted (Tainted(..))
import Data.Singletons (SingI, Sing)
import Data.Set (Set)
import Data.Functor (($>))
import qualified Data.Set as Set
import qualified Lattice.TopLiftedLattice as TopLattice
import Text.Printf (printf)
import Lattice.TopLattice()
import Domain.Python.Objects.Class
import Control.Monad.Identity


newtype PythonTaintAnalysisT m a = PythonTaintAnalysisT (IdentityT m a)
  deriving (Functor, Applicative, Monad, MonadJoinable, MonadLayer, MonadEscape, MonadCache)

runPythonTaintAnalysisT :: PythonTaintAnalysisT m a -> m a
runPythonTaintAnalysisT (PythonTaintAnalysisT m) = runIdentityT m

newtype PythonAnalysisT m a = PythonAnalysisT (IdentityT m a)
  deriving (Functor, Applicative, Monad, MonadJoinable, MonadLayer, MonadEscape, MonadCache)

runPythonAnalysisT :: PythonAnalysisT m a -> m a
runPythonAnalysisT (PythonAnalysisT m) = runIdentityT m

--
-- The Python monad 
--

-- | Python components
data PyBdy = Main PyPrg
           | FuncBdy PyLoc PyStm
           | LoopBdy PyLoc PyExp PyStm
  deriving (Eq, Ord)

instance Show PyBdy where
  show (Main _) = "<main>"
  show (FuncBdy loc _) = printf "<func at %s>" (show loc)
  show (LoopBdy loc _ _) = printf "<loop at %s>" (show loc)

class (PyDomain obj vlu, AbstractM m) => PyM m obj vlu | m -> obj vlu where
  pyStoreSize  :: m Int
  -- components -- 
  pyCall       :: PyLoc -> PyBdy -> m vlu
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
  pyRaise      :: (Joinable a, PartialOrder a) => vlu -> m a
  pyCatchExc   :: (Joinable a) => m a -> (vlu -> m a) -> m a
  pyCatchLoop  :: m vlu -> m vlu -> m vlu -> m vlu
  pyReturnable :: m vlu -> m vlu
  -- environment -- 
  pyGetEnv     :: m PyEnv
  pyWithEnv    :: PyEnv -> m a -> m a
  pyLookupEnv  :: String -> m ObjAdr
  -- store -- 
  pyLookupSto  :: ObjAdr -> m obj
  -- context -- 
  pyWithCtx    :: PyLoc -> m a -> m a
  -- extra primitives -- 
  applyXPrim   :: XPyPrim -> PyLoc -> [vlu] -> m vlu

pyDeref' :: forall m obj vlu . PyM m obj vlu => (obj -> m vlu) -> vlu -> m vlu
pyDeref' = pyDeref . const

pyDeref'' :: forall k m obj vlu . (PyM m obj vlu, SingI k) => (Abs obj k -> m vlu) -> vlu -> m vlu
pyDeref'' f = pyDeref' (f <=< get @k)

pyDeref2' :: forall m obj vlu . PyM m obj vlu => (obj -> obj -> m vlu) -> vlu -> vlu -> m vlu
pyDeref2' f a1 a2 = pyDeref' (\o1 -> pyDeref' (f o1) a2) a1

pyDeref2'' :: forall k1 k2 m obj vlu . (PyM m obj vlu, SingI k1, SingI k2) => (Abs obj k1 -> Abs obj k2 -> m vlu) -> vlu -> vlu -> m vlu
pyDeref2'' f = pyDeref2' $ \o1 o2 -> do v1 <- get @k1 o1
                                        v2 <- get @k2 o2
                                        f v1 v2

pyDeref3' :: forall m obj vlu . PyM m obj vlu => (obj -> obj -> obj -> m vlu) -> vlu -> vlu -> vlu -> m vlu
pyDeref3' f a1 a2 a3 = pyDeref2' (\o1 o2 -> pyDeref' (f o1 o2) a3) a1 a2

pyStore :: PyM m obj vlu => PyLoc -> obj -> m vlu
pyStore loc = fmap injectAdr . pyAlloc loc



-- Taint analysis instance 

-- kcfa k
-- TODO: parameterize this
kcfa :: Int
kcfa = 10

-- type Taint = TopLifted (Set String)
-- type PyRefTaint = Tainted Taint ObjAddrSet
-- type PyRetTaint = Tainted Taint (Set (PyEsc PyRefTaint))

type Taint = TopLifted (Set String)
type PyRef = Tainted Taint ObjAddrSet
type PyRet = Tainted Taint (Set (PyEsc PyRef))

instance (
          vlu ~ PyRef,
          -- vlu ~ PyRefTaint,
          PyDomain obj vlu,
          TaintM Taint m,
          CtxM m [PyLoc],
          MonadJoin m,
          MonadEscape m,
          CallM (PyLoc, PyBdy) PyRef m,
          -- CallM (PyLoc, PyBdy) PyRefTaint m,
          PyEscape (Esc m) vlu,
          Domain (Esc m) PyError,
          Domain (Esc m) DomainError,
          BottomLattice (Esc m),
          SplitLattice (Esc m),
          EnvM m ObjAdr PyEnv,
          AllocM m PyLoc ObjAdr,
          GraphM (CP String) (CP Bool) m,
          StoreM ObjAdr obj m)
          =>
          PyM (PythonTaintAnalysisT m) obj vlu where
  pyStoreSize = storeSize @ObjAdr @obj @(PythonTaintAnalysisT m)
  pyCall = curry call
  pyAlloc = store
  pyDeref f = unwrapTainted (deref f . addrs)
  pyDeref_ f = unwrapTainted_ (deref f . addrs)
  pyAssignAt k v a = addTaint v >>= \v' -> updateWith (setAttr k v') (setAttrWeak k v') a
  pyAssign k v = unwrapTainted_ (mjoinMap (pyAssignAt k v) . addrs) --- !!! important
  pyAssignInPrm s f v = pyDeref_ $ \adr obj -> do v' <- addTaint v
                                                  old <- getPrm s obj
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
  pyWithCtx loc = withCtx (take kcfa . (loc:))
  applyXPrim ObjectTaint _ = \case
                                [a] -> withTaint @Taint TopLattice.Top (addTaint a)
                                _   -> pyError ArityError
  applyXPrim DatabaseRead loc = \case
                                  [_, str] -> pyDeref'' @StrPrm (\nam -> withTaint @Taint (toTaint nam) $ addTaint =<< pyStore loc (from' @DfrPrm Prelude.False)) str
                                  _        -> pyError ArityError
                                  where toTaint (Lattice.Constant str) = TopLattice.Value (Set.singleton str)
                                        toTaint Lattice.Top            = TopLattice.Top
  applyXPrim DatabaseWrite _ = \case
                                  [_, df, str] -> pyDeref2'' @DfrPrm @StrPrm (\dfr nam -> currentTaint @Taint >>= \t -> addEdges nam t dfr $> constant None) df str
                                  _            -> pyError ArityError
                                  where addEdges to TopLattice.Top dfr = addEdge Lattice.Top to dfr
                                        addEdges to (TopLattice.Value s) dfr = mapM_ (\source -> addEdge (Lattice.Constant source) to dfr) (Set.toList s)

--- canonical instance

-- type PyRef = ObjAddrSet
-- type PyRet = (Set (PyEsc PyRef))

-- instance (vlu ~ PyRef,
--           PyDomain obj vlu,
--           CtxM m [PyLoc],
--           MonadJoin m,
--           MonadEscape m,
--           CallM (PyLoc, PyBdy) PyRef m,
--           PyEscape (Esc m) vlu,
--           Domain (Esc m) PyError,
--           Domain (Esc m) DomainError,
--           BottomLattice (Esc m),
--           SplitLattice (Esc m),
--           EnvM m ObjAdr PyEnv,
--           AllocM m PyLoc ObjAdr,
--           GraphM (CP String) (CP Bool) m,
--           StoreM ObjAdr obj m)
--           =>
--           PyM (PythonAnalysisT m) obj vlu where
--   pyStoreSize = storeSize @ObjAdr @obj @(PythonAnalysisT m)
--   pyCall = curry call
--   pyAlloc = store
--   pyDeref f = deref f . addrs
--   pyDeref_ f = deref f . addrs
--   pyAssignAt k v = updateWith (setAttr k v) (setAttrWeak k v)
--   pyAssign k v = mjoinMap (pyAssignAt k v) . addrs
--   pyAssignInPrm s f v = pyDeref_ $ \adr obj -> do old <- getPrm s obj
--                                                   upd <- f v old
--                                                   let obj' = setPrm s upd obj
--                                                   updateAdr adr obj'
--   pyBreak = escape (Break @vlu)
--   pyContinue = escape (Continue @vlu)
--   pyReturn = escape . Return
--   pyError = escape
--   pyRaise = escape . Exception
--   pyCatchExc bdy hdl = bdy `catchOn` (isException, getException >=> hdl)
--   pyCatchLoop bdy brk cnt = bdy `catchOn` (isBreak, const brk) `catchOn` (isContinue, const cnt)
--   pyReturnable = (`catchOn` (isReturn, getReturn))
--   pyGetEnv = getEnv
--   pyWithEnv = withEnv . const
--   pyLookupEnv = lookupEnv
--   pyLookupSto = lookupAdr
--   pyWithCtx loc = withCtx (take kcfa . (loc:))
--   applyXPrim _ = error "primitive not supported"