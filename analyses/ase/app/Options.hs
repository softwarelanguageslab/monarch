-- | Module for common options used in commands
module Options(
      FileOptions(..),
      fileOptions,
      outputOptions) where

import Options.Applicative

-- | Options related to input files
data FileOptions = FileOptions {
      filename :: String
   } deriving (Ord, Eq, Show)

-- | Parse options related to input files
fileOptions :: Parser FileOptions
fileOptions = FileOptions <$> strOption (long "file" <> short 'f' <> metavar "FILE" <> help "File to analyze")
