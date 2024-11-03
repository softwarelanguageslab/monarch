{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Analysis.Erlang.Semantics where

import Analysis.Monad.Allocation ( AllocM(alloc) )
import Analysis.Monad.Environment
    ( EnvM(withEnv, getEnv, lookupEnv, withExtendedEnv) )
import Analysis.Monad.Store ( StoreM(lookupAdr, writeAdr) )
import Analysis.Erlang.Monad
import Syntax.Erlang
import Domain.Erlang.Class
import Control.Monad.Escape

import qualified Data.List as List
import Analysis.Monad.Fix (fix)

-- | Populate the environment
-- with the necessary definitions from 
-- imports and/or top-level function 
-- definitions.
populate :: ErlangM m v mb => Declaration -> m [(String, Adr m)]
populate (Function (FunctionIdentifier nam _ _) _ loc) =
   List.singleton . (nam,) <$> alloc @_ @_ loc
populate _ = return mempty

declareFn :: forall m v mb . ErlangM m v mb => Declaration -> m v
declareFn (Function _ bdy loc) = do
   adr <- alloc @_ @_ loc
   env <- getEnv
   let vlu = clo (env, bdy)
   writeAdr @(Adr m) @v adr vlu
   return vlu
declareFn _ = return nil

-- | Calls the function named "main" in 
-- the program
callMain :: ErlangM m v mb => (Cmp -> m v) -> m v
callMain recur =
   lookupEnv "main" >>= lookupAdr >>= flip (apply recur) []

-- | Main evaluation entry point
eval :: ErlangM m v mb => Cmp -> m v
eval = fix eval'

eval' :: ErlangM m v mb => (Cmp -> m v) -> Cmp -> m v
eval' recur (ErlangModule mod') = evalModule recur mod'
eval' recur (ErlangCall   bdy)  = undefined
eval' recur (ErlangActor  bdy)  = undefined

-- | Evaluate an Erlang module
evalModule :: ErlangM m v mb => (Cmp -> m v) -> Module -> m v
evalModule recur (Module decls) = do
   env' <- mconcat <$> mapM populate decls
   mapM_ (withExtendedEnv env' . declareFn) decls
   callMain recur

-- | Try to evaluate a list of clauses
evalClauses :: ErlangM m v mb => (Cmp -> m v) -> [Clause] -> m v
evalClauses recur (c:cs) = evalClause c `catch` handle
   -- TODO: use `catchOn` here.
   where handle e
          | isMatchError e = evalClauses recur cs
          | otherwise = escape e
evalClauses recur [] = escape MatchError

-- | (Try to) evaluate a single clause
evalClause :: Clause -> m v
evalClause = undefined

----------------------------------------
-- Closures and primitives
----------------------------------------

apply :: (Cmp -> m v) -> v -> [v] -> m v
apply = undefined

applyClosure :: (Cmp -> m v) -> Clo v -> [v] -> m v
applyClosure = undefined
