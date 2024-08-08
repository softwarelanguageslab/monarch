module Main (main) where

import Syntax.Compiler
import Data.Either
import Interpreter
import Syntax.Simplifier

main :: IO ()
main = do
   ast <- fmap (either (error . ("error while parsing: " ++)) id . parseFromString) (translate =<< readFile "test.scm")
   print ast
   runEval (eval ast) >>= print
   return ()
