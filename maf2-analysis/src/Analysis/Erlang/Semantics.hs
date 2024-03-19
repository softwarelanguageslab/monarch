module Analysis.Erlang.Semantics where

import Analysis.Monad hiding (CallM(..))
import Analysis.Erlang.Monad
import Syntax.Erlang
import Domain.Erlang.Class
import Control.Monad.DomainError

import qualified Data.List as List
import qualified Data.Map as Map

-- | Populate the environment
-- with the necessary definitions from 
-- imports and/or top-level function 
-- definitions.
populate :: ErlangM m v mb => Declaration -> m [(String, Adr m)]
populate (Function (FunctionIdentifier nam _ _) _ loc) =
   List.singleton <$> ((nam,) <$> alloc @_ @_ @() loc)
populate _ = return mempty

evalFn :: forall m v mb . ErlangM m v mb => Declaration -> m v
evalFn (Function _ bdy loc) = do
   adr <- alloc @_ @_ @() loc
   env <- getEnv
   let vlu = clo (env, bdy)
   writeAdr @_ @() @(Adr m) @v adr vlu
   return vlu
evalFn _ = return nil

-- | Calls the function named "main" in 
-- the program
callMain :: ErlangM m v mb => m v
callMain  = 
   lookupEnv "main" >>= lookupAdr >>= clos call

-- | Evaluate an Erlang module
eval :: ErlangM m v mb => Module -> m v
eval (Module decls) = do
   env' <- Map.fromList . mconcat <$> mapM populate decls
   mapM_ (withEnv (const env') . evalFn) decls
   callMain

-- | Try to evaluate a list of clauses
evalClauses :: ErlangM m v mb => [Clause] -> m v
evalClauses (c:cs) = evalClause c `catch` handle
   where handle e 
          | isMatchError e = evalClauses cs
          | otherwise = escape e
evalClauses [] = escape MatchError


-- | (Try to) evaluate a single clause
evalClause :: ErlangM m v mb => Clause -> m v
evalClause = undefined
