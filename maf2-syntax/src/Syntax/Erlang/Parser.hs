module Syntax.Erlang.Parser(parseErlangTerm) where

import Text.Parsec


import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Language
import qualified Text.ParserCombinators.Parsec.Token as Token

data Term = Tuple [Term]   -- ^ { t1, t2, ..., tn }
          | Atom String    -- ^ atom
          | List [Term]    -- ^ [ t1, t2, ..., tn }
          | TrueLiteral    -- ^ true
          | FalseLiteral   -- ^ false
          | Number Integer
          | Floating Double 
         deriving (Eq, Show, Ord)

languageDef :: LanguageDef st
languageDef = emptyDef { Token.identStart = lower, 
                         Token.identLetter = alphaNum }

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

tuple :: Parser Term
tuple = Tuple <$> between (symbol "{") (symbol "}") (sepBy term (symbol ","))

list :: Parser Term
list  = List <$> between (symbol "[") (symbol "]") (sepBy term (symbol ","))

atom :: Parser Term
atom = Atom <$> ident

number :: Parser Term
number = Number <$> Token.integer lexer

parseErlangTerm :: String -- ^ the name of the program
                -> String -- ^ the program itself 
                -> Either ParseError Term -- ^ the parsing output (right) or an error (left)
parseErlangTerm = parse term
