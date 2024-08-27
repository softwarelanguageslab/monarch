{-# LANGUAGE LambdaCase #-}
module Main (main) where

import Syntax.Compiler
import Data.Either
import Data.Map (Map)
import Data.List (intercalate)
import Text.Printf
import qualified Data.Map as Map
import Interpreter
import Syntax.Simplifier
import Analysis.SimpleActor 

printSto :: (Show k, Show v) => Map k v -> String
printSto m  =
       intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs
   where adrs   = Map.toList m
         indent = maximum (map (length . show . fst) adrs) + 5

main :: IO ()
main = do
   ast <- fmap (either (error . ("error while parsing: " ++)) id . parseFromString) (translate =<< readFile "test.scm")
   print ast
   let ((((), sto), mbs), res) = analyze ast
   putStrLn $ printSto sto
   putStrLn "====="
   putStrLn $ printSto res
   putStrLn "====="
   putStrLn $ printSto  mbs
   --runEval (eval ast) >>= print
   return ()
