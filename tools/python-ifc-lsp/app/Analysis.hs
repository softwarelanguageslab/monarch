-- | Interaction with the Monarch analysis
module Analysis(AnalysisResult(..), analyze) where

import Syntax.Python
import Data.Maybe
import Analysis.Python.Fixpoint.Taint hiding (analyze)
import qualified Analysis.Python.Fixpoint.Taint as Taint hiding (analyze)
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
import qualified Lattice.BottomLiftedLattice as BL

import Benchmark.Python.Programs
import Analysis.Monad.Store (StoreM(lookupAdr))
import Control.Monad
import Lattice.Tainted
import Data.Kind (Type)
import Analysis.Monad.FunctionCharacteristics
import "maf2-analysis" Data.Graph hiding (fromList)
import Syntax.Python qualified as Py
import Analysis.Python.Monad.Taint (PyRefTaint)
import Analysis.Python.Fixpoint.Taint qualified as Py hiding (analyze)
import qualified Analysis.Python.Escape as Py
import qualified Data.Map.Lazy as Data.Map
import qualified Data.Map.Lazy as Map

-------------------------------
-- Analysis results and reporting
-------------------------------

newtype AnalysisResult = AnalysisResult {
    messagePerLine :: Map PyLoc (Set String)
  } deriving (Ord, Eq, Show)

type TaintResult = (Map PyCmp PyRes, Store PyDomainCP, SimpleGraph (CP String) (CP Bool))
toResult :: TaintResult -> AnalysisResult
toResult (rsto, _, _) =
    AnalysisResult $
      Map.fromList
    $ map (first (fromMaybe Py.emptyPyLoc . Py.locOfCmp))
    $ Map.toList
    $ fmap (Set.map show . asException) rsto
  where asException :: MayEscape (Tainted t (Set (PyEsc PyRefTaint))) v -> Set PyRefTaint
        asException = \case Escape es -> getExceptions es
                            MayBoth _ es -> getExceptions es
                            _   -> Set.empty
        getExceptions = foldMap (\case (Py.Exception e) -> Set.singleton e ; _ -> Set.empty)  . getValue
        getValue (Tainted v _) = v

-------------------------------
-- Run an analysis
-------------------------------


-- | Parse and analyze the given string, returns "Nothing" if the file could not be parsed
analyze :: String -- ^ name of the file to analyze (for correctly assigning filenames to AST's spans)
        -> String -- ^ contents of the file to analyze
        -> Maybe AnalysisResult
analyze filename contents =
  parse filename contents <&> toResult . Taint.analyzeCP
