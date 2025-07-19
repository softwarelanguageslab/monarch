{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RecordWildCards #-}
module Main (main) where

import qualified Benchmark.SimpleActor.Precision as Benchmark.Precision
import Syntax.Compiler
import Data.Map (Map)
import Data.List (intercalate)
import Text.Printf
import qualified Data.Map as Map
import Syntax.Span hiding (filename)
import Syntax.Simplifier
import Analysis.SimpleActor
import Options.Applicative
import Syntax.AST hiding (filename)
import Interpreter hiding (PrmAdr, store)
import Control.Monad
import Analysis.SimpleActor.Monad ()
import Analysis.SimpleActor.Fixpoint.Sequential (SequentialCmp, ActorRes(..))
import Data.Tuple.Syntax
import qualified Analysis.SimpleActor.Infer as Infer
import qualified Analysis.Monad.Profiling as Profiling
import System.TimeIt
import qualified RIO.Set as Set
import System.Exit
import RIO (stdout, IOMode(..))
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


ifM :: Monad m => m Bool -> m a -> m a -> m a
ifM cnd csq alt = cnd >>= (\vcnd -> if vcnd then csq else alt)

------------------------------------------------------------
-- Command-line arguments
------------------------------------------------------------

type Command = IO ()


-- | Command-line options for a single file
data InputOptions = InputOptions {
                  -- | The name of the file to analyze
                  filename :: String,
                  -- | DEPRECATED: whether the Racket to the SimpleActor
                  -- should be performed before running analysis, requires Racket to be installed.
                  doTranslate :: Bool,
                  -- | Whether debugging is enabled, this simply expands
                  -- the output of the runPythonTaintAnalysisT
                  debug :: Bool,
                  -- | Maximum number of steps in the analysis            
                  maxSteps :: Maybe Int 
              } deriving (Show, Ord, Eq)


inputOptions :: Parser InputOptions
inputOptions = InputOptions <$> strOption
                  (   long "file"
                   <> short 'f'
                   <> help "Input file"
                  ) <*> flag True False ( long "no-translate" <> help "If present, disables translations" )
                  <*> flag False True ( long "debug" <> help "If present, enable debug output" )
                  <*> optional (option auto (long "max" <> short 't' <> help "maximum number of analysis steps"))


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
    (  command "analyze"       (info (analyzeCmd <$> inputOptions) (progDesc "Analyze a program"))
    <> command "pre"           (info (inferCmd   <$> inputOptions) (progDesc "Pre-analysis"))
    <> command "eval"          (info (interpret  <$> inputOptions) (progDesc "Run a program"))
    <> command "precision"     (info (precision  <$> multipleInputOptions <*> outputOptions) (progDesc "Run the precision benchmarks"))
   <> command "erlang"         (info (erlang <$> inputOptions) (progDesc "Erlang analysis by translation to SimpleActor")))


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

-- | Compute the span of a sequential component
spanOfCmp :: SequentialCmp -> Span
spanOfCmp (cmp ::*:: _env ::*:: _dyn ::*:: _k ::*:: _meta ::*::  _mb ::*:: _ref) = spanOf cmp

------------------------------------------------------------
-- Entrypoints
------------------------------------------------------------

writeTempFileId :: String -> IO String
writeTempFileId contents =
   writeFile "/tmp/in.scm" contents >> return contents

loadFile :: String -> IO Exp
loadFile = loadFile' True

loadFile' :: Bool -> String -> IO Exp
loadFile' doTranslate = readFile >=> (if doTranslate then translate >=> writeTempFileId else return) >=> return . either (error . ("error while parsing: " ++)) id . parseFromString

------------------------------
-- SimpleActor SCV
------------------------------

analyzeCmd :: InputOptions -> IO ()
analyzeCmd (InputOptions { filename, doTranslate, maxSteps  }) = do
   ast <- loadFile' doTranslate filename
   (AnalysisResult sequentialResults mbs seqProf modProf) <- analyze' maxSteps ast
   let sequentialResMap = fmap cmpRes sequentialResults
   let sequentialCouMap = fmap outCount sequentialResults
   putStrLn "====== Results per actor"
   mapM_ (uncurry  (printCmpMap (show . spanOfCmp) (const True))) (Map.toList sequentialResMap)
   putStrLn "====== CountMap per Actor"
   -- putStrLn $ Store.printSto show (\case (PrmAdr _) -> False ; _ -> True) sto
   mapM_ (uncurry  (printCmpMap (show . spanOfCmp) (const True))) (Map.toList sequentialCouMap)
   -- putStrLn "====="
   -- putStrLn $ printMap printLoc (const True) res
   putStrLn "====="
   putStrLn $ printMap  show (const True) mbs
   putStrLn "====="
   putStrLn $ printMap (show . spanOfCmp) (const True) (Profiling._profile seqProf) 
   putStrLn $ printMap show (const True) (Profiling._profile modProf) 
   return ()

interpret :: InputOptions -> IO ()
interpret (InputOptions { .. }) =
   loadFile' doTranslate filename >>= runEval . eval >>= print


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
   let exp = compileModules modules' deps "test" "main"
   print exp


------------------------------------------------------------
-- Main entrypoint
------------------------------------------------------------

main :: IO ()
main = join $ customExecParser p (info (commandParser <**> helper) fullDesc)
   where p = prefs showHelpOnError
