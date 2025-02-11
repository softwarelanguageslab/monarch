{-# LANGUAGE RecordWildCards #-}
module Commands.Analyze where

import Data.Either
import Options
import RIO
import Syntax.Compiler
import qualified ASE.Analyses as Analyses
import Options.Applicative

-- | Options for configuring an analysis
data AnalysisOptions = AnalysisOptions { optK :: Int, optAnalysis :: String }
   deriving (Ord, Eq, Show)

-- | Command-line parsing of @AnalysisOptions@
analysisOptions :: Parser AnalysisOptions
analysisOptions = AnalysisOptions <$> option auto (short 'k' <> help "The context sensitivity (in terms of k)" <> value 1)
                                  <*> option str  (short 'a' <> help "The analysis to run (run 'display' to show full list of analyses)" <> value "local")

-- | Options required by the @analyze@ command
data Options = Options FileOptions AnalysisOptions
   deriving (Ord, Eq, Show)

-- | Command line parsing of @Options@
options :: Parser Options 
options = Options <$> fileOptions <*> analysisOptions

-- | Analyze a program with the given options
analyze :: Options -> IO ()
analyze (Options (FileOptions { .. }) (AnalysisOptions { .. })) = do 
   putStrLn $ "Analyzing \"" ++ filename ++ "\" using configuration \"" ++ optAnalysis ++ "\""
   program <- readFile filename
   let exp = either (error . ("program could not be parsed: " ++)) id (parseFromString program)
   let analysis = flip (Analyses.analysesByName optAnalysis) optK
   result <- analysis exp
   putStrLn "Blame nodes found: "
   print (Analyses.blameNodes result)
   putStrLn "Program terminated with the following output"
   print (Analyses.values result)


   
