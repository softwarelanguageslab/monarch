{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
-- | Precision benchmarks by comparing blame errors against blame errors in a concrete interpreter.
--
-- These benchmarks assume that the `simpleactor` language is installed by running `raco pkg install`
-- in the `racket/simpleactor` directory.
module Benchmark.SimpleActor.Precision(runPrecision) where

import Control.Lens.TH
import Control.Monad.Except
import Control.Monad.State
import qualified Data.List as List
import Syntax.Scheme.Parser
import Syntax.Span
import RIO hiding (Handle)
import qualified RIO.Set as Set
import System.Directory
import System.Process
import Control.Monad.Escape
import Analysis.SimpleActor.Monad
import Data.Monoid
import System.ConcurrentHandle hiding (openFile)
import Control.Monad.Trans.Maybe
import Control.Concurrent.ParallelIO.Global

-------------------------------------------------------------
-- Concrete interpreter
-------------------------------------------------------------

-- | The default interpreter timeout in microseconds
defaultInterpreterTimeout :: Int
defaultInterpreterTimeout = 30*1000*1000*1000

type InterpreterM m = (MonadIO m, MonadError String m)

-- | Create a temporary file based on the given filename 
createTemp :: FilePath -> String -> IO FilePath
createTemp originalPath suffix = return tempFile
  where tempFile = originalPath ++ ".out" ++ suffix


-- | Returns the environment variables required by the interpreter to run
-- and output its log
interpreterEnv :: FilePath -- ^ path to temporary output file
               -> [(String, String)]
interpreterEnv path = [("SIMPLEACTOR_OUT", path)]


runInterpreter :: InterpreterM m
               => String           -- ^ the input file to run
               -> Int              -- ^ the number of runs already processed
               -> m (Bool, [SExp]) -- ^ list of datums corresponding to the blames and message sends in the program
runInterpreter filename i = do
    tempFile <- liftIO (createTemp filename ("." ++ show i))
    devNull <- liftIO (openFile "/dev/null" ReadWriteMode)
    (_, _, _, processHandle) <- liftIO (createProcess ((proc "racket" [filename]) { env = Just (interpreterEnv tempFile), std_out = UseHandle devNull }))
    isTimedOut <- fmap isNothing $ liftIO $ timeout defaultInterpreterTimeout (waitForProcess processHandle) -- TODO: do something with the exit code?
    r <- either throwError return . parseSexp =<< liftIO (readFile tempFile)
    liftIO (removeFile tempFile)
    return (isTimedOut, r)

-------------------------------------------------------------
-- Parsing interpreter results
-------------------------------------------------------------

-- | Collection of results from the interpreter or analysis
newtype Results = Results {
    -- | Set of blame locations
    _blames :: Set Span
  } deriving (Ord, Eq, Show)

instance Semigroup Results where
  (<>) (Results b1) (Results b2) = Results $ Set.union b1 b2

instance Monoid Results where
  mempty = Results Set.empty

$(makeLenses ''Results)

-- | Initial value for the interpreter results
initialResults :: Results
initialResults = Results Set.empty


-- | Monad in which the interpreter results are collected
type InterpreterResultM m = (MonadState Results m, -- state over collected results 
                             MonadReader String m -- name of the file in the environment
                            )

-- | Parse a location given as a datum to a 'Span'
parseLoc :: SExp -> String -> Span
parseLoc (Atom "loc" _ ::: Num line _ ::: Num col _ ::: SNil _) filename = Span filename pos pos
  where pos =  Position (fromIntegral line) (fromIntegral col)
parseLoc expr _ = error $ "invalid format for location datum " ++ show expr

-- | Parse a single entry in the log
parseLog :: InterpreterResultM m => SExp -> m ()
parseLog (Atom "blame" _ ::: _party ::: loc ::: SNil _) = ask >>= (modify . over blames . Set.insert . parseLoc loc)
parseLog (Atom "msg" _ ::: _ref ::: _msg ::: SNil _) = return () -- TODO: support messages and mailboxes
parseLog _ = return () -- TODO: add some kind of warning here

-- | Parse all log entries
parseLogs :: InterpreterResultM m => [SExp] -> m ()
parseLogs = mapM_ parseLog

-- | Convert logs to interpreter results
convertAnalysisResult :: String -> [SExp] -> Results
convertAnalysisResult filename = flip runReader filename
                               . flip execStateT initialResults
                               . parseLogs

maxRuns :: Int
maxRuns = 3

-- | Run the given program in the concrete a number of times and return a set of results
runConcrete :: String -> IO [(Bool, Results)]
runConcrete file = fmap fold $  parallel $ map (\i -> fmap (either error id)  -- handle timeouts by reporting them and using partial results
                                                    $  runExceptT
                                                    $  List.singleton . fmap (convertAnalysisResult file)
                                                   <$> runInterpreter file i) [0..maxRuns]

-- | Same as 'runConcrete' but returns the results as a single
-- set of blame locations.
runConcrete' :: String -> IO (Bool, Results)
runConcrete' = fmap (first getAny . foldMap (first Any)) . runConcrete

-------------------------------------------------------------
-- Static Analysis
-------------------------------------------------------------

-- | The default analysis timeout in microseconds
defaultAnalysisTimeout :: Int
defaultAnalysisTimeout = 10*60*1000*1000*1000

-- | Return the locations of blame errors predicted by the analysis
getBlames :: MayEscape (Set ActorError) v -> Set Span
getBlames = \case MayBoth _ es -> foldMap extractBlames (Set.toList es)
                  Escape es    -> foldMap extractBlames (Set.toList es)
                  _            -> Set.empty
      where extractBlames (ActorError (BlameError _ loc)) = Set.singleton loc
            extractBlames _ = Set.empty

-- | Analyze the given file, returns 'Nothing' if the analysis
-- of that file times out (according to 'defaultAnalysisTimeout')
analyzeFile :: FilePath -> MaybeT IO Results
analyzeFile _inputFilename = undefined
    -- parse the file
    -- program <- liftIO (readFile inputFilename) <&> (either error id . parseFromString' (Just inputFilename))
    -- result <- MaybeT $ timeout defaultAnalysisTimeout $ Analysis.analyze program
    -- let sequentialResults = Analysis.resultMap result
    -- liftIO (putStrLn $ "analysis of " ++ inputFilename ++ " completed")

    -- -- process results    
    -- let sequentialResMap = fmap SeqAnalysis.cmpRes sequentialResults
    -- let blameRes = foldMap (foldMap (getBlames . SeqAnalysis.escapeRes . snd) . Map.toList . snd) (Map.toList sequentialResMap)

    -- return $ Results blameRes

------------------------------------------------------------
-- Precision results
------------------------------------------------------------

-- | Output that the given benchmark has timed out
outputTimeout :: FilePath -> Handle -> IO ()
outputTimeout path hdl =
  hPutStrLn hdl $ path ++ ";t;0"

-- | Run the cocnrete interpreter and compare its analysis result
compareConcrete :: FilePath -- ^ the path to the analyzed file
                -> Handle   -- ^ a handle for the output
                -> Results  -- ^ the results of the concrete analysis
                -> IO ()
compareConcrete path hdl res = do
  (timedout, interpResults) <- runConcrete' path
  let concrBlameSize =  Set.size interpResults._blames
  let abstrBlameSize =  Set.size res._blames
  -- soundness check: concrete reports less blame errors
  -- than the abstract
  unless (concrBlameSize <= abstrBlameSize) $ do
    let missing = Set.difference interpResults._blames res._blames
    putStrLn $ "missing: " ++ show missing
    error "analysis is unsound"
  hPutStrLn hdl $ path ++ ";" ++ show (abstrBlameSize - concrBlameSize) ++ ";" ++ if timedout then "1" else "0"

-- | Output the precision results of a single benchmark to the given file handle
runPrecision :: FilePath -> Handle -> IO ()
runPrecision path hdl = do
  putStrLn path
  anlResult <- runMaybeT (analyzeFile path)
  maybe (outputTimeout path hdl) (compareConcrete path hdl) anlResult
