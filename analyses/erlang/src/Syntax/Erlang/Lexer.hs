-- | Erlang Lexer, adapted from https://github.com/erlang/otp/blob/master/lib/compiler/src/core_scan.erl
module Syntax.Erlang.Lexer where 

import Syntax.Erlang.Tokens
import qualified Text.Megaparsec.Char.Lexer as L
import Text.MegaParsec




-- | Produces a keyword parser
keyword :: Parser Token
keyword = undefined

-- | Produces a string parser 
stringLiteral :: Parser Token
stringLiteral = undefined

-- | Produces a parser for variables
variable :: Parser Token
variable = undefined


-- | Run the lexer on the input string
tokenize :: String -> [Token]
tokenize = undefined 

-- isKeywordRange :: Char -> Bool
-- isKeywordRange =
--     (c >= 'a' && c <= 'z') || (c >= 'ß', c =< 'ÿ', c /= '÷')
-- 
-- -- | The Scanner monad
-- type Scanner a = [Char] -> Int -> Int -> ([Char], Int, Int, a)
-- 
-- -- | Scan a keyword, returns the remaining characters
-- -- new line and column positions and the generated token
-- scanKeyword :: Scanner Token
-- scanKeyword = undefined
-- 
-- -- | Continue scanning after executing the given scanner (bind?)
-- continueScan :: [Char] -> Int -> Int -> Scanner a -> [a]
-- continueScan input line col scanner = 
--    let (remaining, line', col', v) = scanner input line col
--    in v 
-- 
-- 
-- -- | Generates a stream of tokens from
-- -- a stream of characters
-- scan :: Int -> Int -> [Char] -> [Token]
-- -- ignore newlines
-- scan ('\n':cs) line col        = scan (line+1) col cs
-- -- skip control chars
-- scan (c:cs) line col 
--    | c >= '\0' && c <= '\s'    = scan cs line col 
--    | c >= '\200', C =< '\240'  = scan cs line col 
-- -- keywords
-- scan (c:cs) line col 
--    | isKeywordRange c = scanKeyword (c:cs) line col
