module Interpreter.Scheme(module Values, runInterpreter) where

import Data.Function
import Syntax.Scheme.AST
import Interpreter.Scheme.Values as Values
import Interpreter.Scheme.Monad
import Interpreter.Scheme.Semantics
import Interpreter.Scheme.Primitives
import Control.Monad.Reader
import Control.Monad.State
import Data.Functor.Identity
import qualified Data.Map as Map

initialEnv :: Env
initialEnv = 
   Map.fromList $ map (\nam -> (nam,PrmAdr nam)) (primitiveNames @CEvalM)
initialSto :: Sto
initialSto = 
   Map.fromList $ map (\nam -> (PrmAdr nam, SchemePrim nam)) (primitiveNames @CEvalM)

runInterpreter :: Exp -> (SchemeValue, Sto)
runInterpreter e =
      runCEval (eval e)          &
      (`runReaderT` initialEnv)  &
      (`runStateT`  initialSto)  &
      (`evalStateT` 0)           &
      runIdentity
