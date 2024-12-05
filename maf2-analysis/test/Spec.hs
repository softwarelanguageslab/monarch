module Main where 

import Test
import qualified Benchmark.Programs as SchemeBenchmarks
import qualified Analysis.Scheme.Simple as Scheme
import qualified Syntax.Scheme
import qualified Benchmark.Programs as SchemeBenchmarks


-- | Smoke tests for Scheme, checks whether 
-- all benchmark programs can be analyzed successfully.
schemeSmoke :: Spec
schemeSmoke = 
   mapM_ (analysisSucceeds
            "Scheme analysis" 
            defaultTimeout 
            (return . Scheme.cpAnalyze)
            (return . Syntax.Scheme.parseString')) SchemeBenchmarks.quick

-- | Smoke tests for Python, checkds whether 
-- all test programs can be analyzed succesfully.

main :: IO ()
main = hspec $ do 
   describe "Scheme smoke tests" schemeSmoke
