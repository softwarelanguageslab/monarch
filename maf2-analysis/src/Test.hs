-- | Library code for testing infrastructure
module Test(analysisSucceeds, defaultTimeout, soundBenchmark, module Test.Hspec) where

import Control.DeepSeq
import Test.Hspec
import System.Timeout
import Data.Maybe (fromMaybe)


-- | Default timeout in seconds
defaultTimeout :: Int 
defaultTimeout = 5

-- |  Smoke test: run an analysis on the given file, and check whether it fails (i.e., crashes). If it does crash, the test fails and succeeds otherwise.
analysisSucceeds :: (NFData res, Show err) =>
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
analysisSucceeds name timeoutSec analyze parse filename = do
   it ("The " ++ name ++ " of " ++ show filename ++ " should not fail") $ do 
      contents <- readFile filename
      parsed <- either (error . ("could not parse " ++) . show) id <$> (parse contents)
      -- NOTE: @deepseq@ is required here as 
      -- the analysis might otherwise not complete, 
      -- resulting in the possibility that the 
      -- error is not discovered.
      --
      -- This is not an issue whenever we run the 
      -- analysis **interactively** since all its 
      -- results are printed.
      --
      -- The need for the `NFData` constraint here is rather unfortunate, but is required for @deepseq@ to work.
      () <- fromMaybe (error "timeout while executing analysis") <$> 
               timeout (timeoutSec*(10^6)) (analyze parsed) >>= (`deepseq` return ())
      return ()

soundBenchmark :: (NFData res, Show err) =>
  -- | Name of the analysis
  String ->
  -- Timeout value in seconds
  Int -> 
  -- | an analysis function
  (e -> IO res) ->
  -- | a concrete interpreter
  (e -> IO concreteRes) ->
  -- | a function to compare the results
  (concreteRes -> res -> IO Bool) ->
  (String -> IO (Either err e)) ->
  -- | file to analyze
  String ->
  Spec
soundBenchmark name timeoutSec analyze interpret subsumes parse benchmark = do
   it ("The " ++ name ++ " of " ++ show benchmark ++ " is sound") $ do 
      contents <- readFile benchmark
      parsed <- either (error . ("could not parse " ++) . show) id <$> (parse contents)
      analysisResult <- fromMaybe (error "timeout while executing analysis") <$>
        timeout (timeoutSec*(10^6)) (analyze parsed)
      concreteResult <- interpret parsed 
      isSound <- concreteResult `subsumes` analysisResult
      isSound `shouldBe` True