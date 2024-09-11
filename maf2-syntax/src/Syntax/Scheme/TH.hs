module Syntax.Scheme.TH(printFileList) where

import Language.Haskell.TH
import Data.FileEmbed
import System.Process

printFileList :: Q ()
printFileList = do 
   path <- makeRelativeToProject "" 
   runIO (readProcess "/bin/ls" [path] "" >>= putStrLn)
