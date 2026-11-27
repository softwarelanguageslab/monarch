module PythonTaintSpec(spec) where

import Test

import Analysis.Python.Fixpoint.TaintTracked (analyzeCP)
import Analysis.Python.Diagnostics (Diagnostic(..), DiagnosticType(..))
import qualified Lattice.TopLiftedLattice as TL
import Syntax.Span (ESpan(..), Position(..))
import Domain.Python.Syntax (parse)
import Data.Maybe (fromMaybe)
import qualified Data.Set as Set

-- | Programs for the taint analysis, each with the locations of the sinks at
-- which the analysis should report a taint violation
programs :: [(FilePath, [String])]
programs = [
      ("programs/python/tests/taint/sink.py",                       ["10:12"]),
      ("programs/python/tests/taint/sink-list.py",                  ["4:12"]),
      ("programs/python/tests/taint/sink-object.py",                ["11:12", "14:12"]),
      ("programs/python/tests/taint/sink-closure.py",               ["13:12"]),
      ("programs/python/tests/taint/dataframe-map.py",              []),
      ("programs/python/tests/taint/dataframe-map-sensitive.py",    ["9:12"]),
      ("programs/python/tests/taint/dataframe-map-all.py",          ["9:12"]),
      ("programs/python/tests/taint/dataframe-map-closure.py",      ["10:12"]),
      ("programs/python/tests/taint/dataframe-map-chain.py",        []),
      ("programs/python/tests/taint/series-map.py",                 ["11:12"]),
      ("programs/python/tests/taint/dataframe-arithmetic.py",       ["14:12"]),
      ("programs/python/tests/taint/dataframe-bonus.py",            ["8:5"]),
      ("programs/python/tests/taint/dataframe-column.py",           ["11:12"]),
      ("programs/python/tests/taint/dataframe-sink-whole.py",       ["8:12"]),
      ("programs/python/tests/taint/dataframe-no-dtype.py",         []),
      ("programs/python/tests/taint/dataframe-dropna.py",           ["8:12"]),
      ("programs/python/tests/taint/dataframe-drop.py",             []),
      ("programs/python/tests/taint/dataframe-drop-axis.py",        []),
      ("programs/python/tests/taint/dataframe-drop-axis-other.py",  ["8:12"]),
      ("programs/python/tests/taint/dataframe-drop-other.py",       ["8:12"]),
      ("programs/python/tests/taint/dataframe-drop-rows.py",        ["8:12"]),
      ("programs/python/tests/taint/dataframe-drop-both.py",        []),
      ("programs/python/tests/taint/dataframe-drop-none.py",        []),
      ("programs/python/tests/taint/dataframe-drop-get.py",         []),
      ("programs/python/tests/taint/dataframe-drop-get-unnamed.py", []),
      ("programs/python/tests/taint/dataframe-drop-get-unknown.py", ["17:12"]),
      ("programs/python/tests/taint/dataframe-drop-setitem-branch.py", ["15:12"]),
      ("programs/python/tests/taint/dataframe-dropna-subset.py",    []),
      ("programs/python/tests/taint/dataframe-filter.py",           ["9:12"]),
      ("programs/python/tests/taint/dataframe-filter-clean.py",     [])
   ]

spec :: Spec
spec = describe "Python taint analysis" $ do
   mapM_ reportsViolations programs
   mapM_ explainsViolations explanations

-- | Programs for the taint analysis, each with the lines of the statements
-- that the explanation of its taint violations (the sources and the spans
-- that influenced them) should cover
explanations :: [(FilePath, [Int])]
explanations = [
      -- the column assignment @df["bonus"] = ...@ (line 7) influences the sink
      ("programs/python/tests/taint/dataframe-bonus.py",            [6, 7])
   ]

explainsViolations :: (FilePath, [Int]) -> Spec
explainsViolations (file, expected) =
   it (file ++ " explains its taint violations with lines " ++ show expected) $ do
      contents <- readFile file
      let program = fromMaybe (error $ "could not parse " ++ file) (parse file contents)
          (_, _, _, diagnostics) = analyzeCP program
          influenced (Diagnostic (TaintViolation (TL.Value sources) _) _) = Set.unions (Set.map (uncurry Set.insert) sources)
          influenced _ = Set.empty
          lines' = Set.map (line . startPosition) (Set.unions (Set.map influenced diagnostics))
      Set.fromList expected `Set.isSubsetOf` lines' `shouldBe` True

reportsViolations :: (FilePath, [String]) -> Spec
reportsViolations (file, expected) =
   it (file ++ " reports taint violations at " ++ show expected) $ do
      contents <- readFile file
      let program = fromMaybe (error $ "could not parse " ++ file) (parse file contents)
          (_, _, _, diagnostics) = analyzeCP program
          locations = Set.map (\(Diagnostic _ loc) -> show loc) diagnostics
      locations `shouldBe` Set.fromList expected
