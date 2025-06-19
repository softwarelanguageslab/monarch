module PythonSmokeSpec(spec) where

import Test

import qualified Benchmark.Python.Programs as Benchmarks
import Analysis.Python.Fixpoint.Taint (analyzeCP)
import Domain.Python.Syntax (parse)

-- | Smoke tests for Scheme, checks whether 
-- all benchmark programs can be analyzed successfully.
spec :: Spec
spec =
   mapM_ (analysisSucceeds
            "Python analysis"
            defaultTimeout
            (return . analyzeCP)
            (\ program -> return (maybeToEither "parse error" $ parse "" program))) Benchmarks.allBenchmarks