-- | Library code for testing infrastructure
module Test(analysisSucceeds, defaultTimeout, module Test.Hspec) where

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
