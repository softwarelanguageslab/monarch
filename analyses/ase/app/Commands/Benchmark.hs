-- | Benchmark command. Reads the input filenames from 
-- standard input.
{-# LANGUAGE RecordWildCards, ScopedTypeVariables #-}
module Commands.Benchmark(options, runBenchmarks) where

import qualified ASE.Analyses as ASE
import Syntax.AST
import Syntax.Compiler
import Options.Applicative
import RIO
import qualified RIO.Map as Map
import qualified RIO.Set as Set
import Data.Char (isSpace)
import qualified RIO.Text as T
import qualified RIO.Text.Partial as TP
import Data.Time
import Data.Time.Clock.System
import Data.Time.Format.ISO8601
import System.IO (Handle, hPutStrLn, IOMode(WriteMode))

------------------------------------------------------------
-- Command-line interface
------------------------------------------------------------

data BenchmarkOptions = BenchmarkOptions {
      -- | The name of the file the output of the benchmarks should be written to
      outputCsv :: String,
      -- |  Whether only the ocnfigurations should be printed and no benchmarks should be run
      dumpConfiguration :: Bool,
      -- | The number of iterations for each (benchmark, configuration) pair (default is 20)
      iterations :: Int,
      -- | Whether to run all configurations, or receive the configurations from standard input
      runAllConfigurations :: Bool
   }
   deriving (Ord, Eq, Show)

options :: Parser BenchmarkOptions
options = BenchmarkOptions <$> option str (short 'o' <> help "The location of the results")
                           <*> switch (short 'd' <> help "Dump the available configurations")
                           <*> option auto (short 'i' <> help "Maximum number of iterations of each (benchmark, configuration) pair" <> value maxIterations)
                           <*> switch (short 'a' <> help "Run all configurations on each benchmark")

------------------------------------------------------------
-- Constants
------------------------------------------------------------

-- | The maximum number of iterations
maxIterations :: Int
maxIterations = 20

-- | The maximum k-value
maxK :: Int
maxK = 5

-- | Default timeout of 10 minutes.
defaultTimeout :: Int
defaultTimeout = 120*60*1000*1000

------------------------------------------------------------
-- Exceptions & Timeout
------------------------------------------------------------

-- | The collection of benchmark exceptions
data BenchmarkException = TimeoutException String deriving (Ord, Eq, Show)

instance Exception BenchmarkException

-- | Run the given IO action until a timeout is, 
-- when such timeout is reached a @TimeoutException@ is raised.
timeoutThrow :: String -> IO a -> IO a
timeoutThrow nam = maybe (throwIO $ TimeoutException nam) return <=< (timeout defaultTimeout)

------------------------------------------------------------
-- Analysis configurations 
------------------------------------------------------------

type Configuration = Exp -> IO ASE.AnalysisResult

configurations :: [(String, Configuration)]
configurations = [(\ ((nam, f), i) -> (nam ++ ":" ++ show i, flip f i)) (cfg, k) |
                    cfg <- (Map.toList ASE.analyses), k <- [0 .. 5]]

-- | Configurations indexed by their name
configurationsByName :: Map String Configuration
configurationsByName = Map.fromList configurations

-- | Lookup a configuration by its name
lookupConfiguration :: String -> (String, Configuration)
lookupConfiguration nam = (nam, fromMaybe (error $ "no such configuration " ++ nam) (Map.lookup nam configurationsByName))

-- | Dump the available configurations as a string
configurationNames :: [String]
configurationNames = map fst configurations

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
   return $ (fromIntegral (systemSeconds currentTime) * 1000 * 1000 * 1000) + fromIntegral (systemNanoseconds currentTime)

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

-- | Write that the given benchmark has failed
writeFail :: Handle -- ^ the output file handle 
          -> String -- ^ the name of the analyzed file
          -> String -- ^ the name of the configuration 
          -> IO ()
writeFail hdl nam cfg = do
   putStrLn $ "[-] Timeout for " ++ cfg ++ " on " ++ nam
   hPutStrLn hdl $ nam ++   ":0;"
                ++ cfg ++   ";"
                ++ "t;"
                ++ ";"
   hFlush hdl

-- | Run a single benchmark program on all configurations
-- and write the output in CSV format to the handle.
runSingle :: Handle -- ^ the handle 
          -> Int    -- ^ the number of iterations to run
          -> String -- ^ the name of the program to analyze
          -> Exp    -- ^ the program to analyze
          -> IO ()
runSingle hdl iter nam prg = mapM_ (runSingleConfiguration hdl iter nam prg) configurationNames

-- | Run a single benchmark on a single configuration
runSingleConfiguration :: Handle
                       -> Int    -- ^ the number of iterations to run
                       -> String -- ^ the name of the program to analyze 
                       -> Exp    -- ^ the program to analyze 
                       -> String -- ^ the name of the configuration to use for the analysis (given as a key within @configurations@)
                       -> IO ()
runSingleConfiguration hdl iter nam prg cfgNam = do
      repeated (lookupConfiguration cfgNam)
      putStrLn $ "[D] Finished configuration " ++ cfgNam ++ "on " ++ nam
      hFlush stdout
   where repeated cfg = mapM_ (run . (cfg,)) [1..iter] `catches` handleExc
         run ((cfgNam, cfg), i) = do
            putStrLn $ "[R] Running configuration " ++ cfgNam ++ " on " ++ nam ++ " (" ++ show i ++ "/" ++ show iter ++ ")"
            hFlush stdout
            (res, elapsed) <- timeoutThrow  cfgNam $ do
               start  <- getTime
               res <-  cfg prg
               end <- res `deepseq` getTime
               let elapsed = end - start
               return $ end `deepseq` (res, elapsed)
            putStrLn $ "[F] Finished running " ++ cfgNam ++ " on " ++ nam ++ " without timeout"
            hFlush stdout
            writeResult hdl (nam ++ ":" ++ show i) cfgNam res elapsed
         handleExc = [Handler (\(TimeoutException cfgNam :: BenchmarkException) -> writeFail hdl nam cfgNam),
                      Handler (\(e :: SomeException) -> putStrLn $ "Error " ++ show e) ]

------------------------------------------------------------
-- Entrypoint
------------------------------------------------------------

parseInput :: Handle  -- ^ the output (CSV) handle
           -> Int     -- ^ number of iterations ot run
           -> Bool    -- ^ whether to run all configurations or just a single one
           -> String  -- ^ the input just read 
           -> IO ()
parseInput hdl iter all inn = do
      if all then
         let programName = inn
         in do
            exp <- readInputFile programName
            runSingle hdl iter programName exp
      else
         let [configuration, programName] = map T.unpack (TP.splitOn (T.pack ";") (T.pack inn))
         in do
            exp <- readInputFile programName
            runSingleConfiguration hdl iter programName exp configuration

-- | Run the benchmark
runBenchmarks :: BenchmarkOptions -> IO ()
runBenchmarks BenchmarkOptions { .. } =
      if dumpConfiguration then
         mapM_ putStrLn configurationNames
      else do
         hFlush stdout
         outputHandle <- openFile outputCsv WriteMode
         mapM_ (parseInput outputHandle iterations runAllConfigurations) =<< (fmap lines getContents)
         hClose outputHandle
