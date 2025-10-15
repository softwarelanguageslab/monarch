{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE PackageImports #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE RecordWildCards #-}

module Run.Python(main, Options, options, runREPL, runBenchmarks) where

import Syntax.Python
import Options.Applicative
import Data.Maybe
import Analysis.Python.Fixpoint.Taint
import qualified Analysis.Python.Fixpoint.Taint as Taint
import qualified Analysis.Python.Fixpoint.Characteristics as Characteristics
import Data.Map (Map)
import qualified Data.Map as Map
import Analysis.Python.Common
import Data.List
import Text.Printf (printf)
import Control.Monad.DomainError
import Analysis.Python.Escape (PyEsc)
import qualified Data.Set as Set
import Analysis.Python.Monad.Class
import Language.Python.Common (annot)
import Domain.Python.Syntax
import Data.IORef
import System.IO
import Data.Function ((&))
import Control.Monad.Escape (MayEscape(..))
import "maf2-analysis" Data.Graph (edges)
import Lattice hiding (Value)
import Analysis.Store (CountingMap, store)
import qualified Lattice.BottomLiftedLattice as BL

import Benchmark.Python.Programs
import Analysis.Monad.Store (StoreM(lookupAdr))
import Control.Monad
import Lattice.Tainted
import Data.Kind (Type)
import Analysis.Monad.FunctionCharacteristics
import "maf2-analysis" Data.Graph

------------------------------------------------------------
-- Command-line parsing
------------------------------------------------------------

data Options = Options { pythonFilename :: String, pythonAnalysis :: String }
   deriving Show

options :: Parser Options
options = Options 
   <$> strOption (long "filename" <> short 'f' <> help "Name of the file to parse")
   <*> strOption (long "analysis" <> short 'a' <> help analysisHelp)

------------------------------------------------------------
-- Types of analyses
------------------------------------------------------------

class PrintResult a where
   printResult :: a -> IO ()

-- | Captures the result of a Python analysis
data AnalysisResult where
   AnalysisResult :: PrintResult a => a -> AnalysisResult

instance PrintResult AnalysisResult where
   printResult (AnalysisResult a) = printResult a

-- | An analysis takes an expression and produces an analysis result
type Analysis = PyPrg -> AnalysisResult

-- | Maps a name to an analysis function
analysisTypes :: Map String Analysis
analysisTypes = Map.fromList [
      ("characteristics", AnalysisResult . CharacteristicsResult . Characteristics.analyzeCP),
      ("taint", AnalysisResult . TaintResult . Taint.analyzeCP)
   ]

-- | Analysis info text
analysisInfo :: [(String, String)]
analysisInfo = [
      ("characteristics", "The characteristics analysis"),
      ("taint", "Information Flow Analysis")
   ]

-- | Shows the analysis helper text
analysisHelp :: String
analysisHelp =
   intercalate "\n" (map (uncurry (printf "%10s %s")) analysisInfo)


-----------------------------------------
-- Characteristics analysis
-----------------------------------------

newtype CharacteristicsResult = CharacteristicsResult {
      characteristicsResult ::
         (Map Characteristics.PyCmp Characteristics.PyRes,
          Characteristics.Store Characteristics.PyDomainCP,
          Map PyLoc CharacteristicsMap)
   }

instance PrintResult CharacteristicsResult where
   printResult (CharacteristicsResult (rsto, osto, characteristics)) = do
      putStrLn "\nRESULTS PER COMPONENT:\n"
      putStrLn (printRSto rsto True osto)
      putStrLn "\nCHARACTERISTICS:\n"
      print characteristics

-----------------------------------------
-- Taint analysis
-----------------------------------------

newtype TaintResult = TaintResult {
      taintResult :: (Map PyCmp PyRes, Store PyDomainCP, SimpleGraph (CP String) (CP Bool))
   }

instance PrintResult TaintResult where
   printResult (TaintResult (rsto, osto, graph)) = do
      putStrLn (printRSto rsto True osto)
      putStrLn "\nOBJECT STORE RESULTS:\n"
      putStrLn (printOSto osto)
      putStrLn "\nDEPENDENCY GRAPH:\n"
      print graph
      putStrLn "\n"

------------------------------------------------------------
-- Store printing
------------------------------------------------------------

printOSto :: Show obj => CountingMap ObjAdr obj -> String
printOSto s = intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs
   where adrs   = Map.toList (store s)
                    & filter (\case (PrmAdr _, _) -> False ; _ -> True)
         indent = maximum (map (length . show . fst) adrs) + 5

printRSto :: (Show obj, PyVal v, Show v, Show e, Joinable obj) => Map PyCmp (MayEscape e v) -> Bool -> CountingMap ObjAdr obj -> String
printRSto m deref osto
 = intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (showCmp k) (showVal deref v)) cmps
   where cmps = Map.toList m
         showVal _ (Escape e) = "[!!: "++show e++"]"
         showVal False (Value v) = show v
         showVal False (MayBoth v e) = "[!!: "++show e++"]" ++ show v
         showVal True (Value v) = showDereferencedVal v
         showDereferencedVal v =
            let as = Set.toList (adrs v)
                rawsto = store osto
                values = as & filter (`Map.member` rawsto)
                            & map (rawsto Map.!)
                output
                  | null values = "BOTTOM"
                  | otherwise = show $ joins1 values
            in output
         showCmp ((Main _, _), _) = "<main>"
         showCmp ((LoopBdy loc _ _, _), ctx) = "<loop " ++ show loc ++ " with context " ++ show ctx ++ ">"
         showCmp ((FuncBdy loc _, _), ctx) = "<func " ++ show loc ++ " with context " ++ show ctx ++ ">"
         indent = maximum (map (length . showCmp . fst) cmps) + 5

