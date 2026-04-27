{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}

module Main (main) where

import qualified Benchmark.SimpleActor.Precision as Benchmark.Precision
import Syntax.Compiler
import Data.Map (Map)
import Data.List (intercalate)
import Text.Printf
import qualified Data.Map as Map
import Syntax.Simplifier
import Options.Applicative
import Syntax.AST
import Control.Monad
import qualified Analysis.SimpleActor.Infer as Infer
import System.TimeIt
import qualified RIO.Set as Set
import System.Exit
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
import CommandLine.Options hiding (outputOptions, OutputOptions)
import qualified Runnables.CoreErlang as CoreErlang
import qualified Analysis.SimpleActor.Fixpoint as Fixpoint

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

-- | Command-line options for output of benchmarks
newtype OutputOptions = OutputOptions { outputFilename :: String } deriving (Show, Ord, Eq)

outputOptions :: Parser OutputOptions
outputOptions = OutputOptions <$> strOption (    long "outputFile"
                                              <> short 'o'
                                              <> help "The output filename" )


commandParser :: Parser Command
commandParser =
   subparser
    (  command "pre"           (info (inferCmd   <$> inputOptions) (progDesc "Pre-analysis"))
    <> command "precision"     (info (precision  <$> multipleInputOptions <*> outputOptions) (progDesc "Run the precision benchmarks"))
    <> command "erlang"        (info (erlang <$> inputOptions) (progDesc "Erlang analysis by translation to SimpleActor"))
    <> command "core-erlang"   (info (CoreErlang.entrypoint <$> CoreErlang.options) (progDesc "Translate Core Erlang to SimpleActor"))
    <> command "analyze2"      (info (analyze2Cmd <$> inputOptions) (progDesc "Analyze a program using the new fixpoint")))


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
-- Entrypoints
------------------------------------------------------------

writeTempFileId :: String -> IO String
writeTempFileId contents =
   writeFile "/tmp/in.scm" contents >> return contents

-- loadFile :: String -> IO Exp
-- loadFile = loadFile' True

loadFile' :: Bool -> String -> IO Exp
loadFile' doTranslate = readFile >=> (if doTranslate then translate >=> writeTempFileId else return) >=> return . either (error . ("error while parsing: " ++)) id . parseFromString

------------------------------------------------------------
-- SimpleActor, fixpoint v2
------------------------------------------------------------

analyze2Cmd :: InputOptions -> IO () 
analyze2Cmd InputOptions { .. } = do
    ast <- loadFile' doTranslate filename 
    analyze2Ast ast

analyze2Ast :: Exp -> IO ()  
analyze2Ast expr = do 
    system <- Fixpoint._mbs . fst <$> Fixpoint.analyze expr
    pPrint system

------------------------------------------------------------
-- SimpleActor Inference
------------------------------------------------------------

inferCmd :: InputOptions -> IO ()
inferCmd (InputOptions { filename, doTranslate }) = do
   putStrLn $ "analyzing " ++ filename
   ast <- loadFile' doTranslate filename
   (ellapsed, inferred) <- timeItT $ Infer.infer ast
   putStrLn ("Ellapsed time (in seconds): " ++ show ellapsed)
   let localActorRes = uncurry Infer.localActors inferred
   let localActorResWithoutMain = Map.filterWithKey (\k -> const $ Infer.injectInitialActor ast /= k) localActorRes
   let spawnsWithoutMain = Map.filterWithKey (\k -> const $ Infer.injectInitialActor ast /= k) (Infer._spawns (fst inferred))
   let actorsSpawnedByOthers = sum $ map (Set.size . snd) $ Map.toList spawnsWithoutMain
   putStrLn $ "Inferred local actor instances " ++ show localActorResWithoutMain
   if sum (map (Set.size . snd) $ Map.toList localActorResWithoutMain) == 0 && actorsSpawnedByOthers > 2 then
      exitSuccess
   else
      exitFailure
   -- dotOut <- openFile "out.dot" WriteMode
   -- hPutStrLn dotOut (Infer.toDot $ Infer._graph inferred)
   -- hClose dotOut

------------------------------------------------------------
-- Precision benchmarks
------------------------------------------------------------

precision :: MultipleInputOptions -> OutputOptions -> IO ()
precision MultipleInputOptions { .. } OutputOptions { .. } = do
   files <- ifM (doesDirectoryExist inputDirectory)
                (filterM doesFileExist . map (inputDirectory ++) =<< getDirectoryContents inputDirectory)
                (return [inputDirectory])

   hdl <- openFile outputFilename WriteMode
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
   analyze2Ast expr

------------------------------------------------------------
-- Main entrypoint
------------------------------------------------------------

main :: IO ()
main = join $ customExecParser p (info (commandParser <**> helper) fullDesc)
   where p = prefs showHelpOnError
