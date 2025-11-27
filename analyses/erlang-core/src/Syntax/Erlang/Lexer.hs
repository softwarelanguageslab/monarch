-- | Erlang Lexer, adapted from https://github.com/erlang/otp/blob/master/lib/compiler/src/core_scan.erl
module Syntax.Erlang.Lexer(tokenize, tokenize') where 

import Syntax.Erlang.Tokens
import qualified Text.Megaparsec.Char.Lexer as L
import Text.Megaparsec hiding (Token, token)
import Text.Megaparsec.Char
import Control.Monad
import Data.Either
import Data.Char (ord, chr)
import Numeric (readInt)
import Data.Void

------------------------------------------------------------
-- Utility functions
------------------------------------------------------------

statePosition :: SourcePos -> (String, Int, Int) 
statePosition positionInfo  = (sourceName positionInfo, unPos $ sourceLine positionInfo, unPos $ sourceColumn positionInfo)

withSpan :: Parser (SrcSpan -> a) -> Parser a
withSpan m = do
   (name, line, col) <- fmap statePosition getSourcePos
   result <- m 
   (_, line', col') <- fmap statePosition getSourcePos 
   return (result (SrcSpan name line col line' col'))
   

------------------------------------------------------------
-- Character predicates
------------------------------------------------------------

isUpper :: Char -> Bool 
isUpper c = (c >= 'A' && c <= 'Z')
         || (c >= 'À' && c <= 'Þ' && c /= '×')

isLower :: Char -> Bool
isLower c = (c >= 'a' && c <= 'z')
         || (c >= 'ß' && c <= 'ÿ' && c /= '÷')

isNumeric :: Char -> Bool 
isNumeric c = c >= '0' && c <= '9'

isSpecial :: Char -> Bool 
isSpecial c = c == '_' || c == '@' 

isLetter :: Char -> Bool 
isLetter c = isUpper c || isLower c

isNameChar :: Char -> Bool 
isNameChar c = isLetter c || isNumeric c || isSpecial c

isVarStart :: Char -> Bool 
isVarStart c = isUpper c || c == '_'

------------------------------------------------------------
-- Lexer setup
------------------------------------------------------------

type Error  = Void
type Parser = Parsec Error String

spaceConsumer :: Parser ()
spaceConsumer = L.space spaces linecomment empty
   where spaces =  space1
               -- <|> (void $ char '\n')
               -- <|> (void $ controlChar)
         linecomment = L.skipLineComment "%"

lexeme :: Parser a -> Parser a
lexeme = L.lexeme spaceConsumer

symbol :: String -> Parser String
symbol = L.symbol spaceConsumer

------------------------------------------------------------
-- Escape sequence handling (matching core_scan.erl)
------------------------------------------------------------

-- | Parse an escape sequence following a backslash
escapeSequence :: Parser Char
escapeSequence = do
   char '\\'
   (    (char 'n'  >> return '\n')   -- LF
    <|> (char 'r'  >> return '\r')   -- CR
    <|> (char 't'  >> return '\t')   -- TAB
    <|> (char 'v'  >> return '\v')   -- VT
    <|> (char 'b'  >> return '\b')   -- BS
    <|> (char 'f'  >> return '\f')   -- FF
    <|> (char 'e'  >> return '\ESC') -- ESC
    <|> (char 's'  >> return ' ')    -- SPC
    <|> (char 'd'  >> return '\DEL') -- DEL
    <|> octalEscape                   -- \DDD (1-3 octal digits)
    <|> controlEscape                 -- \^X (control character)
    <|> anySingle)                    -- Any other character (e.g., \\, \', \")

-- | Parse octal escape sequence (\DDD where D is 0-7)
octalEscape :: Parser Char
octalEscape = do
   digits <- some (satisfy (\c -> c >= '0' && c <= '7'))
   let value = foldl (\acc d -> acc * 8 + (ord d - ord '0')) 0 (take 3 digits)
   return (chr value)

-- | Parse control character escape (\^X)
controlEscape :: Parser Char
controlEscape = do
   char '^'
   c <- anySingle
   return (chr ((ord c) `mod` 32))

-- | Custom character literal parser supporting all Core Erlang escape sequences
coreCharLiteral :: Parser Char
coreCharLiteral = escapeSequence <|> anySingle

------------------------------------------------------------
-- Lexer
------------------------------------------------------------

-- | Produces a keyword parser
keyword :: Parser Token
keyword =   withSpan (symbol "module" >> return Mod)
       <|>  withSpan (symbol "attributes" >> return Attr)
       <|>  withSpan (symbol "do"     >> return Do)
       <|>  withSpan (symbol "letrec" >>  return Letr)
       <|>  withSpan (symbol "let"    >> return Let)
       <|>  withSpan (symbol "in"     >> return In)
       <|>  withSpan (symbol "apply"  >>  return Appl)
       <|>  withSpan (symbol "call"   >>  return Call)
       <|>  withSpan (symbol "primop" >>  return PrmO)
       <|>  withSpan (symbol "case"   >>  return Case)
       <|>  withSpan (symbol "of"     >>  return Of  )
       <|>  withSpan (symbol "end"    >>  return End )
       <|>  withSpan (symbol "when"   >>  return When)
       <|>  withSpan (symbol "fun"    >>  return Fun )
       <|>  withSpan (symbol "try"    >>  return Try )
       <|>  withSpan (symbol "catch"  >>  return Catc)
       <|>  withSpan (symbol "receive">>  return Recv)
       <|>  withSpan (symbol "after"  >>  return Afte)

separator :: Parser Token
separator =
          withSpan (symbol "->" >> return Arro)  -- Multi-char operators first
      <|> withSpan (symbol "-|" >> return Anno)
      <|> withSpan (symbol "=>" >> return DArr)
      <|> withSpan (symbol ":=" >> return Asgn)
      <|> withSpan (symbol "("  >> return LPar)
      <|> withSpan (symbol ")"  >> return RPar)
      <|> withSpan (symbol "{"  >> return LBra)
      <|> withSpan (symbol "}"  >> return RBra)
      <|> withSpan (symbol "["  >> return LBrt)
      <|> withSpan (symbol "]"  >> return RBrt)
      <|> withSpan (symbol "|"  >> return Pipe)
      <|> withSpan (symbol ","  >> return Comm)
      <|> withSpan (symbol "="  >> return Eqls)
      <|> withSpan (symbol "/"  >> return Div )
      <|> withSpan (symbol "<"  >> return Lt  )
      <|> withSpan (symbol ">"  >> return Gt  )
      <|> withSpan (symbol ":"  >> return Coln)
      <|> withSpan (symbol "#"  >> return Pnd )
      <|> withSpan (symbol "~"  >> return Tild)

-- | Produces a string parser with Core Erlang escape sequences
stringLiteral :: Parser Token
stringLiteral =
   withSpan (Str <$> (char '"' >> manyTill coreCharLiteral (char '"')))

-- | Parse an atom with Core Erlang escape sequences
atom :: Parser Token
atom =
   withSpan (char '\'' >> (Atom <$> manyTill coreCharLiteral (char '\'')))

-- | Produces a parser for variables
variable :: Parser Token
variable =
   withSpan $ Var <$> ((:) <$> (satisfy isVarStart) <*> (takeWhileP Nothing isNameChar))

-- | Parse character literal ($c or $\n etc)
charLit :: Parser Token
charLit =
   char '$' >> (withSpan $ Char <$> coreCharLiteral)

------------------------------------------------------------
-- Number parsing (integers, floats, scientific notation)
------------------------------------------------------------

-- | Helper to convert a digit character to its value in a given base
digitValue :: Char -> Int
digitValue c
   | c >= '0' && c <= '9' = ord c - ord '0'
   | c >= 'a' && c <= 'f' = ord c - ord 'a' + 10
   | c >= 'A' && c <= 'F' = ord c - ord 'A' + 10
   | otherwise = error "Invalid digit"

-- | Check if a character is a valid digit in the given base
isValidDigit :: Int -> Char -> Bool
isValidDigit base c
   | base <= 10 = c >= '0' && c < chr (ord '0' + base)
   | otherwise  = (c >= '0' && c <= '9') ||
                  (c >= 'a' && c < chr (ord 'a' + base - 10)) ||
                  (c >= 'A' && c < chr (ord 'A' + base - 10))

-- | Parse base#digits notation (e.g., 16#FF, 2#1010)
basedInteger :: Parser Integer
basedInteger = do
   base <- L.decimal
   char '#'
   guard (base >= 2 && base <= 16)
   digits <- some (satisfy (isValidDigit (fromInteger base)))
   let value = foldl (\acc d -> acc * base + toInteger (digitValue d)) 0 digits
   return value

-- | Parse a floating point number with optional scientific notation
floatingPoint :: Parser Token
floatingPoint = withSpan $ do
   -- Parse the integer part
   intPart <- L.decimal :: Parser Integer
   char '.'
   -- Parse the decimal part
   decPart <- some digitChar
   -- Optional exponent
   expPart <- optional $ do
      _ <- char 'e' <|> char 'E'
      sign <- optional (char '+' <|> char '-')
      expDigits <- L.decimal :: Parser Integer
      return $ case sign of
         Just '-' -> negate expDigits
         _        -> expDigits
   -- Convert to float
   let decValue = read (show intPart ++ "." ++ decPart) :: Double
   let finalValue = case expPart of
         Nothing -> decValue
         Just e  -> decValue * (10 ** fromInteger e)
   return $ Floa (realToFrac finalValue)

-- | Parse signed or unsigned integer (with optional base notation)
integer :: Parser Token
integer = withSpan $ do
   -- Optional sign (but only if followed by a digit to avoid consuming - from ->)
   sign <- optional $ try $ do
      s <- char '+' <|> char '-'
      lookAhead digitChar  -- Ensure a digit follows the sign
      return s
   -- Try based integer first (with lookbehind for base#), then decimal
   value <- try basedInteger <|> L.decimal
   let signedValue = case sign of
         Just '-' -> negate value
         _        -> value
   return $ Int signedValue

-- | Parse any number (try float first, then integer)
number :: Parser Token
number = try floatingPoint <|> integer

token :: Parser Token
token =  lexeme (  keyword
               <|> stringLiteral
               <|> charLit
               <|> number         -- Now handles integers, floats, and scientific notation
               <|> separator
               <|> atom
               <|> variable)

-- | Adds an EOF token to the end of the stream in a lazy manner
addEOF :: [Token] -> [Token]
addEOF [] = [EOF]
addEOF (a:as) = a : (addEOF as)

-- | Run the lexer on the input string
tokenize :: String -> String -> Either (ParseErrorBundle String Error) [Token]
tokenize filename = runParser (do 
   -- many spaceConsumer 
   tokens <- many token  
   eof
   return tokens) filename

tokenize' :: String -> String -> [Token]
tokenize' inputName = either (error . errorBundlePretty)  id . tokenize inputName 
