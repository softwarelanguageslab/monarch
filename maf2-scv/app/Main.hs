module Main (main) where

import Solver
import Symbolic.AST
import Symbolic.SMT
import Syntax.Scheme
import qualified Syntax.Scheme.Actor as Actor

import qualified Data.Map as Map
import Data.Map (Map)
import Data.List ( intercalate )
import Text.Printf
import qualified Analysis.Symbolic as Symbolic
import qualified Analysis.Contracts as Contracts
import Analysis.Scheme.Store (values)
import Domain.Scheme.Store (EnvAdr(..))
import Domain.Contract.Symbolic

import System.Environment
import Data.Either.Extra (fromEither)

exampleFormula :: (Formula String)
exampleFormula = Conjunction
     (Atomic $ IsTrue (Predicate "string?/v" [Function "x0"]))
     (Atomic $ IsFalse (Predicate "string?/v" [Function "x0"]))

runMain :: FormulaSolver String m => m SolverResult
runMain = do
   setup prelude
   loop (10000 :: Int)
   where loop 1 = solve exampleFormula
         loop n = do
            _ <- solve exampleFormula
            loop (n-1)

printSto :: Show k => Map (EnvAdr k) (Symbolic.Vlu k) -> String
printSto m =
   intercalate "\n" (map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs) ++ "\n----\n"
   where adrs   = Map.toList m
         indent = maximum (map (length . show . fst) adrs) + 5

main :: IO ()
main = do
   programName <- head <$> getArgs
   text   <- readFile programName
   let program = either error id (parseString' $ Actor.prelude ++ text)
   result <- Symbolic.simpleAnalysis program
   -- putStrLn $ "analysis finished -- " ++ "number of paths is " ++ show (length v)
   putStrLn $ printSto $ values $ snd result
