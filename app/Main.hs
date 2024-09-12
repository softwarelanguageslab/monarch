{-# LANGUAGE LambdaCase #-}
module Main (main) where

import Syntax.Compiler
import Data.Either
import Data.Map (Map)
import Data.List (intercalate)
import Text.Printf
import qualified Data.Map as Map
import Syntax.Span
import Syntax.Simplifier
import Domain.Scheme.Store
import Analysis.SimpleActor

printSto :: (Show v) => (k -> String) -> (k -> Bool) -> Map k v -> String
printSto printKey keepKey m  =
       intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (printKey k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (flip (const keepKey)) m
         indent = maximum (map (length . printKey . fst) adrs) + 5

printLoc :: ActorCmp -> String
printLoc (((((e, _), _), _), _), _) = let (Span filename line col) = spanOf e in show line ++ ":" ++ show col ++ "@" ++ filename

main :: IO ()
main = do
   ast <- fmap (either (error . ("error while parsing: " ++)) id . parseFromString) (translate =<< readFile "test.scm")
   print ast
   let ((((), sto), mbs), res) = analyze ast
   putStrLn $ printSto show (\case { (PrmAdr _) -> False ; _ -> True }) sto
   putStrLn "====="
   putStrLn $ printSto printLoc (const True) res
   putStrLn "====="
   putStrLn $ printSto  show (const True) mbs
   --runEval (eval ast) >>= print
   return ()
