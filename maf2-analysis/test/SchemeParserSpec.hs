module SchemeParserSpec where

import Benchmark.Programs
import Syntax.Scheme.AST
import Test.HUnit
import Test.Hspec
import Control.Monad.IO.Class

assertRight :: Either String b -> Assertion
assertRight (Left a) = assertFailure a
assertRight (Right b) = return ()

testParse name = it (name ++ " parses correctly") $ do
   contents <- liftIO (readFile name)
   let parsed = parseSchemeExp' contents
   assertRight parsed   

spec = do
   mapM_ testParse allBenchmarks
