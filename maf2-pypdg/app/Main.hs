module Main (main) where

import qualified Run.Analysis

import Syntax.Python
import Analysis.Python.Fixpoint 
import Analysis.Python.Objects.PyObjHMap
import qualified Data.Map as Map  

prg :: String
prg = "1+1"

showSto :: PySto PyObjCP -> String
showSto (vsto, osto) = show osto

main :: IO ()
main = let Just parsed = parse "testje" prg
           (result, sto) = analyze @PyObjCP parsed 
         in putStrLn (showSto sto)  