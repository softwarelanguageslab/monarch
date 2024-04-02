{-# LANGUAGE NamedFieldPuns, LambdaCase #-}
-- | Runs a configurable analysis on the given file
module Run.Actor(Options, options, main) where

import Options.Applicative
import Text.Printf
import Data.List (intercalate)
import Data.Map (Map)
import Analysis.Actors
import Analysis.Scheme
import Analysis.Scheme.Store
import qualified Data.Map as Map
import Syntax.Scheme
import Data.Maybe

newtype Options = Options String deriving Show

printSto :: Map (EnvAdr Ctx) V -> String
printSto m =
   intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (\case { PrmAdr _ -> const False ; _ -> const True }) m
         indent = maximum (map (length . show . fst) adrs) + 5


options :: Parser Options
options =
   Options <$>
      strOption (long "filename" <> short 'f' <> help "the file to analyse")

main :: Options -> IO ()
main (Options filename) = do
     contents <- readFile filename
     let program = fromJust $ parseString contents
     print program
     putStrLn $ printSto (values (fst (analyze program)))

