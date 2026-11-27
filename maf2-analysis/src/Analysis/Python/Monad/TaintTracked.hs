{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Analysis.Python.Monad.TaintTracked (
  PythonTaintAnalysisT,
  runPythonTaintAnalysisT,
  TaintGranularity(..),
  granularityName,
  parseGranularity,
  kcfa,
  Taint,
  TaintTracking(..),
  sourceSpan,
  dependentsSpan,
  trackingToTuple,
  source,
  withExecutionContext,
  addExecutionContext,
  extendTaint,
  extendTainted,
  PyRefTaint,
  PyRetTaint
) where

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
import Lattice.TopLattice()
import Domain.Python.Objects.Class
import Domain.Core.TaintDomain.Class
import qualified Debug.Trace as Debug
import Analysis.Python.Diagnostics
import qualified Data.Set as Set
import Control.Monad.Reader
import Syntax.Span
import Control.Lens hiding (from)
import qualified Lattice.TopLiftedLattice as TopLifted
import qualified Lattice.BottomLiftedLattice as BottomLifted
import qualified Lattice.ConstantPropagationLattice as CP
import Domain.Core.DictionaryDomain.CPDict (CPDictionary(..))
import qualified Data.List as List
import Lattice.Trace (Trace(..))
import Domain.Python.Objects.DataFrame (fromColumns, Series(..))
import Analysis.Python.Objects (sensitiveDtypePrefix, dtypeElement)
import qualified Data.Map as Map
import Data.Aeson (FromJSON(..), ToJSON(..))


-- | This is the same as the 'Analysis.Python.Monad.Taint' monad, but also keeps track
-- of an execution context that is used for correlating tainted values to the source
-- locations manipulating them.

-- | The granularity at which sources taint a DataFrame
data TaintGranularity = ColumnLevel  -- ^ only the sensitive columns of a DataFrame are tainted
                      | ObjectLevel  -- ^ a DataFrame with a sensitive column is tainted as a whole
  deriving (Eq, Ord, Show, Enum, Bounded)

-- | The name of the granularity, as used on the command line and in the
-- settings of the language server
granularityName :: TaintGranularity -> String
granularityName ColumnLevel = "column"
granularityName ObjectLevel = "object"

-- | The granularity with the given name (see 'granularityName')
parseGranularity :: String -> Either String TaintGranularity
parseGranularity str = maybe (Left unknown) Right (List.find ((== str) . granularityName) granularities)
  where granularities = [minBound .. maxBound]
        unknown = "unknown taint granularity " ++ show str ++ ", expected one of: " ++ List.intercalate ", " (map granularityName granularities)

-- | A granularity is encoded in JSON by its name (see 'granularityName')
instance FromJSON TaintGranularity where
  parseJSON v = either fail pure . parseGranularity =<< parseJSON v

instance ToJSON TaintGranularity where
  toJSON = toJSON . granularityName

-- | The configuration of the analysis, and the execution context of the
-- statement that is being analysed (see 'withExecutionContext')
data TaintContext = TaintContext { _taintGranularity :: TaintGranularity, _executionContext :: [Span] }
$(makeLenses ''TaintContext)

newtype PythonTaintAnalysisT m a = PythonTaintAnalysisT (ReaderT TaintContext m a)
  deriving (Functor, Applicative, Monad, MonadJoinable, MonadLayer, MonadEscape, MonadCache, MonadReader TaintContext)

runPythonTaintAnalysisT :: TaintGranularity -> PythonTaintAnalysisT m a -> m a
runPythonTaintAnalysisT granularity (PythonTaintAnalysisT m) = runReaderT m (TaintContext granularity [])


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
trackingToTuple (TaintTracking ss ds) = (ss, ds)

-- | Create a source
source :: SpanOf a => a -> Taint
source = TopLifted.Value . Set.singleton . flip TaintTracking Set.empty . spanOf

-- | Changes the execution context of the given computation
withExecutionContext :: (MonadReader TaintContext m) => Span -> m a -> m a
withExecutionContext ctx = local (over executionContext (ctx:))

-- | Executes the given computation by extending the tainted value with the current execution context
addExecutionContext :: (MonadReader TaintContext m, TaintM Taint m) => m a -> m a
addExecutionContext m = do
  t   <- currentTaint
  (flip withTaint m . extendTaint t . Set.fromList) =<< view executionContext

extendTaint :: Taint -> Set Span -> Taint
extendTaint t s = Set.map (over dependentsSpan (Set.union s)) <$> t

extendTainted :: PyRefTaint -> Set Span -> PyRefTaint
extendTainted (Tainted a t) s = Tainted a (extendTaint t s)

-- | Whether a pandas dtype marks a column as sensitive (e.g., "sensitive_float64")
isSensitiveDtype :: CP String -> CP Bool
isSensitiveDtype (CP.Constant dtype) = CP.Constant (sensitiveDtypePrefix `List.isPrefixOf` dtype)
isSensitiveDtype CP.Top              = CP.Top

-- | The join of the taint of the given reference and the taints of all
-- references reachable from it through the store, without following closures.
--
-- The variables that a closure captures only affect the result of calling it,
-- and that result is tainted by them where the closure is called. A closure
-- that is not called does not reveal them. This assumes that a sink does not
-- serialize the closures it receives (as, e.g., cloudpickle does).
reachableTaint :: forall obj m . (StoreM ObjAdr obj m, PyObj obj, Trace PyRefTaint obj) => PyRefTaint -> m Taint
reachableTaint ref = go Set.empty [ref] (TopLifted.Value Set.empty)
   where go :: Set ObjAdr -> [PyRefTaint] -> Taint -> m Taint
         go _    []                       acc = return acc
         go seen (Tainted adrSet t : refs) acc = do
            let unseen = addrs adrSet `Set.difference` seen
            objs <- mapM (lookupAdr @ObjAdr @obj) (Set.toList unseen)
            let contained = concatMap (Set.toList . trace @PyRefTaint . setPrm SCloPrm Set.empty) objs
            go (Set.union seen unseen) (contained ++ refs) (join acc t)

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
          StoreM ObjAdr obj m,
          Trace PyRefTaint obj)
          =>
          PyM (PythonTaintAnalysisT m) obj vlu where
  pyStoreSize = storeSize @ObjAdr @obj @(PythonTaintAnalysisT m)
  pyCall = curry call
  pyAlloc = store
  pyDeref f = unwrapTainted (deref f . addrs)
  pyDeref_ f = unwrapTainted_ (deref f . addrs)
  pyAssignAt k v a = do
    ctx <- views executionContext Set.fromList
    addTaint (extendTainted v ctx) >>= \v' -> updateWith (setAttr k v') (setAttrWeak k v') a
  pyAssign k v =
    unwrapTainted_ (mjoinMap (pyAssignAt k v) . addrs) --- important
  -- like 'pyAssignAt', a value stored in a primitive (e.g., @d[k] = v@ or
  -- @df["c"] = v@) depends on the statements in the current execution context
  pyAssignInPrm s f v = pyDeref_ $ \adr obj -> do ctx <- views executionContext Set.fromList
                                                  v' <- addTaint (extendTainted v ctx)
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

  -- a sink reports the taint of its argument, including the taint of everything reachable from it
  applyXPrim TaintSink loc _ = \case
                              [_, v] -> reportReachableTaint loc v
                              _ -> Debug.trace "arity error" $ pyError ArityError

  applyXPrim Log loc _ = \case
                              [v] -> reportReachableTaint loc v
                              _ -> Debug.trace "arity error" $ pyError ArityError
  applyXPrim ObjectTaint loc _ = \case
                                [a] -> withTaint @Taint (source loc) (addTaint a)
                                _   -> pyError ArityError
  -- pandas.read_csv(path, dtype={column: dtype}) reads a DataFrame whose
  -- columns are sources of tainted data when their dtype is sensitive (e.g.,
  -- "sensitive_float64"). Columns that dtype does not list are not tainted.
  -- This is only sound because sensitivity is encoded in dtype and the Series
  -- abstraction does not contain any data of the file.
  --
  -- With 'ObjectLevel' taint, the DataFrame itself is tainted by the taint of
  -- its columns, so the DataFrame is tainted as a whole if one of its columns
  -- is. Everything computed from it (e.g., any of its columns, or the DataFrame
  -- without its sensitive columns) is then tainted as well, since it is
  -- computed by dereferencing the DataFrame.
  applyXPrim PandasReadCsv loc kwa = \case
                                [_] -> maybe (dataFrame [] =<< untaintedColumn) (pyDeref'' @DctPrm withDtypes) (List.lookup "dtype" kwa)
                                _   -> pyError ArityError
    where withDtypes (CPDict _ dtypes _) = do named <- mapM (\(col, dtype) -> (col,) <$> column col dtype) (Map.toList dtypes)
                                              dataFrame named =<< untaintedColumn
          withDtypes (TopDict _ dtype)   = do col <- column "" dtype
                                              dataFrame [] . join col =<< untaintedColumn
          -- a column with the given dtype
          column col dtype = pyDeref'' @StrPrm (\d -> condCP (return $ isSensitiveDtype d)
                                                              (withTaint @Taint (source loc) (addTaint =<< series col d))
                                                              (series col d)) dtype
          -- a column that is not listed in dtype
          untaintedColumn = series "" CP.Top
          series col d = do el <- dtypeElement (tagAs (SrsElm col) loc) d
                            pyStore (tagAs (DfrCol col) loc) (from @SrsPrm (Series (CP.Constant Prelude.True) el))
          dataFrame named other = do
             df <- pyStore loc (from @DfrPrm (fromColumns (CP.Constant Prelude.True) named (BottomLifted.Value other)))
             view taintGranularity >>= \case
                ColumnLevel -> return df
                ObjectLevel -> let columnTaint = joins [ t | Tainted _ t <- other : map snd named ]
                               in withTaint @Taint columnTaint (addTaint df)
  applyXPrim _ _ _ = error "primitive not implemented"

-- | Reports a taint violation at the given location if the given value, or
-- anything reachable from it, is tainted
reportReachableTaint :: forall obj m . (StoreM ObjAdr obj m, PyObj obj, Trace PyRefTaint obj, MonadReport (DiagnosticType PyRefTaint) m, MonadJoin m)
                     => PyLoc -> PyRefTaint -> m PyRefTaint
reportReachableTaint loc v = do
   t <- reachableTaint @obj v
   condCP (pure $ Debug.traceWith ((("isTainted " ++ show loc ++ ">> ") ++) . show) $ isTainted t)
          (reportDiagnostic loc (TaintViolation (fmap (Set.map trackingToTuple) t) v) >> return v)
          (return v)
