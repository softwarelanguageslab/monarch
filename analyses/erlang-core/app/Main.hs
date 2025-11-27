module Main where

import Options.Applicative
import Syntax.Erlang.Lexer
import Syntax.Erlang.Parser

parseFilename :: Parser String
parseFilename =
  strOption (   long "filename"
             <> short 'f'       )

-- | Creates a parser that accepts a single argument: the name fo the file to parse
-- and to pretty print the AST nodes for.
parser :: ParserInfo String
parser = info parseFilename (header "Erlang Core Parser")

main :: IO ()
main =
  execParser parser >>= (\filename -> readFile filename >>= print . parse . tokenize' filename)
