-- | Erlang Lexer, adapted from https://github.com/erlang/otp/blob/master/lib/compiler/src/core_scan.erl
module Syntax.Erlang.Lexer(tokenize, tokenize') where 

import Syntax.Erlang.Tokens
import qualified Text.Megaparsec.Char.Lexer as L
import Text.Megaparsec hiding (Token, token)
import Text.Megaparsec.Char 
import Control.Monad
import Data.Either

------------------------------------------------------------
-- Utility functions
------------------------------------------------------------

statePosition :: SourcePos -> (Int, Int) 
statePosition positionInfo  = (unPos $ sourceLine positionInfo, unPos $ sourceColumn positionInfo)

withSpan :: Parser (SrcSpan -> a) -> Parser a
withSpan m = do
   (line, col) <- fmap statePosition getSourcePos
   result <- m 
   (line', col') <- fmap statePosition getSourcePos 
   return (result (SrcSpan line col line' col'))
   

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

type Error  = String
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
-- Lexer
------------------------------------------------------------

-- | Produces a keyword parser
keyword :: Parser Token
keyword =   withSpan (symbol "module" >> return Mod)
       <|>  withSpan (symbol "attributes" >> return Attr)
       <|>  withSpan (symbol "do"     >> return Do)
       <|>  withSpan (symbol "let"    >> return Let)
       <|>  withSpan (symbol "in"     >> return In)
       <|>  withSpan (symbol "letrec" >>  return Letr)
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
          withSpan (symbol "("  >> return LPar)
      <|> withSpan (symbol ")"  >> return RPar) 
      <|> withSpan (symbol "{"  >> return LBra)
      <|> withSpan (symbol "}"  >> return RBra)
      <|> withSpan (symbol "["  >> return LBrt)
      <|> withSpan (symbol "]"  >> return RBrt)
      <|> withSpan (symbol "|"  >> return Pipe) 
      <|> withSpan (symbol ","  >> return Comm)
      <|> withSpan (symbol "->" >> return Arro)
      <|> withSpan (symbol "="  >> return Eqls) 
      <|> withSpan (symbol "/"  >> return Div )
      <|> withSpan (symbol "<"  >> return Lt  ) 
      <|> withSpan (symbol ">"  >> return Gt  )
      <|> withSpan (symbol ":"  >> return Coln)
      <|> withSpan (symbol "-|" >> return Anno)
      <|> withSpan (symbol "#"  >> return Pnd )
      <|> withSpan (symbol "~"  >> return Tild) 
      <|> withSpan (symbol "=>" >> return DArr)
      <|> withSpan (symbol ":=" >> return Asgn)

-- | Produces a string parser 
stringLiteral :: Parser Token
stringLiteral = 
   withSpan (Str <$> (char '"' >> manyTill L.charLiteral (char '"')))

atom :: Parser Token
atom = 
   withSpan (char '\'' >> (Atom <$> manyTill L.charLiteral (char '\'')))

-- | Produces a parser for variables
variable :: Parser Token
variable = 
   withSpan $ Var <$> ((:) <$> (satisfy isVarStart) <*> (takeWhileP Nothing isNameChar))
      
charLit :: Parser Token
charLit = 
   char '$' >> (withSpan $ Char <$> L.charLiteral)

-- TOOD: signed integers, this is tricky since it requires a lookahead if implemented 
-- improperly
-- TOOD: floating point numbers
-- TODO: scientific notation
integer :: Parser Token
integer = withSpan (Int <$> L.decimal)

token :: Parser Token
token =  lexeme (  keyword 
               <|> stringLiteral 
               <|> charLit
               <|> integer
               <|> separator
               <|> atom
               <|> variable)

-- | Run the lexer on the input string
tokenize :: String -> String -> Either (ParseErrorBundle String Error) [Token]
tokenize = runParser (do 
   -- many spaceConsumer 
   tokens <- many token  
   eof
   return tokens)

tokenize' :: String -> [Token]
tokenize' = fromRight (error "could not parse") . tokenize "<input>" 
