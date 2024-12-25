{-# LANGUAGE DeriveGeneric #-}
-- | Benchmarks for the ASE paper
module ASE.Benchmark where

-- Syntax
import Syntax.AST
import Syntax.Simplifier
import Syntax.Compiler

-- Analyses
import qualified Analysis.ASE.Common as Common
import qualified Analysis.ASE.Smallstep as SmallStep
import qualified Analysis.ASE.WidenedStates as SmallStepWidened

-- Haskell-related
import Control.DeepSeq
import Control.Monad
import GHC.Generics
import RIO hiding (hFlush, hClose)

-- Files
import System.FilePath.Posix
import GHC.IO.Handle

-- Time related
import Data.Time
import Data.Time.Clock.System
import Data.Time.Format.ISO8601

-- Command line parsing imports
import Options.Applicative
import GHC.IO.Handle.Text (hPutStrLn)

------------------------------------------------------------
-- Command-line interface
------------------------------------------------------------

newtype BenchmarkOptions = BenchmarkOptions {
      outputFilename :: String
   } deriving (Show, Ord, Eq)

benchmarkOptions :: Parser BenchmarkOptions 
benchmarkOptions = BenchmarkOptions <$> strOption ( long "file" <> short 'f' <> help "Output filename" )

benchmarkCmd :: BenchmarkOptions -> IO () 
benchmarkCmd (BenchmarkOptions { .. }) = do 
      let benchmarks = testBenchmarkPrograms
      putStrLn "Running precision benchmarks"
      runPrecisionBenchmarks benchmarks precisionBenchmarkOutput
      putStrLn "Running time benchmarks"
      runTimeBenchmarks benchmarks timeBenchmarkOutput
   where (base, extension) = splitExtension outputFilename
         timeBenchmarkOutput = addExtension (base ++ "-time") extension
         precisionBenchmarkOutput = addExtension (base ++ "-precision") extension

------------------------------------------------------------
-- Benchmark programs
------------------------------------------------------------

benchmarkPrograms :: [String]
benchmarkPrograms = [
      "games_snake.rkt",
      "games_tetris.rkt",
      "games_zombie.rkt",
      "mochi_fold-div.rkt",
      "mochi_hors.rkt",
      "mochi_hrec.rkt",
      "mochi_l-zipunzip.rkt",
      "mochi_map-foldr.rkt",
      "mochi_mappend.rkt",
      "mochi_mem.rkt",
      "mochi_mult.rkt",
      "mochi_neg.rkt",
      "mochi_nth0.rkt",
      "mochi_r-file.rkt",
      "mochi_r-lock.rkt",
      "mochi_reverse.rkt",
      "mochi_sum.rkt",
      "mochi_zip.rkt",
      "sergey_blur.rkt",
      "sergey_eta.rkt",
      "sergey_kcfa2.rkt",
      "sergey_kcfa3.rkt",
      "sergey_loop2.rkt",
      "sergey_mj09.rkt",
      "sergey_sat.rkt",
      "softy_append.rkt",
      "softy_cpstak.rkt",
      "softy_last-pair.rkt",
      "softy_last.rkt",
      "softy_length-acc.rkt",
      "softy_length.rkt",
      "softy_member.rkt",
      "softy_recursive-div2.rkt",
      "softy_subst.rkt",
      "softy_tak.rkt"
   ]

testBenchmarkPrograms :: [String] 
testBenchmarkPrograms = [
      "programs/test/ase/simpleloop-anf.scm",
      "programs/test/ase/blame.scm",
      "programs/test/ase/blame-unreachable.scm"
   ]

-- | Loads a program from disk, translates it to a simpler form amenable for verification, parses and compiles it
loadProgram :: String -> IO Exp
loadProgram = readFile >=> return . either (error . ("error while parsing" ++)) id . parseFromString

------------------------------------------------------------
-- Timing
------------------------------------------------------------

-- | Get the current time in nanoseconds
getTime :: IO Integer
getTime = do
   currentTime <- getSystemTime
   return $ fromIntegral (systemSeconds currentTime) * 1000 * 1000 * 10000 + fromIntegral (systemNanoseconds currentTime)

-- | The total of iterations to run the benchmark for
totalIterations :: Integer
totalIterations = 20

time :: NFData a => IO a -> IO (a, Integer)
time act = do
   start <- getTime
   v <- act
   end <- v `deepseq` getTime
   return (v, end - start)

------------------------------------------------------------
-- Analysis results and configurations
------------------------------------------------------------

-- | A polymorphic analysis result, no information about this 
-- analysis result is known, except that it can be inspected 
-- and evaluated using `deepseq`.
data AnalysisResult where
   AnalysisResult :: (Common.IsAnalysisResult a, NFData a) => a -> AnalysisResult

instance NFData AnalysisResult where
   rnf (AnalysisResult a) = rnf a

instance Common.IsAnalysisResult AnalysisResult where 
   failedAssertions (AnalysisResult r) = Common.failedAssertions r

analysisConfigurations :: [(String, Exp -> IO AnalysisResult)]
analysisConfigurations = concatMap (\k -> [
      ("smallstep;" ++ show k, fmap AnalysisResult . SmallStep.analyze k),
      ("widened per state;" ++ show k, fmap AnalysisResult . SmallStepWidened.analyze k),
      ("global widening;"++show k, fmap AnalysisResult . SmallStepWidened.analyzeGlobal k)
   ]) [1..5]


-- | The result of running a single benchmark once
data Result = Result {
      benchmarkName :: String,
      benchmarkIteration :: Integer,
      benchmarkAnalysisResult :: AnalysisResult,
      benchmarkTime :: Integer
   } deriving (Generic)

instance NFData Result

class CSVResult r where    
   -- | Write a single result to a file
   writeToHandle :: Handle  -- ^ the handle to write the results to
                 -> String  -- ^ the name of the program 
                 -> r       -- ^ the result to write 
                 -> IO ()


instance CSVResult Result where 
   writeToHandle hdl programName (Result { .. }) = do
      hPutStr hdl programName >> hPutStr hdl ";"
      hPutStr hdl benchmarkName >> hPutStr hdl ";"
      hPutStr hdl (show benchmarkIteration) >> hPutStr hdl ";"
      hPutStr hdl (show benchmarkTime) >> hPutChar hdl '\n'
      hFlush hdl

-- | Open an output file suffixed with the timestamp
openTimestamped :: FilePath -> IO Handle
openTimestamped path = do
      currentTime <- getCurrentTime
      let formattedTime = iso8601Show currentTime
      let filename = addExtension (base ++ "-" ++ formattedTime) extension
      openFile filename WriteMode
   where (base, extension) = splitExtension path

-- | Run the timing benchmarks over the set of programs
runTimeBenchmarks :: [String] -- ^ the programs to run the benchmark on
                  -> String   -- ^ the name of the file to output the benchmark results to 
                  -> IO ()
runTimeBenchmarks benchmarks outputFilename = do
      outputHandle <- openTimestamped outputFilename
      hPutStrLn outputHandle "programName;configuration;k;iteration;time"
      mapM_ (\(runner,filename) -> runSingle runner filename outputHandle >> putStrLn (filename ++ " " ++ fst runner ++ " done")) benchmarkWithConfigurations
      hClose outputHandle
   where runSingle (name, runner) program outputHandle = do
            expr <- loadProgram program
            mapM_ (\i -> time (runner expr) <&> uncurry (Result name i) >>= (\result -> putStr "*" >> hFlush stdout >> writeToHandle outputHandle program result)) [0..totalIterations]
         benchmarkWithConfigurations = [ (runner, benchmark) | runner <- analysisConfigurations, benchmark <- benchmarks ]

------------------------------------------------------------
-- Precision benchmarks
------------------------------------------------------------


data PrecisionResult = PrecisionResult {
      precisionName :: String, 
      precisionFailedAsserts :: Integer
   } 

instance CSVResult PrecisionResult where  
   writeToHandle hdl programName (PrecisionResult { .. }) = do
      hPutStr hdl programName >> hPutStr hdl ";" 
      hPutStr hdl precisionName >> hPutStr hdl ";" 
      hPutStr hdl (show precisionFailedAsserts)
      hPutChar hdl '\n' >> hFlush hdl

-- | Run the precision benchmarks on the given list of programs and output the results 
-- to the file with the given name (opened in timestamped mode)
runPrecisionBenchmarks :: [String] -- ^ the list of benchmarks to run precision tests for
                       -> String   -- ^ the output filename
                       -> IO ()
runPrecisionBenchmarks benchmarks outputFilename = do 
      outputHandle <- openTimestamped outputFilename
      hPutStrLn outputHandle "programName;precisionName;k;failedAsserts"
      mapM_ (\(runner, filename) -> runSingle runner filename >>= writeToHandle outputHandle filename) benchmarksWithConfigurations
      hClose outputHandle
   where runSingle (name, runner) program = do 
            putStrLn $ "Running " ++ name ++ " on " ++ program ++ " for precision measurements"
            expr <- loadProgram program 
            result <- runner expr
            return (PrecisionResult name (Common.failedAssertions result))
         benchmarksWithConfigurations = [ (runner, benchmark) | runner <- analysisConfigurations, benchmark <- benchmarks ]
