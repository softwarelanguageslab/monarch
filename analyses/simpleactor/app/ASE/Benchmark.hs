{-# LANGUAGE DeriveGeneric #-}
-- | Benchmarks for the ASE paper
module ASE.Benchmark where

-- Syntax
import Syntax.AST
import Syntax.Simplifier
import Syntax.Compiler

-- Analyses
import qualified Analysis.ASE.Smallstep as SmallStep
import qualified Analysis.ASE.WidenedStates as SmallStepWidened

-- Haskell-related
import Control.DeepSeq
import Control.Monad
import GHC.Generics
import RIO hiding (hFlush)

-- Files
import System.FilePath.Posix
import GHC.IO.Handle

-- Time related
import Data.Time
import Data.Time.Clock.System
import Data.Time.Format.ISO8601


-- Command line parsing imports
import Options.Applicative


------------------------------------------------------------
-- Command-line interface
------------------------------------------------------------

newtype BenchmarkOptions = BenchmarkOptions {
      outputFilename :: String
   } deriving (Show, Ord, Eq)

benchmarkOptions :: Parser BenchmarkOptions 
benchmarkOptions = BenchmarkOptions <$> strOption ( long "file" <> short 'f' <> help "Output filename" )

benchmarkCmd :: BenchmarkOptions -> IO () 
benchmarkCmd (BenchmarkOptions { .. }) = runTimeBenchmarks benchmarkPrograms outputFilename

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

-- | Loads a program from disk, translates it to a simpler form amenable for verification, parses and compiles it
loadProgram :: String -> IO Exp
loadProgram = readFile >=> translate >=> return . either (error . ("error while parsing" ++)) id . parseFromString

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
   return (v, start - end)

------------------------------------------------------------
-- Analysis results and configurations
------------------------------------------------------------

-- | A polymorphic analysis result, no information about this 
-- analysis result is known, except that it can be inspected 
-- and evaluated using `deepseq`.
data AnalysisResult where
   AnalysisResult :: (NFData a) => a -> AnalysisResult

instance NFData AnalysisResult where
   rnf (AnalysisResult a) = rnf a

analysisConfigurations :: [(String, Exp -> IO AnalysisResult)]
analysisConfigurations = concatMap (\k -> [
      ("smallstep, k = " ++ show k, fmap AnalysisResult . SmallStep.analyze k),
      ("widened per state, k = " ++ show k, fmap AnalysisResult . SmallStepWidened.analyze k)
   ]) [1..5]


-- | The result of running a single benchmark once
data Result = Result {
      benchmarkName :: String,
      benchmarkIteration :: Integer,
      benchmarkAnalysisResult :: AnalysisResult,
      benchmarkTime :: Integer
   } deriving (Generic)

instance NFData Result

-- | Write a single result to a file
writeToFile :: Handle -- ^ the file handle to write the output to, gets flushed after writing
            -> String -- ^ name of the program to write the result for
            -> Result -- ^ the result to write to the file
            -> IO ()
writeToFile hdl programName (Result { .. }) = do
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
      let filename = addExtension (base ++ formattedTime) extension
      openFile filename WriteMode
   where (base, extension) = splitExtension path

-- | Run the timing benchmarks over the set of programs
runTimeBenchmarks :: [String] -- ^ the programs to run the benchmark on
                  -> String   -- ^ the name of the file to output the benchmark results to 
                  -> IO ()
runTimeBenchmarks benchmarks outputFilename = do
      outputHandle <- openTimestamped outputFilename
      mapM_ (\(runner,filename) -> runSingle runner filename >>= mapM (writeToFile outputHandle filename)) benchmarkWithConfigurations
   where runSingle (name, runner) program = do
            expr <- loadProgram program
            results <- mapM (\i -> time (runner expr) <&> uncurry (Result name i)) [0..totalIterations]
            results `deepseq` return results
         benchmarkWithConfigurations = [ (runner, benchmark) | runner <- analysisConfigurations, benchmark <- benchmarks ]
