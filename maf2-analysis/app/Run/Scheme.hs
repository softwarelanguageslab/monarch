{-# LANGUAGE LambdaCase #-}
-- | Runs a configurable analysis on the given file
module Run.Scheme(Options, options, main) where

import Options.Applicative
import Analysis.Scheme.Simple
import Analysis.Scheme.Store ()
import Domain.Scheme.Store
import Analysis.Scheme (AnlRes, K)
import Analysis.Store (printMap)
import Syntax.Scheme.AST (Exp)

newtype Options = Options String deriving Show

options :: Parser Options
options =
   Options <$>
      strOption (long "filename" <> short 'f' <> help "the file to analyse")

values :: AnlRes V -> SchemeStore Exp K V
values (sto, _) = sto

main :: Options -> IO ()
main (Options filename) = do
     contents <- readFile filename
     let sto = values (runAnalysis contents)
     putStrLn "Analysis completed"
     putStrLn $ printMap show (const True) (_varStore sto)
     putStrLn $ printMap show (const True) (_paiStore sto)
     putStrLn $ printMap show (const True) (_vecStore sto)
     putStrLn $ printMap show (const True) (_strStore sto)

