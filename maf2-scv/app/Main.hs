module Main (main) where

import Solver
import Symbolic.AST
import Symbolic.SMT
import Syntax.Scheme
import qualified Syntax.Scheme.Actor as Actor

import Data.Maybe (fromJust)
import qualified Data.Map as Map
import Data.Map (Map)
import Data.List ( intercalate )
import Text.Printf
import qualified Analysis.Symbolic as Symbolic
import qualified Analysis.Contracts as Contracts
import Analysis.Scheme.Store (values)
import Domain.Scheme.Store (EnvAdr(..))
import Domain.Contract.Symbolic

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

printSto :: Show k => Map (EnvAdr k) Symbolic.Vlu -> String
printSto m =
   intercalate "\n" (map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs) ++ "\n----\n"
   where adrs   = Map.toList m
         indent = maximum (map (length . show . fst) adrs) + 5

main :: IO ()
main = do
   text   <- readFile "../maf2-analysis/programs/actor/acontracts/tests/behavior.scm"
   let program = fromJust (parseString $ Actor.prelude ++ text)
   (v, result) <- unzip <$> Symbolic.simpleAnalysis program
   putStrLn $ "analysis finished -- " ++ "number of paths is " ++ show (length v)
   mapM_ print v
   mapM_ (putStrLn . printSto . values) result
