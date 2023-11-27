module Main (main) where

import Solver
import Solver.Z3
import Data.Function ((&))
import Symbolic.AST
import Symbolic.SMT

exampleFormula :: Formula
exampleFormula = 
   Atomic (IsFalse (Literal (Boo True)))

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
   runMain & runZ3Solver >>= print
