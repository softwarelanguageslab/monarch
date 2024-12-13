{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RecordWildCards #-}
module Main (main) where

import Syntax.Compiler
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.List (intercalate, find)
import Text.Printf
import qualified Data.Map as Map
import Syntax.Span hiding (filename)
import Syntax.Simplifier
import Domain.Scheme.Store
import Analysis.SimpleActor
import Options.Applicative
import Syntax.AST hiding (filename)
import Interpreter hiding (PrmAdr, store)
import qualified Analysis.Store as Store
import qualified Analysis.ASE.Smallstep as Smallstep
import System.IO
import Control.Monad

------------------------------------------------------------
-- Command-line arguments
------------------------------------------------------------

type Command = IO ()


data InputOptions = InputOptions {
                  filename :: String,
                  doTranslate :: Bool,
                  debug :: Bool
              } deriving (Show, Ord, Eq)


inputOptions :: Parser InputOptions
inputOptions = InputOptions <$> strOption
                  (   long "file"
                   <> short 'f'
                   <> help "Input file"
                  ) <*> flag True False ( long "no-translate" <> help "If present, disables translations" )
                  <*> flag False True ( long "debug" <> help "If present, enable debug output" )

commandParser :: Parser Command
commandParser =
   subparser
    (   command "smallstep" (info (smallstepCmd <$> inputOptions) (progDesc "Analyze a program using the ASE in small-step"))
    <>  command "analyze" (info (analyzeCmd <$> inputOptions) (progDesc "Analyze a program"))
    <>  command "eval"    (info (interpret <$> inputOptions) (progDesc "Run a program")))


------------------------------------------------------------
-- Inspecting analysis results
------------------------------------------------------------

printMap :: (Show v) => (k -> String) -> (k -> Bool) -> Map k v -> String
printMap printKey keepKey m  =
       intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (printKey k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (flip (const keepKey)) m
         indent = maximum (map (length . printKey . fst) adrs) + 5


printLoc :: ActorCmp -> String
printLoc ((((((e, _), _), _), _), _), _) = let (Span filename Position { .. } _) = spanOf e in show line ++ ":" ++ show column ++ "@" ++ filename

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
-- Smallstep
------------------------------

-- | Print a dot graph
printGraph :: Handle -> Map Smallstep.State (Set Smallstep.State) -> IO () 
printGraph h succs = hPutStrLn h "digraph {" >> mapM_ (hPutStrLn h . showEdge) edges >> hPutStrLn h "}"
   where showNode st = 
            showControl (Smallstep.control st) ++ "," ++ show (Smallstep.pc st) ++ "@" ++ show (Smallstep.top st) ++ "," ++ show (Smallstep.topFail st)
         showControl (Smallstep.Ev e _) = show e 
         showControl (Smallstep.Ap v) = show v
         edges = concatMap (\(st, nxts) -> map ( (showNode st,) . showNode) (Set.toList nxts)) (Map.toList succs)
         showEdge (from, to) = "\t" ++ show from ++ " -> " ++ show to ++ ";"

printSmallstepResult :: Bool -> (Set Smallstep.State, Smallstep.SuccessorMap Smallstep.State) -> IO () 
printSmallstepResult debug (states, succs) = do
   putStrLn $ "Found " ++ show (Set.size states) ++ " reachable states"
   let finalStates = find Smallstep.isFinalState states
   maybe (putStrLn "No final states found (machine is stuck or only contains cycles, i.e., result is bottom)") (putStrLn . ("Final state is " ++) . show) finalStates
   when debug $ do 
      putStrLn "Debug mode is enabled using the --debug flag, printing stuck states ..."
      let stuckStates = Set.filter (Smallstep.isStuckState succs) states
      if Set.size stuckStates == 0 then 
         putStrLn "No stuck states"
      else 
         mapM_ print (Set.toList stuckStates)
      putStrLn "Outputting graph to output/st_graph.dot ..." 
      file <- openFile "./output/st_graph.dot" WriteMode
      printGraph file (Smallstep.getSuccessorMap succs)
      hClose file
   
         

smallstepCmd :: InputOptions -> IO ()
smallstepCmd (InputOptions { .. }) = do
   loadFile' doTranslate filename >>= Smallstep.analyze >>= printSmallstepResult debug

------------------------------
-- Big step SCV
------------------------------


analyzeCmd :: InputOptions -> IO ()
analyzeCmd (InputOptions { filename, doTranslate  }) = do
   ast <- loadFile' doTranslate filename
   ((((), out), mbs), res) <- analyze ast
   mapM_ (\(cmp, sto) -> do
      print cmp
      putStrLn $ Store.printSto show (\case { (PrmAdr _) -> False ; _ -> True }) sto
      putStrLn "=====") (Map.toList out)

   putStrLn "====="
   putStrLn $ printMap printLoc (const True) res
   putStrLn "====="
   putStrLn $ printMap  show (const True) mbs
   return ()

interpret :: InputOptions -> IO ()
interpret (InputOptions { .. }) =
   loadFile' doTranslate filename >>= runEval . eval >>= print

------------------------------------------------------------
-- Main entrypoint
------------------------------------------------------------

main :: IO ()
main = join $ customExecParser p (info (commandParser <**> helper) fullDesc)
   where p = prefs showHelpOnError
