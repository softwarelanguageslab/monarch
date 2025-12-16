-- | Parses Soter's "uncoverable" predicates
-- See: Emanuele D'Osualdo, Jonathan Kochems, and Luke Ong. Automatic verification of erlang-
-- style concurrency. In Static Analysis - 20th International Symposium, SAS 2013
-- and "Soter: An Automatic Safety Verifier for Erlang"
module Syntax.CoreErlang.Soter(
    Predicate(..),
    Exp(..),
    Constant(..),
    parsePredicate,
    parseExp,
    parseConstant
  ) where

import Text.Megaparsec
import Text.Megaparsec.Char
import qualified Text.Megaparsec.Char.Lexer as L
import Data.Void
import Control.Monad.Combinators.Expr

------------------------------------------------------------
-- Data Types
------------------------------------------------------------

-- | A SOTER predicate
data Predicate = Conj Predicate Predicate
               | Pred Exp  
               deriving (Ord, Eq, Show)

-- | The language that is actually supported in these "uncoverable" annotations
-- is not clearly documented in the SOTER papers, so we assume that a simple arithmic
-- and language is used.
data Exp = Add Exp Exp
              | Sub Exp Exp
              | Lte Exp Exp
              | Gte Exp Exp
              | Lt Exp Exp
              | Gt Exp Exp
              | Const Constant
              | Var String
              deriving (Ord, Eq, Show)

-- | A literal
data Constant = Num Int
              | Floa Float
              deriving (Ord, Eq, Show)

------------------------------------------------------------
-- Parser
------------------------------------------------------------

type Error = Void
type Parser = Parsec Error String

------------------------------------------------------------
-- Lexer
------------------------------------------------------------

spaceConsumer :: Parser ()
spaceConsumer = L.space space1 empty empty

lexeme :: Parser a -> Parser a
lexeme = L.lexeme spaceConsumer

symbol :: String -> Parser String
symbol = L.symbol spaceConsumer

parens :: Parser a -> Parser a
parens = between (symbol "(") (symbol ")")

integer :: Parser Int
integer = lexeme L.decimal

float :: Parser Float
float = lexeme L.float

identifier :: Parser String
identifier = lexeme ((:) <$> letterChar <*> many alphaNumChar) <?> "variable"

------------------------------------------------------------
-- Expression Parser
------------------------------------------------------------

parseConstant :: Parser Constant
parseConstant = (Floa <$> try float)
            <|> (Num <$> integer)

parseVar :: Parser Exp
parseVar = Var <$> identifier

parseTerm :: Parser Exp
parseTerm = parens parseExp
        <|> (Const <$> parseConstant)
        <|> parseVar

-- Operator table for expression parsing
exprTable :: [[Operator Parser Exp]]
exprTable =
  [ [ InfixL (Add <$ symbol "+")
    , InfixL (Sub <$ symbol "-")
    ]
  , [ InfixN (Lte <$ symbol "<=")
    , InfixN (Gte <$ symbol ">=")
    , InfixN (Lt <$ symbol "<")
    , InfixN (Gt <$ symbol ">")
    ]
  ]

parseExp :: Parser Exp
parseExp = makeExprParser parseTerm exprTable

------------------------------------------------------------
-- Predicate Parser
------------------------------------------------------------

parsePredicate :: Parser Predicate
parsePredicate = do
  spaceConsumer
  predicates <- many (symbol "," *> parseBasicPredicate)
  return $ foldl1 Conj predicates
  where
    parseBasicPredicate = parens parsePredicate
                      <|> (Pred <$> parseExp)
