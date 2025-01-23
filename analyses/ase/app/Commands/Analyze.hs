{-# LANGUAGE RecordWildCards #-}
module Commands.Analyze where

import Data.Either
import Options
import RIO
import Syntax.Compiler
import qualified ASE.Analyses as Analyses

analyze :: FileOptions -> IO ()
analyze (FileOptions { .. }) = do 
   program <- readFile filename
   let exp = either (error . ("program could not be parsed" ++)) id (parseFromString program)
   result <- Analyses.localAnalysis exp 1
   putStrLn "Blame nodes found: "
   print (Analyses.blameNodes result)
   putStrLn "Program terminated with the following output"
   print (Analyses.values result)


   
