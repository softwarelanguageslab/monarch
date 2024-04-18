module Syntax.Scheme(module AST, module Undefiner, parseString, parseString') where

import Syntax.Scheme.AST as AST 
import Syntax.Scheme.Undefiner as Undefiner
import Control.Monad ((>=>))


-- | Parse the given string into a Scheme abstract
-- syntax tree.
parseString :: String -> Maybe Exp
parseString = parseSchemeExp >=> undefineExp

parseString' :: String -> Either String Exp
parseString' = parseSchemeExp' >=> undefineExp'
