-- | Interaction with the Monarch analysis
module Analysis(AnalysisResult(..), analyze) where

import Syntax.Python
import Data.Maybe
import Analysis.Python.Fixpoint.TaintTracked hiding (analyze)
import qualified Analysis.Python.Fixpoint.TaintTracked as Taint hiding (analyze)
import qualified Analysis.Python.Fixpoint.Characteristics as Characteristics
import Analysis.Python.Common
import Data.List
import Text.Printf (printf)
import Control.Monad.DomainError
import Analysis.Python.Escape (PyEsc)
import qualified Data.Set as Set
import Analysis.Python.Monad.Class
import Language.Python.Common (annot)
import Domain.Python.Syntax
import Data.IORef
import System.IO
import Data.Function ((&))
import Control.Monad.Escape (MayEscape(..))
import "maf2-analysis" Data.Graph (edges)
import Lattice hiding (Value)
import Analysis.Store (CountingMap, store)
import qualified Lattice.TopLiftedLattice as TL

import Benchmark.Python.Programs
import Analysis.Monad.Store (StoreM(lookupAdr))
import Control.Monad
import Lattice.Tainted
import Data.Kind (Type)
import Analysis.Monad.FunctionCharacteristics
import "maf2-analysis" Data.Graph hiding (fromList)
import Syntax.Python qualified as Py
import Analysis.Python.Diagnostics
import Analysis.Python.Monad.TaintTracked (PyRefTaint)
import Analysis.Python.Fixpoint.TaintTracked qualified as Py hiding (analyze)
import qualified Analysis.Python.Escape as Py
import qualified Data.Map.Lazy as Data.Map
import qualified Data.Map.Lazy as Map
import Syntax.Span

-------------------------------
-- Analysis results and reporting
-------------------------------

data AnalysisResult = AnalysisResult {
    -- | A mapping for each source location to a set of diagnostic messages
    messagePerLine  :: Map PyLoc (Set String),
    -- | A mapping from each source location to the set of source locations that
    -- influence the result of this source location.
    influencedLines ::  Map Span (Set Span)
  } deriving (Ord, Eq, Show)

type TaintResult = (Map PyCmp PyRes, Store PyDomainCP, SimpleGraph (CP String) (CP Bool), Set PyTaintDiagnostic)
toResult :: TaintResult -> AnalysisResult
toResult (_, _, _, diagnostics) =
    AnalysisResult
      (Map.fromList (map diagnosticToTuple (Set.toList diagnostics)))
      (Map.fromList (concatMap extractInfluencedLines (Set.toList diagnostics)))
  where
    diagnosticToTuple :: PyTaintDiagnostic -> (PyLoc, Set String)
    diagnosticToTuple (Diagnostic reason loc) = (loc, Set.singleton $ show reason)

    -- Extract influenced lines from TaintViolation diagnostics
    extractInfluencedLines :: PyTaintDiagnostic -> [(Span, Set Span)]
    extractInfluencedLines (Diagnostic (TaintViolation locs _) pyLoc) =
      case locs of
        TL.Value sourcesSet ->
          -- For the sink (converted to Span), collect all source spans and their influenced spans
          let allInfluenced = Set.unions $ Set.map (uncurry Set.insert) sourcesSet
          in [(spanOf pyLoc, allInfluenced)]
        TL.Top -> []
    extractInfluencedLines _ = []

-------------------------------
-- Run an analysis
-------------------------------


-- | Parse and analyze the given string, returns "Nothing" if the file could not be parsed
analyze :: String -- ^ name of the file to analyze (for correctly assigning filenames to AST's spans)
        -> String -- ^ contents of the file to analyze
        -> Maybe AnalysisResult
analyze filename contents =
  parse filename contents <&> toResult . Taint.analyzeCP
