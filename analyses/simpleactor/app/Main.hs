{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RecordWildCards #-}
module Main (main) where

import qualified Benchmark.SimpleActor.Precision as Benchmark.Precision
import Syntax.Compiler
import Data.Map (Map)
import Data.List (intercalate)
import Text.Printf
import qualified Data.Map as Map
import Syntax.Simplifier
import Analysis.SimpleActor.Fixpoint.ModularModConc
import Analysis.SimpleActor.Fixpoint.Common (ActorMai)
import Options.Applicative
import Syntax.AST  
import Control.Monad
import Analysis.SimpleActor.Monad ()
import Analysis.SimpleActor.Fixpoint.SequentialModConc (ActorRes(..), spanOfCmp)
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
import qualified Syntax.SimpleActor.CoreToSimpleActor as CoreToSimpleActor
import qualified Syntax.CoreErlang as CoreErlang
import qualified Analysis.Actors.Mailbox.Graph as Graph
import Analysis.Actors.Mailbox.GraphToSet (GraphToSet(..))


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
    <> command "precision"     (info (precision  <$> multipleInputOptions <*> outputOptions) (progDesc "Run the precision benchmarks"))
    <> command "erlang"        (info (erlang <$> inputOptions) (progDesc "Erlang analysis by translation to SimpleActor"))
    <> command "core-erlang"   (info (coreErlang <$> coreErlangParser) (progDesc "Translate Core Erlang to SimpleActor")))


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

------------------------------
-- SimpleActor SCV
------------------------------

analyzeCmd :: InputOptions -> IO ()
analyzeCmd (InputOptions { filename, doTranslate, maxSteps  }) = do
   ast <- loadFile' doTranslate filename
   analyzeAst ast maxSteps

analyzeAst :: Exp -> Maybe Int -> IO ()
analyzeAst ast maxSteps =  do
   (AnalysisResult sequentialResults mbs) <- analyze' maxSteps ast
   let sequentialResMap = fmap cmpRes sequentialResults
   putStrLn "====== Results per actor"
   mapM_ (uncurry  (printCmpMap (show . spanOfCmp) (const True))) (Map.toList sequentialResMap)
   -- putStrLn "====="
   -- putStrLn $ printMap printLoc (const True) res
   putStrLn "====="
   putStrLn $ printMap  show (const True) mbs
   putStrLn "====="
   return ()


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
   analyzeAst expr Nothing

------------------------------------------------------------
-- Core Erlang analysis
------------------------------------------------------------

data CoreErlangOptions = CoreErlangOptions {
      coreErlangMainMod :: String,
      coreErlangMainFun :: String,
      coreErlangOutputDir :: String,
      coreErlangInputOptions :: InputOptions
   }

-- | Parses the command-line arguments into a "CoreErlangOptions"
-- record type.
coreErlangParser :: Parser CoreErlangOptions
coreErlangParser = CoreErlangOptions
                <$> strOption (long "main-module" <> short 'm')
                <*> strOption (long "main-function")
                <*> strOption (long "output-dir" <> short 'o' <> help "Output directory for DOT graphs")
                <*> inputOptions

coreErlang :: CoreErlangOptions -> IO ()
coreErlang CoreErlangOptions { .. } = do
   -- TODO: support more than one module, perhaps based on a directory
   -- of modules.
   let inputName = filename coreErlangInputOptions
   contents <- readFile inputName
   case CoreErlang.parseProgram inputName contents of
     Left err -> do
       putStrLn "Parse error:"
       print $ CoreErlang.prettyErrorBundle  err
       exitFailure
     Right coreModule -> do
       let expr = CoreToSimpleActor.translateModules [coreModule] coreErlangMainMod coreErlangMainFun
       putStrLn "-- Expression: "
       pPrint expr

       -- Run analysis and write DOT graphs
       (AnalysisResult sequentialResults mbs) <- analyze' Nothing expr
       let sequentialResMap = fmap cmpRes sequentialResults

       putStrLn "====== Results per actor"
       mapM_ (uncurry  (printCmpMap (show . spanOfCmp) (const True))) (Map.toList sequentialResMap)
       putStrLn "====="
       putStrLn $ printMap  show (const True) mbs
       putStrLn "====="

       -- Create output directory if it doesn't exist
       createDirectoryIfMissing True coreErlangOutputDir

       -- Write DOT graphs for each actor's mailbox
       writeDotGraphs coreErlangOutputDir mbs

       putStrLn $ "DOT graphs written to " ++ coreErlangOutputDir


-- | Write DOT graphs for all mailboxes to the specified output directory
writeDotGraphs :: String -> ActorMai -> IO ()
writeDotGraphs outputDir mailboxes = do
  forM_ (Map.toList mailboxes) $ \(actorRef, mailbox) -> do
    let actorName = sanitizeFilename (show actorRef)
    case mailbox of
      GraphAbstraction graphMailbox -> do
        let messageGraphs = Set.toList $ Graph.getMessageGraphs graphMailbox
        forM_ (zip [1..] messageGraphs) $ \(idx :: Int, messageGraph) -> do
          let dotContent = Graph.toDot messageGraph
          let filename = outputDir ++ "/" ++ actorName ++ "_graph_" ++ show idx ++ ".dot"
          writeFile filename dotContent
          putStrLn $ "  Written: " ++ filename
      SetAbstraction _ ->
        putStrLn $ "  Skipping " ++ actorName ++ " (SetAbstraction, no graph structure)"

-- | Sanitize a filename by replacing problematic characters
sanitizeFilename :: String -> String
sanitizeFilename = map sanitizeChar
  where
    sanitizeChar c
      | c `elem` ['/', '\\', ':', '*', '?', '"', '<', '>', '|'] = '_'
      | otherwise = c


------------------------------------------------------------
-- Main entrypoint
------------------------------------------------------------

main :: IO ()
main = join $ customExecParser p (info (commandParser <**> helper) fullDesc)
   where p = prefs showHelpOnError
