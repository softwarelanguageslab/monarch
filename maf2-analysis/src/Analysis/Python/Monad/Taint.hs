{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Analysis.Python.Monad.Taint where 

import Lattice
import Domain.Class
import Control.Monad.Join
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.DomainError
import Control.Monad.Escape
import Analysis.Python.Common
import Analysis.Monad hiding (call, get)
import Domain.Python.Syntax hiding (Continue, Break, Return, None)
import Domain.Python.World
import Analysis.Python.Escape
import Analysis.Python.Monad.Class

import Prelude hiding (lookup, exp, break)
import Control.Monad ((>=>))
import Analysis.Monad.Call (CallM(..))
import Lattice.Tainted (Tainted(..))
import Data.Set (Set)
import Data.Functor (($>))
import qualified Data.Set as Set
import qualified Lattice.TopLiftedLattice as TopLattice
import Lattice.TopLattice()
import Domain.Python.Objects.Class
import Control.Monad.Identity

newtype PythonTaintAnalysisT m a = PythonTaintAnalysisT (IdentityT m a)
  deriving (Functor, Applicative, Monad, MonadJoinable, MonadLayer, MonadEscape, MonadCache)

runPythonTaintAnalysisT :: PythonTaintAnalysisT m a -> m a
runPythonTaintAnalysisT (PythonTaintAnalysisT m) = runIdentityT m


-- Taint analysis instance

-- kcfa k
-- TODO: parameterize this
kcfa :: Int
kcfa = 10

type Taint = TopLifted (Set String)
type PyRefTaint = Tainted Taint ObjAddrSet
type PyRetTaint = Tainted Taint (Set (PyEsc PyRefTaint))

instance (
          vlu ~ PyRefTaint,
          PyDomain obj vlu,
          TaintM Taint m,
          CtxM m [PyLoc],
          MonadJoin m,
          MonadEscape m,
          CallM (PyLoc, PyBdy) PyRefTaint m,
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