------------------------------------------------------------
-- Runners
------------------------------------------------------------

runREPL :: IO ()
runREPL = do count <- newIORef 0
             analyzeREPL @PyDomainCP (read count) print
      where read count = do cur <- readIORef count
                            writeIORef count (cur + 1)
                            prompt cur
            prompt cur = do putStr ">>> "
                            hFlush stdout
                            txt <- getLine
                            case parse ("RAPL:" ++ show cur) txt of
                              Just parsed -> return parsed
                              Nothing     -> putStrLn "Invalid program" >> prompt cur


runFile' :: String -> IO ()
runFile' fileName =
   do program <- readFile fileName
      let Just parsed = parse "testje" program
      let (rsto, osto, graph) = analyzeCP parsed
      putStrLn "\nPROGRAM:\n"
      putStrLn (prettyString parsed)
      putStrLn "\nRESULTS PER COMPONENT:\n"
      putStrLn (printRSto rsto True osto)
      putStrLn "\nOBJECT STORE RESULTS:\n"
      putStrLn (printOSto osto)
      putStrLn "\nDEPENDENCY GRAPH:\n"
      print graph
      putStrLn "\n"

runFile :: String -> IO ()
runFile fileName =
   do program <- readFile fileName
      let Just parsed = parse "testje" program
      let (rsto, osto, characteristics) = analyzeCP parsed
      putStrLn "\nPROGRAM:\n"
      putStrLn (prettyString parsed)
      putStrLn "\nRESULTS PER COMPONENT:\n"
      putStrLn (printRSto rsto True osto)
      putStrLn "\nCHARACTERISTICS:\n"
      print characteristics

benchmarks = allBenchmarks

runBenchmarks :: IO ()
runBenchmarks = mapM_ runFile benchmarks

generateGraph :: [String] -> IO ()
generateGraph files =
   do putStrLn "digraph ECOPIPE {"
      putStrLn "\trankdir=\"LR\";"
      putStrLn "graph [overlap = true, fontname = Helvetica];"
      mapM_ generateGraphForFile files
      putStrLn "}"
   where generateGraphForFile file = do program <- readFile file
                                        let Just parsed = parse "testje" program
                                        let (_, _, graph) = analyzeCP parsed
                                        printGraph file graph
         printGraph file graph = mapM_ (putStrLn . showEdge file) (edges graph)
         showEdge file (from, to, dep) = "\t" ++ showNode from ++ " -> " ++ showNode to ++ " [label = " ++ show ("[" ++ toType dep ++ "] " ++ shortFileName file) ++ "];"
         showNode (Constant name) = name
         showNode Top = "⊤"
         showNode _ = "⊥"
         shortFileName = reverse . takeWhile (/='/') . reverse
         toType (Constant True) = "REACTOR"
         toType (Constant False) = "WINDOW"
         toType Top = "??WINDOW??"

main :: Options -> IO ()
main (Options { .. }) = do
      parsed <- fromMaybe (error "could not parse file") . parse pythonFilename <$> readFile pythonFilename
      putStrLn "\nPROGRAM:\n"
      putStrLn (prettyString parsed)
      printResult $ (fromMaybe (error $ "no such analysis" ++ pythonAnalysis) $ Map.lookup pythonAnalysis analysisTypes) parsed 


ecopipe :: IO ()
ecopipe = generateGraph [
                              -- "programs/python/zensor/add_regime_status_tag.py",
                              -- "programs/python/zensor/strain_resample.py",
                              -- "programs/python/zensor/bolt_str_stats_per_movement.py",
                              -- "programs/python/zensor/str_stats_per_movement.py",
                              -- "programs/python/zensor/displacement_corrected_for_inclination.py",
                              -- "programs/python/zensor/acc_stats_per_movement.py",
                              -- "programs/python/zensor/clean_angular_displacement.py",
                              -- "programs/python/zensor/inc_diff_touching.py",
                              -- "programs/python/zensor/integrated_PSD_per_slice.py",
                              -- "programs/python/zensor/regime_classification.py",
                              -- "programs/python/zensor/run_identifier.py",
                              "programs/python/zensor/sensor_status.py"
                        ]



