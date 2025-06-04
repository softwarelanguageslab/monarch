{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE PackageImports #-}

module Run.Python(main, Options, options, runREPL, runBenchmarks) where

import Syntax.Python
import Options.Applicative
import Data.Maybe
import Analysis.Python.Fixpoint
import Data.Map (Map)
import qualified Data.Map as Map
import Analysis.Python.Common
import Data.List
import Text.Printf (printf)
import Control.Monad.DomainError
import Analysis.Python.Escape (PyEsc)
import qualified Data.Set as Set
import Analysis.Python.Monad
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
import Analysis.Python.Common (ObjAddrSet(addrs))
import Analysis.Monad.Store (StoreM(lookupAdr))
import Control.Monad
import Lattice.Tainted 

newtype Options = Options String
   deriving Show

options :: Parser Options
options = Options <$>
   strOption (long "filename" <> short 'f' <> help "Name of the file to parse")

printOSto :: Show obj => CountingMap ObjAdr obj -> String
printOSto s = intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs
   where adrs   = Map.toList (store s)
                    & filter (\case (PrmAdr _, _) -> False ; _ -> True)
         indent = maximum (map (length . show . fst) adrs) + 5

printRSto :: (Show obj, Joinable obj) => Map PyCmp PyRes -> Bool -> CountingMap ObjAdr obj -> String
printRSto m deref osto = intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (showCmp k) (showVal deref v)) cmps
   where cmps = Map.toList m
         showVal _ (Escape e) = "[!!: "++show e++"]"
         showVal False (Value v) = show v
         showVal False (MayBoth v e) = "[!!: "++show e++"]" ++ show v
         showVal True (Value v) = showDereferencedVal v
         showDereferencedVal (Tainted v _) =  
            let adrs = Set.toList (addrs v)
                values = map (\a -> store osto Map.! a) adrs
            in (values & joins1 & show)
         showCmp ((Main _, _), _) = "<main>"
         showCmp ((LoopBdy loc _ _, _), ctx) = "<loop " ++ show loc ++ " with context " ++ show ctx ++ ">"
         showCmp ((FuncBdy loc _, _), ctx) = "<func " ++ show loc ++ " with context " ++ show ctx ++ ">"
         indent = maximum (map (length . showCmp . fst) cmps) + 5

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


runFile :: String -> IO ()
runFile fileName =
   do program <- readFile fileName
      let Just parsed = parse "testje" program
      let (rsto, osto, graph) = analyzeCP parsed
      putStrLn "\nPROGRAM:\n"
      putStrLn (prettyString parsed)
      putStrLn "\nRESULTS PER COMPONENT:\n"
      putStrLn (printRSto rsto True osto)
      -- putStrLn "\nOBJECT STORE RESULTS:\n"
      -- putStrLn (printOSto osto)
      --putStrLn "\nDEPENDENCY GRAPH:\n"
      --putStrLn "\n"

runFilePreanalysis :: String -> IO ()
runFilePreanalysis fileName =
   do program <- readFile fileName
      let Just parsed = parse "testje" program
      let (rsto, osto, characteristics) = preanalyzeCP parsed
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
         showEdge file (from, to, isDep) = "\t" ++ showNode from ++ " -> " ++ showNode to ++ " [label = " ++ show ("[" ++ toType isDep ++ "] " ++ shortFileName file) ++ "];"
         showNode (Constant name) = name
         showNode Top = "⊤"
         showNode _ = "⊥"
         shortFileName = reverse . takeWhile (/='/') . reverse
         toType (Constant True) = "WINDOW"
         toType (Constant False) = "REACTOR"
         toType Top = "?"

main :: Options -> IO ()
main (Options fileName) = runFilePreanalysis fileName

ecopipe :: IO ()
ecopipe = generateGraph [
                              "programs/python/zensor/add_regime_status_tag.py",
                              "programs/python/zensor/strain_resample.py",
                              "programs/python/zensor/bolt_str_stats_per_movement.py",
                              "programs/python/zensor/str_stats_per_movement.py",
                              "programs/python/zensor/displacement_corrected_for_inclination.py"
                        ]


