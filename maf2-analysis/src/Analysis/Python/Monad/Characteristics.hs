{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Analysis.Python.Monad.Characteristics where 

import Lattice
import Domain.Class
import Control.Monad.Join
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.DomainError
import Control.Monad.Escape
import Analysis.Python.Common
import Analysis.Monad hiding (call, get, has)
import Domain.Python.Syntax hiding (Continue, Break, Return, None)
import Domain.Python.World
import Analysis.Python.Escape
import Analysis.Python.Monad.Class

import Prelude hiding (lookup, exp, break)
import Control.Monad ((>=>))
import Analysis.Monad.Call (CallM(..))
import Data.Set (Set)
import Lattice.TopLattice()
import Domain.Python.Objects.Class
import Control.Monad.Identity
import Analysis.Monad.FunctionCharacteristics

newtype PythonCharacteristicsAnalysisT m a = PythonCharacteristicsAnalysisT (IdentityT m a)
  deriving (Functor, Applicative, Monad, MonadJoinable, MonadLayer, MonadEscape, MonadCache)

runPythonCharacteristicsAnalysisT :: PythonCharacteristicsAnalysisT m a -> m a
runPythonCharacteristicsAnalysisT (PythonCharacteristicsAnalysisT m) = runIdentityT m


-- Characteristics analysis (preanalysis) instance

-- kcfa k
-- TODO: parameterize this
kcfa :: Int
kcfa = 10

type PyRef = ObjAddrSet
type PyRet = Set (PyEsc PyRef)

instance (vlu ~ PyRef,
          PyDomain obj vlu,
          CharacteristicsM PyLoc m, 
          CtxM m [PyLoc],
          MonadJoin m,
          MonadEscape m,
          CallM (PyLoc, PyBdy) PyRef m,
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
          PyM (PythonCharacteristicsAnalysisT m) obj vlu where
  pyStoreSize = storeSize @ObjAdr @obj @(PythonCharacteristicsAnalysisT m)
  pyCall l b = do
    let loc = getPyBdyLoc b 
    maybe (return ()) (`addCallSite` l) loc
    maybe (return ()) (`addEquivCallSite` l) loc -- todo: check equivalence of call sites 
    curry call l b
  pyAlloc = store
  pyDeref f = deref f . addrs
  pyDeref_ f = deref f . addrs
  pyAssignAt k v a = do 
    pyDeref_ (\_ ob -> cond @_ @(CP Bool) (return $ has @CloPrm ob) 
                                          (mapM_ (\f -> do newFunction f
                                                           setParameters f (cloParams ob)) $ cloLoc ob) 
                                          (return ())) v
    updateWith (setAttr k v) (setAttrWeak k v) a
  pyAssign k v = mjoinMap (pyAssignAt k v) . addrs
  pyAssignInPrm s f v = pyDeref_ $ \adr obj -> do old <- getPrm s obj
                                                  upd <- f v old
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
  applyXPrim _ = error "unsupported primitive"