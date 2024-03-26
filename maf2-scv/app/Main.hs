{-# LANGUAGE LambdaCase #-}
module Main (main) where

import Solver
import Solver.Z3
import Symbolic.AST
import Symbolic.SMT
import Analysis.Scheme.Store (SchemeStore(..), values)
import Analysis.Symbolic
import Syntax.Scheme

import Data.Maybe (fromJust)
import Data.Function ((&))
import qualified Data.Map as Map
import Data.Map (Map)
import Data.List
import Text.Printf
import qualified Analysis.Contracts as Contracts

exampleFormula :: Formula
exampleFormula = Conjunction
     (Atomic $ IsTrue (Predicate "string?/v" [Variable "x0"]))
     (Atomic $ IsFalse (Predicate "string?/v" [Variable "x0"]))

runMain :: FormulaSolver m => m SolverResult
runMain = do
   setup prelude
   loop (10000 :: Int)
   where loop 1 = solve exampleFormula
         loop n = do
            _ <- solve exampleFormula
            loop (n-1)



printSto :: Map Contracts.Addr Contracts.V -> String
printSto m =
   intercalate "\n" (map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs) ++ "\n----\n"
   where adrs   = Map.toList m
         indent = maximum (map (length . show . fst) adrs) + 5

main :: IO ()
main = do
   text   <- readFile "/tmp/test.scm"
   let program = fromJust (parseString text)
   let (v, result) = Contracts.runAnalysis program
   print v
   putStrLn $ printSto $ result
