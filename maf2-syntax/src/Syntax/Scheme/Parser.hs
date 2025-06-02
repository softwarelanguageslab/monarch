{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}
{-# LANGUAGE FlexibleContexts #-}
-- | Parser to S-expressions
module Syntax.Scheme.Parser(SExp(..), Span(..), parseSexp, parseDatum, spanOf, pattern (:::), smap, smapM) where

import Data.Functor
import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Language
import qualified Text.ParserCombinators.Parsec.Token as Token
import Text.Printf
import Syntax.Span
import Data.Functor.Identity (Identity)
import Control.Monad.Except

-- | Location information
fromSourcePos :: SourcePos -> Span
fromSourcePos pos = Span {
   filename = sourceName pos,
   startPosition = Position {
      line = sourceLine pos,
      column = sourceColumn pos
   },
   endPosition = Position {
      line = sourceLine pos,
      column = sourceColumn pos
   }
}

-- | Runs the given parser and provides the source location of the parsed expression to it
withSpan :: Parser (Span -> a) -> Parser a
withSpan m = do
   start <- getPosition
   f     <- m
   return (f $ fromSourcePos start)

-- | S-expression AST
data SExp =
   Num Integer Span    -- ^ literal integer
 | Rea Double  Span    -- ^ literal double 
 | Str String  Span    -- ^ literal string
 | Bln Bool    Span    -- ^ literal boolean
 | Cha Char    Span    -- ^ literal character
 | Atom String  Span   -- ^ a symbol
 | Pai SExp SExp Span  -- ^ a pair
 | SNil Span           -- ^ empty list
 | Quo SExp Span       -- ^ quoted expression 
 | Qua SExp Span       -- ^ quasi quotation
 | Unq SExp Span       -- ^ unquoted expression
 | Uqs SExp Span       -- ^ unquoted spliced expression
 deriving (Eq, Ord)

smap :: (SExp -> a) -> SExp -> [a]
smap _ (SNil _) = []
smap f (Pai a as _) = f a : smap f as
smap _ e = error $ "invalid list " ++ show e

smapM :: MonadError String m => (SExp -> m a) -> SExp -> m [a]
smapM _ (SNil _) = return []
smapM f (a ::: as) = do
   v <- f a
   vs <- smapM f as
   return (v:vs)
smapM _ e = throwError $ "malformed list " ++ show e

--
-- Span computation
--

instance SpanOf SExp where
   spanOf (Num _ s) = s
   spanOf (Rea _ s) = s
   spanOf (Str _ s) = s
   spanOf (Cha _ s) = s
   spanOf (Atom _ s) = s
   spanOf (Pai _ _ s) = s
   spanOf (SNil s) = s
   spanOf (Quo _ s) = s
   spanOf (Qua _ s) = s
   spanOf (Unq _ s) = s
   spanOf (Uqs _ s) = s
   spanOf (Bln _ s) = s

--
-- Showing
--

showPai :: SExp -> String
showPai (SNil _) = ""
showPai (Pai x xs _) = show x ++ " " ++ showPai xs
showPai p = ". " ++ show p

instance Show SExp where
   show (Num i _) = show i
   show (Rea r _) = show r
   show (Bln b _) = if b then "#t" else "#f"
   show (Cha c _) = "#\\" ++ [c]
   show (Atom s _) = s
   show p@(Pai {}) = printf "(%s)" $ showPai p
   show (SNil _) = "()"
   show (Quo e _) = printf "'%s" (show e)
   show (Str s _) = show s
   show (Qua e _) = printf "`%s" (show e)
   show (Unq e _) = printf ",%s" (show e)
   show (Uqs e _) = printf ",@%s" (show e)

--
-- Patterns
--

pattern (:::) :: SExp -> SExp -> SExp
pattern (:::) car cdr <- Pai car cdr _span
infixr 7 :::

--
-- Lexer
--

-- | Language definition
languageDef :: GenLanguageDef String u Identity
languageDef = emptyDef { Token.commentStart = "#|",
                         Token.commentEnd = "|#",
                         Token.commentLine = ";",

                         Token.identStart = letter <|> oneOf "*/<=>!?:$%_&~^@",
                         Token.identLetter = alphaNum <|> oneOf "+-.*/<=>!?:$%_&~^" }

lexer :: Token.GenTokenParser String u Identity
lexer = Token.makeTokenParser languageDef

identifier = Token.identifier lexer
reserved   = Token.reserved   lexer
parens     = Token.parens     lexer
natural    = Token.natural    lexer
float      = Token.float      lexer
whiteSpace = Token.whiteSpace lexer
symbol     = Token.symbol     lexer
lexeme     = Token.lexeme     lexer
stringLit  = Token.stringLiteral lexer
integer    = sign <*> natural
sign       =
      (char '-' >> return negate)
  <|> (char '+' >> return id)
  <|> return id

--
-- Parser
--

-- | Main parser entrypoint

sexpParser :: Parser [SExp]
sexpParser = do
   optional (try langLine) -- discard a language line
   expr <- whiteSpace >> many expression
   eof
   return expr


langLine :: Parser ()
langLine = void (string "#lang" >> manyTill anyChar (try (char '\n')))

expression :: Parser SExp
expression = withSpan $ atom <|> try literal <|> pair <|> quote <|> quasiquote <|> try unquoteSplice <|> unquote

--
-- Pairs and quotes
--

pair :: Parser (Span -> SExp)
pair = parens list

list :: Parser (Span -> SExp)
list = option SNil parseList

parseList :: Parser (Span -> SExp)
parseList = do
   ex  <- expression
   exs <- try (lexeme (char '.') >> expression) <|> withSpan list
   return $ Pai ex exs

quote :: Parser (Span -> SExp)
quote = lexeme $ Quo <$> (char '\'' >> expression)

quasiquote :: Parser (Span -> SExp)
quasiquote = lexeme $ Qua <$> (char '`' >> expression)

unquote :: Parser (Span -> SExp)
unquote = char ',' >> Unq <$> expression

unquoteSplice :: Parser (Span -> SExp)
unquoteSplice = string ",@" >> Uqs <$> expression

--
-- Atoms and literals
--

atom :: Parser (Span -> SExp)
atom = Atom <$> (special '+' <|> special '-' <|> identifier)

special :: Char -> Parser String
special c =
   try $ lexeme $ char c >> notFollowedBy (integer $> () <|> (float $> ())) $> [c]

literal :: Parser (Span -> SExp)
literal =
          try (Rea <$> float)
      <|> (Num <$> integer)
      <|> (Str <$> stringLit)
      <|> try booleanExp -- note on try: booleans match characters so we may need backtracking
      <|> characterExp

booleanExp = lexeme $ char '#' >> letter >>= letterToBoolean
    where letterToBoolean 't' = return $ Bln True
          letterToBoolean 'f' = return $ Bln False
          letterToBoolean c   = fail $ "invalid boolean character" ++ show c

characterExp = Cha <$> lexeme (symbol "#\\" >> (alphaNum <|> oneOf "*/<=>!?:$%_&~^@"))

--
-- Parser
--

-- | Run the parser to obtain a datum, returns the remainder of the input  
-- and the parsed datum (if one is available). If parsing fails, the 
-- output is still consumed, which is important when streaming from 
-- network connections or from input/output buffers.
parseDatum :: SourceName -> String -> Either String (SExp, String)
parseDatum nam = either (Left . show) Right  . parse (whiteSpace >> expression >>= (\expr -> getInput <&> (expr,))) nam

-- | Parse an s-expression as a string
parseSexp :: String -> Either String [SExp]
parseSexp = convert . parse sexpParser "SExpParser"
   where convert (Left e)  = Left $ show e
         convert (Right e) = Right e
