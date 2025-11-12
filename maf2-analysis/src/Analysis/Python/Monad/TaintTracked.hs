{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Analysis.Python.Monad.TaintTracked where 

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
import qualified Lattice.TopLiftedLattice as TopLattice
import Lattice.TopLattice()
import Domain.Python.Objects.Class
import Domain.Core.TaintDomain.Class
import qualified Debug.Trace as Debug
import Analysis.Python.Diagnostics
import qualified Data.Set as Set
import Control.Monad.Reader
import Syntax.Span
import Control.Lens
import qualified Lattice.TopLiftedLattice as TopLifted
import qualified Data.List as List


-- | This is the same as the 'Analysis.Python.Monad.Taint' monad, but also keeps track
-- of an execution context that is used for correlating tainted values to the source
-- locations manipulating them.
newtype PythonTaintAnalysisT m a = PythonTaintAnalysisT (ReaderT [Span] m a)
  deriving (Functor, Applicative, Monad, MonadJoinable, MonadLayer, MonadEscape, MonadCache, MonadReader [Span])


runPythonTaintAnalysisT :: PythonTaintAnalysisT m a -> m a
runPythonTaintAnalysisT (PythonTaintAnalysisT m) = runReaderT m []


-- Taint analysis instance

-- kcfa k
-- TODO: parameterize this
kcfa :: Int
kcfa = 10

type Taint = TopLifted (Set TaintTracking)

data TaintTracking = TaintTracking { _sourceSpan :: Span, _dependentsSpan :: Set Span }
                   deriving (Ord, Eq, Show)
$(makeLenses ''TaintTracking)

trackingToTuple :: TaintTracking -> (Span, Set Span)
trackingToTuple (TaintTracking sourceSpan dependentSpan) = (sourceSpan, dependentSpan)

-- | Create a source
source :: SpanOf a => a -> Taint
source = TopLifted.Value . Set.singleton . flip TaintTracking Set.empty . spanOf

-- | Changes the execution context of the given computation
withExecutionContext :: (MonadReader [Span] m) => Span -> m a -> m a
withExecutionContext ctx = local (ctx:)

-- | Executes the given computation by extending the tainted value with the current execution context
addExecutionContext :: (MonadReader [Span] m, TaintM Taint m) => m a -> m a
addExecutionContext m = do
  t   <- currentTaint
  (flip withTaint m . extendTaint t . Set.fromList) =<< ask

extendTaint :: Taint -> Set Span -> Taint
extendTaint t s = Set.map (over dependentsSpan (Set.union s)) <$> t

extendTainted :: PyRefTaint -> Set Span -> PyRefTaint
extendTainted (Tainted a t) s = Tainted a (extendTaint t s)

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
          MonadReport (DiagnosticType vlu) m,
          StoreM ObjAdr obj m)
          =>
          PyM (PythonTaintAnalysisT m) obj vlu where
  pyStoreSize = storeSize @ObjAdr @obj @(PythonTaintAnalysisT m)
  pyCall = curry call
  pyAlloc = store
  pyDeref f = unwrapTainted (deref f . addrs)
  pyDeref_ f = unwrapTainted_ (deref f . addrs)
  pyAssignAt k v a = do
    ctx <- asks Set.fromList 
    addTaint (extendTainted v ctx) >>= \v' -> updateWith (setAttr k v') (setAttrWeak k v') a
  pyAssign k v =
    unwrapTainted_ (mjoinMap (pyAssignAt k v) . addrs) --- important
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

  applyXPrim TaintSink loc = \case
                              [_, v@(Tainted _ t)] -> do
                                 condCP (pure $ Debug.traceWith (("isTainted>> " ++) . show) $ isTainted t)
                                        (reportDiagnostic loc (TaintViolation (fmap (Set.map trackingToTuple) t) v) >> return v)
                                        (return v)
                              _ -> Debug.trace "arity error" $ pyError ArityError
  applyXPrim ObjectTaint loc = \case
                                [a] -> withTaint @Taint (source loc) (addTaint a)
                                _   -> pyError ArityError
  applyXPrim _ _ = error "primitive not implemented"

