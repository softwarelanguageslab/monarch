module Main (main) where

import Syntax.Compiler
import Data.Either
import Interpreter

main :: IO ()
main = do
   ast <- fmap (either (error . ("error while parsing: " ++)) id . parseFromString) (readFile "test.scm")
   runEval (eval ast) >>= print
   return ()
