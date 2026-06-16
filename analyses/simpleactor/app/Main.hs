{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}

module Main (main) where

import qualified Benchmark.SimpleActor.Precision as Benchmark.Precision
import Data.Map (Map)
import Data.List (intercalate)
import Text.Printf
import qualified Data.Map as Map
import Options.Applicative
import Control.Monad
import RIO (IOMode(..))
import RIO.Directory
import System.ConcurrentHandle
import Control.Concurrent.ParallelIO.Global

import Syntax.Erlang.Compiler
import Syntax.Erlang.Overloader
import Syntax.Erlang.Qualifier
import Syntax.Erlang.Preluder
import Analysis.Erlang.BIF
import Syntax.ErlangToSimpleActor
import Text.Pretty.Simple (pPrint)
import qualified Runnables.CoreErlang as CoreErlang
import Runnables.CompareCoverage (compareCoverageCmd, compareCoverageOptions)
import qualified Runnables.SimpleActorAnalyze as SimpleActorAnalyze
import qualified Runnables.SoundnessTesting as SoundnessTesting
import qualified Runnables.ContractBenchmarks as ContractBenchmarks
import CommandLine.Options

ifM :: Monad m => m Bool -> m a -> m a -> m a
ifM cnd csq alt = cnd >>= (\vcnd -> if vcnd then csq else alt)

------------------------------------------------------------
-- Command-line arguments
------------------------------------------------------------

type Command = IO ()


-- | Command-line for options for a list of files in a directory
newtype MultipleInputOptions = MultipleInputOptions {
                              inputDirectory :: String
                            } deriving (Show, Ord, Eq)

-- | Parser for command-line options corresponding to the 'MultipleInputOptions' record type
multipleInputOptions :: Parser MultipleInputOptions
multipleInputOptions = MultipleInputOptions <$> strOption (   long "inputDir"
                                                          <> short 'i'
                                                          <> help "The directory containing the input files" )


commandParser :: Parser Command
commandParser =
   subparser
    (  command "precision"        (info (precision  <$> multipleInputOptions <*> outputOptions) (progDesc "Run the precision benchmarks"))
    <> command "erlang"           (info (erlang <$> inputOptions) (progDesc "Erlang analysis by translation to SimpleActor"))
    <> command "core-erlang"      (info (CoreErlang.entrypoint <$> CoreErlang.options) (progDesc "Translate Core Erlang to SimpleActor"))
    <> command "analyze2"         (info (SimpleActorAnalyze.entrypoint <$> inputOptions <*> outputDirOptions <*> switch (long "benchmark" <> help "run the analysis in benchmarking mode")) (progDesc "Analyze a program using the new fixpoint"))
    <> command "compare-coverage" (info (compareCoverageCmd <$> compareCoverageOptions) (progDesc "Compare analysis coverage against Racket runtime coverage"))
    <> command "soundness"        (info (SoundnessTesting.entrypoint <$> SoundnessTesting.options) (progDesc "Run the concrete interpreter and print its trace"))
    <> command "benchmark"        (info (ContractBenchmarks.entrypoint <$> inputOptions <*> outputOptions) (progDesc "Run the contract checking benchmarks")))


------------------------------------------------------------
-- Inspecting analysis results
------------------------------------------------------------

-- | Print an arbitrary mapping
printMap :: (Show v) => (k -> String) -> (k -> Bool) -> Map k v -> String
printMap printKey keepKey m  =
       intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (printKey k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (flip (const keepKey)) m
         indent = maximum (map (length . printKey . fst) adrs) + 5

-- | Print a mapping associated with a particular component
printCmpMap :: (Show cmp, Show v) => (k -> String) -> (k -> Bool) -> cmp -> Map k v -> IO ()
printCmpMap printKey keepKey cmp m = do
   putStrLn "============================================================"
   print cmp
   putStrLn (printMap printKey keepKey m)

------------------------------------------------------------
-- Precision benchmarks
------------------------------------------------------------

precision :: MultipleInputOptions -> OutputOptions -> IO ()
precision MultipleInputOptions { .. } OutputOptions { .. } = do
   files <- ifM (doesDirectoryExist inputDirectory)
                (filterM doesFileExist . map (inputDirectory ++) =<< getDirectoryContents inputDirectory)
                (return [inputDirectory])

   hdl <- openFile outputPath WriteMode
   parallel_ (map (`Benchmark.Precision.runPrecision` hdl) files)
   hClose hdl
   stopGlobalPool

------------------------------------------------------------
-- Erlang analysis
------------------------------------------------------------

erlang :: InputOptions -> IO ()
erlang InputOptions { .. } = do
   (modules, deps) <- elixirLibs >>= (`loadFromDir` filename)
   let modules' = qualifyModules $ preludeModules implicitImports $ overloadModules modules
   pPrint deps
   -- pPrint modules'
   let expr = compileModules modules' deps "test" "main"
   print expr
   SimpleActorAnalyze.analyzeAst expr "output/"

------------------------------------------------------------
-- Main entrypoint
------------------------------------------------------------

main :: IO ()
main = join $ customExecParser p (info (commandParser <**> helper) fullDesc)
   where p = prefs showHelpOnError
