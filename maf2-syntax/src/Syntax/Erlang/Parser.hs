module Syntax.Erlang.Parser(parseErlangTerm) where

import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Language
import qualified Text.ParserCombinators.Parsec.Token as Token

data Term = Tuple [Term]   -- ^ { t1, t2, ..., tn }
          | Atom String    -- ^ atom
          | List [Term]    -- ^ [ t1, t2, ..., tn }
          | TrueLiteral    -- ^ true
          | FalseLiteral   -- ^ false
          | Text String
          | Number Integer
          | Floating Double
         deriving (Eq, Show, Ord)

languageDef :: LanguageDef st
languageDef = emptyDef { Token.identStart = letter }

lexer   = Token.makeTokenParser languageDef

symbol :: String -> Parser String
symbol  = Token.symbol lexer

ident :: Parser String
ident   = Token.identifier lexer

term :: Parser Term
term =  tuple
    <|> list
    <|> atom
    <|> number
    <|> strings

-- | Parses a tuple into a term.
--
-- Examples of tuples are: {a, b, c}
tuple :: Parser Term
tuple = Tuple <$> between (symbol "{") (symbol "}") (sepBy term (symbol ","))

-- | Parses a list into a term
--
-- Examples of lists are: [a, b, c]
list :: Parser Term
list  = List <$> between (symbol "[") (symbol "]") (sepBy term (symbol ","))

-- | An atom is an identifier starting with a lowercase letter.
-- Other things may also be atoms, but then they have to be surrounded by single quotes.
atom :: Parser Term
atom = Atom <$> (between (char '\'') (char '\'') quotedAtom <|> ident)
   -- note: we do not really care about lower/uppercase letters here, since uppercase letters are variables 
   -- and variables cannot occur in this datastructure.

allowedAtom :: Parser Char 
allowedAtom = 
   alphaNum <|> oneOf ['_', '+', '-', '*', '.', '@']

quotedAtom :: Parser String 
quotedAtom = many allowedAtom

number :: Parser Term
number = Number <$> Token.integer lexer

strings :: Parser Term
strings = Text <$> Token.stringLiteral lexer

parseErlangTerm :: String -- ^ the name of the program
                -> String -- ^ the program itself 
                -> Either ParseError Term -- ^ the parsing output (right) or an error (left)
parseErlangTerm = parse term
