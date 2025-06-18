module PythonSmokeSpec(spec) where

import Test
import System.Timeout
import Data.Maybe (fromMaybe)

import qualified Benchmark.Python.Programs as Benchmarks
import Analysis.Python.Fixpoint.Taint (analyzeCP)
import Domain.Python.Syntax (parse)


-- |  Smoke test: run an analysis on the given file, and check whether it fails (i.e., crashes). If it does crash, the test fails and succeeds otherwise.
-- version where we print the result to force evaluation instead of using deepseq
-- (temporary until I figure out how to make the python result an instance of NFData)
analysisSucceedsShow :: (Show res, Show err) =>
  -- | Name of the analysis 
  String ->
  -- Timeout value in seconds
  Int ->
  -- | an analysis function
  (e -> IO res) ->
  -- | parse function
  (String -> IO (Either err e)) ->
  -- | file to analyze
  String ->
  Spec
analysisSucceedsShow name timeoutSec analyze parse filename = do
   it ("The " ++ name ++ " of " ++ show filename ++ " should not fail") $ do
      contents <- readFile filename
      parsed <- either (error . ("could not parse " ++) . show) id <$> parse contents
      res <- timeout (timeoutSec*(10^6)) (analyze parsed) >>= (return . show) . fromMaybe (error "timeout while executing analysis")
      putStrLn res
      return ()


-- | Smoke tests for Scheme, checks whether 
-- all benchmark programs can be analyzed successfully.
spec :: Spec
spec =
   mapM_ (analysisSucceedsShow
            "Python analysis"
            defaultTimeout
            (return . analyzeCP)
            (\ program -> return (maybeToEither "parse error" $ parse "" program))) Benchmarks.allBenchmarks