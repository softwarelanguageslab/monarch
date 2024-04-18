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
import Control.Monad.DomainError (MayEscape)
import Analysis.Python.Escape (PyEsc)
import Data.Set (Set)
import Analysis.Python.Monad (PyBdy(..))
import Control.Monad.Escape (MayEscape(..))
import Language.Python.Common (annot)
import Domain.Python.Syntax (showLoc)

newtype Options = Options String 
   deriving Show

options :: Parser Options
options = Options <$> 
   strOption (long "filename" <> short 'f' <> help "Name of the file to parse")

printOSto :: Show obj => Map ObjAdr obj -> String
printOSto m = intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs
   where adrs   = filter (\case (PrmAdr _, _) -> False 
                                _             -> True) 
                  (Map.toList m)
         indent = maximum (map (length . show . fst) adrs) + 5

printRSto :: Map PyCmp (MayEscape (Set PyEsc) PyVal) -> String
printRSto m = intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (showCmp k) (showRes v)) cmps
   where cmps = Map.toList m
         showRes Bottom = "⊥"
         showRes (Escape _) = "[!!]"
         showRes (Value v) = show v
         showRes (MayBoth v _) = "[!!] " ++ show v 
         showCmp ((Main _, _), _) = "<main>"
         showCmp ((LoopBdy loc _ _, _), _) = "<loop " ++ showLoc loc ++ ">"
         showCmp ((FuncBdy loc _, _), _) = "<func " ++ showLoc loc ++ ">"
         indent = maximum (map (length . showCmp . fst) cmps) + 5

main :: Options -> IO ()
main (Options fileName) = 
       do program <- readFile fileName
          let Just parsed = parse "testje" program
          let (rsto, osto, vsto) = analyzeCP parsed 
          putStrLn "\nPROGRAM:\n"
          putStrLn (prettyString parsed)
          putStrLn "\nRESULTS PER COMPONENT:\n"
          putStrLn (printRSto rsto)
          putStrLn "\nOBJECT STORE RESULTS:\n"
          putStrLn (printOSto osto)
          putStrLn "\n"

