{-# LANGUAGE LambdaCase #-}
-- | Parses Soter's "uncoverable" predicates
-- See: Emanuele D'Osualdo, Jonathan Kochems, and Luke Ong. Automatic verification of erlang-
-- style concurrency. In Static Analysis - 20th International Symposium, SAS 2013
-- and "Soter: An Automatic Safety Verifier for Erlang"
module Syntax.CoreErlang.Soter(
    -- * AST
    Predicate(..),
    Exp(..),
    Constant(..),
    getNum,
    getFloat,
    getBln,
    conjunctions,
    -- * Parsing
    parsePredicate,
    parseExp,
    parseConstant,
    parseFromString,
    fromAttributes,
    -- * Bounds extraction
    extractBoundsPredicate,
    extractBoundsPredicates,
  ) where

import Text.Megaparsec
import Text.Megaparsec.Char
import qualified Text.Megaparsec.Char.Lexer as L
import Data.Void
import Control.Monad.Combinators.Expr
import qualified Syntax.CoreErlang.AST as CoreErlang
import Data.Maybe (fromJust)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Debug.Trace as Debug

------------------------------------------------------------
-- Data Types
------------------------------------------------------------

-- | A SOTER predicate
data Predicate = Conj Predicate Predicate
               | Pred Exp
               deriving (Ord, Eq, Show)

-- Return all expressions in a conjunction as a set
conjunctions :: Predicate -> Set Exp
conjunctions (Pred expr) = Set.singleton expr
conjunctions (Conj p1 p2) =
  conjunctions p1 `Set.union` conjunctions p2

-- | The language that is actually supported in these "uncoverable" annotations
-- is not clearly documented in the SOTER papers, so we assume that a simple arithmic language is used.
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
              | Bln Bool
              deriving (Ord, Eq, Show)

getNum :: Constant -> Maybe Int
getNum = \case Num n -> Just n
               _ -> Nothing


getFloat :: Constant -> Maybe Float
getFloat = \case Floa f -> Just f
                 _ -> Nothing 

getBln :: Constant -> Maybe Bool
getBln = \case Bln b -> Just b
               _ -> Nothing

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
identifier = lexeme ((:) <$> letterChar <*> many (alphaNumChar <|> char '_')) <?> "variable"

------------------------------------------------------------
-- Expression Parser
------------------------------------------------------------

parseConstant :: Parser Constant
parseConstant = (Floa <$> try float)
            <|> (Num <$> integer)

parseVar :: Parser Exp
parseVar = Var <$> identifier

parseTerm :: Parser Exp
parseTerm = (try $ parens parseExp)
        <|> (try $ Const <$> parseConstant)
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
  predicates <- sepBy1 parseBasicPredicate (symbol ",") <* eof
  return $ foldl1 Conj predicates
  where
    parseBasicPredicate = parens parsePredicate
                      <|> (Pred <$> parseExp)

parseFromString :: String -> Maybe Predicate
parseFromString = either (const Nothing) Just . Debug.traceShowId . parse parsePredicate "<unknown>"

-------------------------------------------------------------
-- Parse "uncoverable" attributes from a Core Erlang module
-------------------------------------------------------------

fromAttributes :: CoreErlang.Module -> [Predicate]
fromAttributes modl =
    map (parseAttribute . CoreErlang.attributeLiteral) attrs
  where attrs = filter ((== "uncoverable") . CoreErlang.attributeName) $ CoreErlang.moduleAttributes modl
        parseAttribute = fromJust . Debug.traceShowId . parseFromString . fromJust . Debug.traceShowId . CoreErlang.litToString  

-------------------------------------------------------------
-- Reasoning about SOTER predicates
-------------------------------------------------------------

-- | Extract bounds from the given expression
-- A bound is a combination of a variable and how much precision we wish to have for that variable.
-- e.g.,
-- -uncoverable(X > 10)
-- then we have a bound X=10, because we want to count at least to 10 to elliminate false positives.
--
-- NOTE: relational expressions and arithmic expressions
-- are not supported (i.e., each expression should contain
-- at most one variable)
extractBound :: Exp -> (String, Int)
extractBound =
  \case Lte (Var nam) (Const (Num n)) -> (nam, n)
        Lte (Const (Num n)) (Var nam) -> (nam, n)
        Gte (Const (Num n)) (Var nam) -> (nam, n)
        Gte (Var nam) (Const (Num n)) -> (nam, n)
        Lt (Var nam) (Const (Num n))  -> (nam, n)
        Gt (Const (Num n)) (Var nam)  -> (nam, n)
        Gt (Var nam) (Const (Num n))  -> (nam, n)
        e -> error $ "unsupported expression " ++ show e

-- | Extract bounds from a predicate, if a variable
-- occurs more than once in a predicate's conjunction
-- than its maximum bound is taken
extractBoundsPredicate :: Predicate -> Map String Int
extractBoundsPredicate =
  foldr (uncurry (Map.insertWith max) . extractBound) Map.empty . Set.toList . conjunctions


-- | Extract the bounds from a list of predicates
extractBoundsPredicates :: [Predicate] -> Map String Int
extractBoundsPredicates =
  foldr (Map.unionWith max . extractBoundsPredicate) Map.empty


