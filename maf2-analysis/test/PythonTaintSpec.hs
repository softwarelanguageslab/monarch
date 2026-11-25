module PythonTaintSpec(spec) where

import Test

import Analysis.Python.Fixpoint.TaintTracked (analyzeCP)
import Analysis.Python.Diagnostics (Diagnostic(..))
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
      ("programs/python/tests/taint/dataframe-column.py",           ["11:12"]),
      ("programs/python/tests/taint/dataframe-sink-whole.py",       ["8:12"]),
      ("programs/python/tests/taint/dataframe-no-dtype.py",         []),
      ("programs/python/tests/taint/dataframe-dropna.py",           ["8:12"]),
      ("programs/python/tests/taint/dataframe-dropna-subset.py",    []),
      ("programs/python/tests/taint/dataframe-filter.py",           ["9:12"]),
      ("programs/python/tests/taint/dataframe-filter-clean.py",     [])
   ]

spec :: Spec
spec = describe "Python taint analysis" $ mapM_ reportsViolations programs

reportsViolations :: (FilePath, [String]) -> Spec
reportsViolations (file, expected) =
   it (file ++ " reports taint violations at " ++ show expected) $ do
      contents <- readFile file
      let program = fromMaybe (error $ "could not parse " ++ file) (parse file contents)
          (_, _, _, diagnostics) = analyzeCP program
          locations = Set.map (\(Diagnostic _ loc) -> show loc) diagnostics
      locations `shouldBe` Set.fromList expected
