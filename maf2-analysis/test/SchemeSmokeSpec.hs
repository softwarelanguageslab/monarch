module SchemeSmokeSpec(spec) where

import Test
import qualified Benchmark.Scheme.Programs as SchemeBenchmarks
import qualified Analysis.Scheme.Simple as Scheme
import qualified Syntax.Scheme


-- | Smoke tests for Scheme, checks whether 
-- all benchmark programs can be analyzed successfully.
spec :: Spec
spec =
   mapM_ (analysisSucceeds
            "Scheme analysis"
            defaultTimeout
            (return . Scheme.cpAnalyze)
            (return . Syntax.Scheme.parseString')) SchemeBenchmarks.quick
