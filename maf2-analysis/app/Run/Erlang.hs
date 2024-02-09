module Run.Erlang(Options, options, main) where

import Options.Applicative

newtype Options = Options { filename :: String } deriving Show

options = Options <$> 
   strOption (long "filename" <> short 'f' <> help "Name of the file to parse")

main :: Options -> IO ()
main _ = putStrLn "hello world"

