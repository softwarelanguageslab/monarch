module Syntax.CoreErlang(
    module Syntax.CoreErlang.AST,
    parseProgram,
    prettyErrorBundle,
  ) where

import Control.Monad
import Data.Either.Extra
import Syntax.CoreErlang.AST
import Text.Megaparsec (ParseErrorBundle)
import Syntax.CoreErlang.Lexer (tokenize)
import Syntax.CoreErlang.Parser (parse)
import Data.Void
import Text.Megaparsec.Error (errorBundlePretty)

-- | Represents an error in the parsing process
newtype ParsingError = LexerError (ParseErrorBundle String Void)
                     deriving (Eq, Show)

-- | Parse a program given as a string
parseProgram :: String -- ^ the name of the program, used for error reporting
             -> String -- ^ the program contents as a string
             -> Either ParsingError (Ann Module)
parseProgram programName = do
  mapLeft LexerError . tokenize programName >=> (return . parse)

-- | Pretty print a ParserErrorBundle
prettyErrorBundle :: ParsingError -> String
prettyErrorBundle (LexerError err) = errorBundlePretty err
