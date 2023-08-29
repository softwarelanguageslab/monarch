module Run.Python(main, Options, options) where

import Syntax.Python
import Options.Applicative
import Data.Maybe

newtype Options = Options String deriving Show

options :: Parser Options
options = Options <$> 
   strOption (long "filename" <> short 'f' <> help "Name of the file to parse")

main :: Options -> IO ()
main (Options name) = do 
   contents <- readFile name
   putStrLn $ prettyString $ fromJust $ parse name contents
