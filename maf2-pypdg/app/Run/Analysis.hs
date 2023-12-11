module Run.Analysis(main, Options, options) where

import Syntax.Python
import Options.Applicative
import Data.Maybe

newtype Options = Options { fileName :: String } 
   deriving Show

options :: Parser Options
options = Options <$> 
   strOption (long "filename" <> short 'f' <> help "Name of the file to parse")

opts :: ParserInfo Options 
opts = info (options <**> helper) (fullDesc <> progDesc "MAF: Monadic Analysis Framework")

run :: Options -> IO ()
run (Options name) = do 
   contents <- readFile name
   putStrLn $ prettyString $ fromJust $ parse name contents

main :: IO ()
main = execParser opts >>= run
