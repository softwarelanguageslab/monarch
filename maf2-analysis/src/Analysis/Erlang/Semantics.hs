module Analysis.Erlang.Semantics where

import Analysis.Monad
import Analysis.Erlang.Monad
import Syntax.Erlang
import Domain.Erlang.Class

import qualified Data.Map as Map

-- | Populate the environment
-- with the necessary definitions from 
-- imports and/or top-level function 
-- definitions.
populate :: ErlangM m v => Declaration -> m (String, (Adr m))
populate (Function (FunctionIdentifier nam _ _) _ loc) = 
   (nam,) <$> alloc @_ @_ @() loc

evalFn :: ErlangM m v => Declaration -> m v
evalFn = undefined

eval :: ErlangM m v => Module -> m v
eval (Module decls) = do 
   env' <- Map.fromList <$> mapM populate decls
   mapM_ (withEnv (const env') . evalFn) decls >> return nil

