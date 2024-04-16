module TH where

import Language.Haskell.TH
import Language.Haskell.Meta
import Syntax.Scheme.Parser
import Control.Monad ((<=<), join)
import System.Directory.Recursive
import Language.Haskell.TH.Syntax (lift, addDependentFile)

haskellTest :: SExp -> Either String String
haskellTest (Atom "test-spec" _ ::: Str code _ ::: SNil _) =
   return code
haskellTest _ = Left "no test spec found"

-- | Compute the list of all test files
-- in the given directory
allTestsFiles :: String -> IO [String]
allTestsFiles = getFilesRecursive

allTests :: String -> Q Exp
allTests = genBindSequence <=< traverse mkTest <=< runIO . allTestsFiles

genBindSequence :: [Exp] -> Q Exp
genBindSequence = 
   foldr1 (\left right -> [| $left >> $right |]) . map pure

-- | Get the test expression from the given file
fromFile :: FilePath -> Q Exp
fromFile path = do
   addDependentFile path
   runIO $ either error id .
      (parseExp <=< (haskellTest . head) <=< parseSexp) <$> readFile path

-- Compute the test expression
testDecl :: FilePath -> Q Exp
testDecl = fromFile

-- Make a test case for the given file
mkTest :: String -> Q Exp
mkTest name = [|describe $(stringE name) $ it "passes its tests" $ runAnalysisAndTest (\result store -> $(testDecl name)) $(stringE name) |]
