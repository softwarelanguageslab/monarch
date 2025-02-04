-- | Benchmark command. Reads the input filenames from 
-- standard input.
{-# LANGUAGE RecordWildCards #-}
module Commands.Benchmark(options, runBenchmarks) where 

import qualified ASE.Analyses as ASE
import Syntax.AST
import Syntax.Compiler
import Options.Applicative
import RIO
import qualified RIO.Map as Map
import qualified RIO.Set as Set
import Data.Char (isSpace)
import Data.Time
import Data.Time.Clock.System
import Data.Time.Format.ISO8601
import System.IO (Handle, hPutStrLn, IOMode(WriteMode))

------------------------------------------------------------
-- Command-line interface
------------------------------------------------------------

data BenchmarkOptions = 
      BenchmarkOptions { outputCsv :: String }
   deriving (Ord, Eq, Show)

options :: Parser BenchmarkOptions
options = BenchmarkOptions <$> option str (short 'o' <> help "The location of the results")

------------------------------------------------------------
-- Analysis configurations 
------------------------------------------------------------

configurations :: [(String, Exp -> IO ASE.AnalysisResult)]
configurations = map (\((nam, f), i) -> (nam ++ ":" ++ show i, flip f i)) (zip (Map.toList ASE.analyses) [0..5])

------------------------------------------------------------
-- File utilities
------------------------------------------------------------

-- | Read and parse a program from @programName@
readInputFile :: String -> IO Exp
readInputFile programName = 
   either (error . ("program could not be parsed: " ++)) id . parseFromString  <$> readFile programName

-- | Read the names of the files to benchmark from the standard input
readInputFiles :: IO [(String, Exp)]
readInputFiles = mapM (\n -> (n,) <$> readInputFile n) =<< (map trimSuffix . lines <$> getContents)
   where trimSuffix = takeWhile (not . isSpace)

------------------------------------------------------------
-- Benchmarking utilities
------------------------------------------------------------

-- | Get the current time in nanoseconds
getTime :: IO Integer
getTime = do
   currentTime <- getSystemTime
   return $ fromIntegral (systemSeconds currentTime) * 1000 * 1000 * 10000 + fromIntegral (systemNanoseconds currentTime)

-- | Write the result of the given benchmark in CSV format
--  to the given file handle.
writeResult :: Handle              -- ^ the output file handle
            -> String              -- ^ the name of the analysed program
            -> String              -- ^ the name of the configuration
            -> ASE.AnalysisResult  -- ^ the analysis result
            -> Integer             -- ^ the elapsed time
            -> IO ()
writeResult hdl nam cfg res elapsed = do
   hPutStrLn hdl $ nam ++ ";" 
                ++ cfg ++ ";"
                ++ (show elapsed) ++ ";" 
                ++ (show $ Set.size $ ASE.blameNodes res) ++ ";" 
                ++ (show $ ASE.visitedSize res)
   hFlush hdl

-- | Run a single benchmark program on all configurations
-- and write the output in CSV format to the handle.
runSingle :: Handle -- ^ the handle 
          -> String -- ^ the name of the program to analyze
          -> Exp    -- ^ the program to analyze
          -> IO ()
runSingle hdl nam prg = mapM_ run configurations
   where run (cfgNam, cfg) = do    
            start  <- getTime 
            res <-  cfg prg 
            end <- res `deepseq` getTime 
            let elapsed = end - start
            writeResult hdl nam cfgNam res elapsed

------------------------------------------------------------
-- Entrypoint
------------------------------------------------------------

-- | Run the benchmark
runBenchmarks :: BenchmarkOptions -> IO () 
runBenchmarks BenchmarkOptions { .. } = do   
   putStrLn "[*] Running benchmarks"
   outputHandle <- openFile outputCsv WriteMode
   inputs <- readInputFiles
   putStrLn "[*] Input files read"
   mapM_ (uncurry $ runSingle outputHandle) inputs
   hClose outputHandle
