{-# OPTIONS_GHC -Wno-unused-top-binds #-}
module Main (main) where

import Solver
import Symbolic.AST
import Symbolic.SMT

import qualified Data.Map as Map


exampleFormula :: (Formula String)
exampleFormula = conjunction
     (Atomic $ IsTrue (Predicate "string?/v" [Function "x0"]))
     (Atomic $ IsFalse (Predicate "string?/v" [Function "x0"]))

runMain :: FormulaSolver String m => m SolverResult
runMain = do
   setup prelude
   loop (10000 :: Int)
   where loop 1 = solve Map.empty exampleFormula
         loop n = do
            _ <- solve Map.empty exampleFormula
            loop (n-1)


main :: IO ()
main = putStrLn "Nothing to see here"

