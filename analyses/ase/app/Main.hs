{-# LANGUAGE RankNTypes #-}
module Main where    

import qualified Commands.Analyze as Analyze
import Options
import Options.Applicative
import RIO

------------------------------------------------------------
-- Command-line parsing
------------------------------------------------------------

-- | Commands
type Cmd = IO ()

-- | Parse options related to input files
fileOptions :: Parser FileOptions 
fileOptions = FileOptions <$> (strOption $ long "file" <> short 'f' <> metavar "FILE" <> help "File to analyze")

-- | The command-line interface for analyzing programs "interactively"
analyzeCmd :: Parser Cmd 
analyzeCmd = Analyze.analyze <$> fileOptions

-- | Main program parser
cmdParser :: Parser Cmd 
cmdParser = subparser $
   command "analyze" (info analyzeCmd (progDesc "Analyze a program"))

opts :: ParserInfo Cmd 
opts = info (cmdParser <**> helper) 
      (   fullDesc 
       <> progDesc "ASE analysis" )

------------------------------------------------------------
-- Entrypoint
------------------------------------------------------------

main :: IO ()
main = join $ execParser opts
