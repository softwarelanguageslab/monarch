{-# LANGUAGE RankNTypes #-}
module Main where    

import qualified Commands.Analyze as Analyze
import qualified Commands.Benchmark as Benchmark
import Options
import Options.Applicative
import RIO

------------------------------------------------------------
-- Command-line parsing
------------------------------------------------------------

-- | Commands
type Cmd = IO ()


-- | The command-line interface for analyzing programs "interactively"
analyzeCmd :: Parser Cmd 
analyzeCmd = Analyze.analyze <$> Analyze.options

-- | The command-line interface for running the benchmarks
benchmarkCmd :: Parser Cmd 
benchmarkCmd = Benchmark.runBenchmarks <$> Benchmark.options

-- | Main program parser
cmdParser :: Parser Cmd 
cmdParser = subparser $
      command "analyze" (info analyzeCmd (progDesc "Analyze a program"))
   <> command "benchmark" (info benchmarkCmd (progDesc "Run benchmarks"))

opts :: ParserInfo Cmd 
opts = info (cmdParser <**> helper) 
      (   fullDesc 
       <> progDesc "ASE analysis" )

------------------------------------------------------------
-- Entrypoint
------------------------------------------------------------

main :: IO ()
main = join $ execParser opts
