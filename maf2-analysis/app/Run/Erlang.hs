module Run.Erlang(Options, options, main) where

import Options.Applicative
import Text.Pretty.Simple
import Syntax.Erlang.Parser

newtype Options = Options { filename :: String } deriving Show

options = Options <$>
   strOption (long "filename" <> short 'f' <> help "Name of the file to parse")

main :: Options -> IO ()
main (Options filename) = do
   contents <- readFile filename
   let parsed = parseErlangTerm filename contents
   pPrint parsed

