module Syntax.Erlang.Parser(Term(..), Loc, ParseError, parseErlangTerm) where

import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Language
import qualified Text.ParserCombinators.Parsec.Token as Token
import Syntax.Span

-- | The location of an AST node in a file
type Loc = Span
         
withLoc :: Parser (Loc -> a) -> Parser a
withLoc m = do
   start <- getPosition
   f     <- m
   return (f $ fromSourcePos start)

fromSourcePos :: SourcePos -> Loc 
fromSourcePos pos = ESpan {
   filename = sourceName pos,
   startPosition = Position (sourceLine pos) (sourceColumn pos),
   endPosition = Position (sourceLine pos) (sourceColumn pos),
   annotation = ()
}

data Term = Tuple [Term] Loc   -- ^ { t1, t2, ..., tn }
          | Atom  String Loc   -- ^ atom
          | List  [Term] Loc   -- ^ [ t1, t2, ..., tn }
          | TrueLiteral Loc    -- ^ true
          | FalseLiteral Loc   -- ^ false
          | Text String Loc 
          | Number Integer Loc
          | Floating Float Loc
          | Character Char Loc
         deriving (Eq, Show, Ord)


instance SpanOf Term where 
   spanOf (Tuple _ loc) = loc
   spanOf (Atom  _ loc) = loc
   spanOf (List  _ loc) = loc
   spanOf (TrueLiteral  loc) = loc
   spanOf (FalseLiteral loc) = loc
   spanOf (Text _     loc) = loc
   spanOf (Number _   loc) = loc
   spanOf (Floating _ loc) = loc
   spanOf (Character _ loc) = loc

languageDef :: LanguageDef st
languageDef = emptyDef { Token.identStart = letter }

lexer   = Token.makeTokenParser languageDef

symbol :: String -> Parser String
symbol  = Token.symbol lexer

ident :: Parser String
ident   = Token.identifier lexer

term :: Parser Term

term =  withLoc (tuple
    <|> list
    <|> atom
    <|> number
    <|> strings)

-- | Parses a tuple into a term.
--
-- Examples of tuples are: {a, b, c}
tuple :: Parser (Loc -> Term)
tuple = Tuple <$> between (symbol "{") (symbol "}") (sepBy term (symbol ","))

-- | Parses a list into a term
--
-- Examples of lists are: [a, b, c]
list :: Parser (Loc -> Term)
list  = List <$> between (symbol "[") (symbol "]") (sepBy term (symbol ","))

-- | An atom is an identifier starting with a lowercase letter.
-- Other things may also be atoms, but then they have to be surrounded by single quotes.
atom :: Parser (Loc -> Term)
atom = Atom <$> (between (char '\'') (char '\'') quotedAtom <|> ident)
   -- note: we do not really care about lower/uppercase letters here, since uppercase letters are variables 
   -- and variables cannot occur in this datastructure.

allowedAtom :: Parser Char
allowedAtom = 
   alphaNum <|> oneOf ['_', '+', '-', '*', '.', '@', '>', '<', '>', '<', '=']

quotedAtom :: Parser String
quotedAtom = many allowedAtom

number :: Parser (Loc -> Term)
number = Number <$> Token.integer lexer

strings :: Parser (Loc -> Term)
strings = Text <$> Token.stringLiteral lexer

parseErlangTerm :: String -- ^ the name of the program
                -> String -- ^ the program itself 
                -> Either ParseError Term -- ^ the parsing output (right) or an error (left)
parseErlangTerm = parse term
