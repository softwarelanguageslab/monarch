{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}

module Main (main) where

import qualified Benchmark.SimpleActor.Precision as Benchmark.Precision
import Syntax.Compiler (parseFromString')
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
import Runnables.CompareCoverage (compareCoverageCmd, compareCoverageOptions)
import qualified Analysis.SimpleActor.Fixpoint as Fixpoint
import qualified Analysis.SimpleActor.Fixpoint.Common as Common
import qualified Analysis.Actors.Mailbox.Graph.Dot as Dot
import Criterion.Main
import qualified Criterion.Main.Options as Criterion
import Criterion.Types (Config(..))
import qualified Data.DeltaMap as DeltaMap
import Data.Functor.Identity

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
    (  command "pre"              (info (inferCmd   <$> inputOptions) (progDesc "Pre-analysis"))
    <> command "precision"        (info (precision  <$> multipleInputOptions <*> outputOptions) (progDesc "Run the precision benchmarks"))
    <> command "erlang"           (info (erlang <$> inputOptions) (progDesc "Erlang analysis by translation to SimpleActor"))
    <> command "core-erlang"      (info (CoreErlang.entrypoint <$> CoreErlang.options) (progDesc "Translate Core Erlang to SimpleActor"))
    <> command "analyze2"         (info (analyze2Cmd <$> inputOptions <*> outputDirOptions <*> switch (long "benchmark" <> help "run the analysis in benchmarking mode")) (progDesc "Analyze a program using the new fixpoint"))
    <> command "compare-coverage" (info (compareCoverageCmd <$> compareCoverageOptions) (progDesc "Compare analysis coverage against Racket runtime coverage")))


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
loadFile' doTranslate filename = do
   contents <- readFile filename
   translated <- if doTranslate then translate contents >>= writeTempFileId else return contents
   let sourceFile = if doTranslate then Nothing else Just filename
   return $ either (error . ("error while parsing: " ++)) id $ parseFromString' sourceFile translated

------------------------------------------------------------
-- SimpleActor, fixpoint v2
------------------------------------------------------------

escapePath :: String -> String
escapePath ('/':cs) = '_' : escapePath cs 
escapePath (c:cs) = c : escapePath cs 
escapePath [] = []

-- | Renders the mailbox abstraction of each actor in the system to a DOT file for visualization with Graphviz.
renderMailboxesToDot :: String -- ^ the output directory
                     -> String -- ^ string to prefix the output file with 
                     -> Map Common.ActorRef Common.PMB
                     -> IO ()
renderMailboxesToDot outDir prefix = mapM_ (uncurry renderMailbox) . Map.toList
    where
        renderMailbox actorRef mb = do
            let mailboxName = "mailbox_" <> show actorRef
                dotContent = Dot.render mb
             in writeFile (outDir ++ prefix ++ escapePath mailboxName ++ ".dot") dotContent


-- | Renders the mailbox abstraction for each step in the analysis trace to a DOT file for visualization with Graphviz.
-- The files are numbered sequentially to reflect the order of the trace.
renderTraceMailboxesToDot :: String -> [Map Common.ActorRef Common.PMB] -> IO ()
renderTraceMailboxesToDot outDir mailboxTrace = mapM_ renderStep (zip [0..] mailboxTrace)
    where
        renderStep :: (Int, Map Common.ActorRef Common.PMB) -> IO ()
        renderStep (stepNum, mbs) = do
            renderMailboxesToDot outDir ("trace_step_" ++ show stepNum ++ "_") mbs

analyze2Cmd :: InputOptions -> OutputDirOptions -> Bool -> IO ()
analyze2Cmd InputOptions { .. } OutputDirOptions { .. } doBenchmark = do
    ast <- loadFile' doTranslate filename
    if doBenchmark
    then runMode (Criterion.Run (defaultConfig { reportFile = Just $ outputDirPath ++ "report.html", csvFile = Just $ outputDirPath ++ "report.csv" }) Criterion.Glob ["*"]) [ bench (escapePath filename) $ nfIO (Fixpoint.analyzeIO ast) ]
    else do
        pPrint ast
        analyze2Ast ast outputDirPath

analyze2Ast :: Exp -> String -> IO ()
analyze2Ast expr outDir = do
    output <- Fixpoint.analyzeIO expr
    let trace = reverse $ map Fixpoint._mbs $ runIdentity $ Fixpoint._trace $ snd output

    renderTraceMailboxesToDot outDir (map DeltaMap.toMap trace)

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
   analyze2Ast expr "output/"

------------------------------------------------------------
-- Main entrypoint
------------------------------------------------------------

main :: IO ()
main = join $ customExecParser p (info (commandParser <**> helper) fullDesc)
   where p = prefs showHelpOnError
