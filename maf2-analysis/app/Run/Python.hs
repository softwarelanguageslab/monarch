{-# LANGUAGE LambdaCase #-}
module Run.Python(main, Options, options) where

import Syntax.Python
import Options.Applicative
import Data.Maybe
import Analysis.Python.Fixpoint 
import Data.Map (Map)
import qualified Data.Map as Map 
import Analysis.Python.Common
import Data.List
import Text.Printf (printf)

newtype Options = Options String 
   deriving Show

options :: Parser Options
options = Options <$> 
   strOption (long "filename" <> short 'f' <> help "Name of the file to parse")

--
-- hardcoded example 
--

prg :: String
prg = "1+1"

printOSto :: Show obj => Map ObjAdr obj -> String
printOSto m =
   intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (\case { PrmAdr _ -> const False ; _ -> const True }) m
         indent = maximum (map (length . show . fst) adrs) + 5

main :: Options -> IO ()
main (Options _) = 
   let Just parsed = parse "testje" prg 
       (vsto, osto) = analyzeCP parsed 
    in putStrLn (printOSto osto)

