{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RecordWildCards #-}
module Main (main) where

import Syntax.Compiler
import Data.Map (Map)
import Data.List (intercalate)
import Text.Printf
import qualified Data.Map as Map
import Syntax.Span hiding (filename)
import Syntax.Simplifier
import Domain.Scheme.Store
import Analysis.SimpleActor
import Options.Applicative
import Syntax.AST hiding (filename)
import Control.Monad ((>=>))
import Interpreter hiding (PrmAdr)
import GHC.Base (join)
import Debug.Trace


------------------------------------------------------------
-- Command-line arguments
------------------------------------------------------------

type Command = IO ()


newtype InputOptions = InputOptions {
                  filename :: String
              } deriving (Show, Ord, Eq)


inputOptions :: Parser InputOptions
inputOptions = InputOptions <$> strOption
                  (   long "file"
                   <> short 'f'
                   <> help "Input file"
                  )

commandParser :: Parser Command
commandParser =
   subparser
    (   command "analyze" (info (analyzeCmd <$> inputOptions) (progDesc "Analyze a program"))
    <>  command "eval"    (info (interpret <$> inputOptions) (progDesc "Run a program")))


------------------------------------------------------------
-- Inspecting analysis results
------------------------------------------------------------

printSto :: (Show v) => (k -> String) -> (k -> Bool) -> Map k v -> String
printSto printKey keepKey m  =
       intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (printKey k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (flip (const keepKey)) m
         indent = maximum (map (length . printKey . fst) adrs) + 5

printLoc :: ActorCmp -> String
printLoc (((((e, _), _), _), _), _) = let (Span filename Position { .. } _) = spanOf e in show line ++ ":" ++ show column ++ "@" ++ filename

------------------------------------------------------------
-- Entrypoints
------------------------------------------------------------

loadFile :: String -> IO Exp
loadFile = readFile >=> translate >=> return . either (error . ("error while parsing: " ++)) id . parseFromString 


analyzeCmd :: InputOptions -> IO ()
analyzeCmd (InputOptions { filename  }) = do 
   ast <- loadFile filename
   let ((((), sto), mbs), res) = analyze ast
   putStrLn $ printSto show (\case { (PrmAdr _) -> False ; _ -> True }) sto
   putStrLn "====="
   putStrLn $ printSto printLoc (const True) res
   putStrLn "====="
   putStrLn $ printSto  show (const True) mbs
   return ()

interpret :: InputOptions -> IO ()
interpret (InputOptions { filename }) = 
   loadFile filename >>= runEval . eval >>= print

------------------------------------------------------------
-- Main entrypoint
------------------------------------------------------------

main :: IO ()
main = join $ customExecParser p (info (commandParser <**> helper) fullDesc)
   where p = prefs showHelpOnError
