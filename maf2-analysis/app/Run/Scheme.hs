{-# LANGUAGE LambdaCase #-}
-- | Runs a configurable analysis on the given file
module Run.Scheme(Options, options, main) where

import Options.Applicative
import Analysis.Scheme.Simple
import Text.Printf
import Data.List (intercalate)
import Data.Map (Map)
import Analysis.Scheme.Store ()
import qualified Data.Map as Map
import Domain.Scheme.Store
import Analysis.Scheme (AnlRes)
import Syntax.Scheme.Prelude (preludedNames)
import Syntax.Ide (Ide(name))

newtype Options = Options String deriving Show

printSto :: Map VariableAdr (StoreVal V) -> String
printSto m =
   intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrsNoPreludes
   where adrs   = Map.toList $ Map.filterWithKey (\case { PrrAdr _ -> const False ; _ -> const True }) m
         adrsNoPreludes = filter filterPrelude adrs
         filterPrelude (VarAdr n _, _) = name n `notElem` preludedNames
         filterPrelude _ = True
         indent = maximum (map (length . show . fst) adrs) + 5


options :: Parser Options
options =
   Options <$>
      strOption (long "filename" <> short 'f' <> help "the file to analyse")

values :: AnlRes V -> Map VariableAdr (StoreVal V)
values (sto, _) = sto

main :: Options -> IO ()
main (Options filename) = do
     contents <- readFile filename
     let sto = values (runAnalysis contents)
     putStrLn "Analysis completed"
     putStrLn $ printSto sto

