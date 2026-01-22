-- | Common command-line argument parsers.
--
-- The idea is that each type of analysis shares a common set of command-line options.
-- These including:
-- * Options about the input of the file (where to find the program to analyze, whether to apply preprocessing, ...)
-- * Options about the output of the analysis result 
module CommandLine.Options(
    InputOptions(..),
    OutputOptions(..),
    inputOptions,
    outputOptions
  ) where

import Options.Applicative

-- | Command-line options for a single file
data InputOptions = InputOptions {
                  -- | The name of the file to analyze
                  filename :: String,
                  -- | DEPRECATED: whether the Racket to the SimpleActor
                  -- should be performed before running analysis, requires Racket to be installed.
                  doTranslate :: Bool,
                  -- | Whether debugging is enabled, this simply expands
                  -- the output of the runPythonTaintAnalysisT
                  debug :: Bool,
                  -- | Maximum number of steps in the analysis            
                  maxSteps :: Maybe Int
              } deriving (Show, Ord, Eq)

inputOptions :: Parser InputOptions
inputOptions = InputOptions <$> strOption
                  (   long "file"
                   <> short 'f'
                   <> help "Input file"
                  ) <*> flag True False ( long "no-translate" <> help "If present, disables translations" )
                  <*> flag False True ( long "debug" <> help "If present, enable debug output" )
                  <*> optional (option auto (long "max" <> short 't' <> help "maximum number of analysis steps"))


-- | Command-line output options
data OutputOptions = OutputOptions {
                      -- | Path to the file where the JSON output should be stored
                      outputPath :: String
                   }
                   deriving (Show, Ord, Eq)


outputOptions :: Parser OutputOptions
outputOptions =  OutputOptions
             <$> strOption ( long "outputFile" <> short 'o' <> help "Output JSON file")
