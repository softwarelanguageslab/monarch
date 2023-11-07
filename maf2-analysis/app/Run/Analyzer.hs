{-# LANGUAGE NamedFieldPuns, LambdaCase #-}
-- | Runs a configurable analysis on the given file
module Run.Analyzer(Options, options, main) where

import Options.Applicative
import Analysis.Scheme.Simple
import Syntax.Scheme
import Data.DMap
import Data.Maybe
import Text.Printf
import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as Map
import Data.List (intercalate)

newtype Options = Options String deriving Show

printSto :: HashMap VariableAdr V -> String
printSto m =
   intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (\case { Prm _ -> const False ; _ -> const True }) m
         indent = maximum (map (length . show . fst) adrs) + 5


options :: Parser Options
options =
   Options <$>
      strOption (long "filename" <> short 'f' <> help "the file to analyse")

main :: Options -> IO ()
main (Options filename) = do
     contents <- readFile filename
     putStrLn $ printSto (region @VariableAdr @V (runAnalysis contents))

