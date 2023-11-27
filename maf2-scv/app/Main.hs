module Main (main) where

import Solver
import Solver.Z3
import Data.Function ((&))
import Symbolic.AST
import Symbolic.SMT

exampleFormula :: Formula
exampleFormula = Conjunction
     (Atomic $ IsTrue (Predicate "string?/v" [Variable "x0"]))
     (Atomic $ IsTrue (Predicate "string?/v" [Variable "x0"]))

runMain :: FormulaSolver m => m SolverResult
runMain = do
   setup prelude
   loop (10000 :: Int)
   where loop 1 = solve exampleFormula
         loop n = do
            _ <- solve exampleFormula
            loop (n-1)

main :: IO ()
main =
      runMain
    & runCachedSolver
    & runZ3Solver >>= print
