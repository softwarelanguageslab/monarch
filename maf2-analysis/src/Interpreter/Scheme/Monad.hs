{-# OPTIONS_GHC -Wno-name-shadowing #-}
module Interpreter.Scheme.Monad(InterpreterM(..), CEvalM(..)) where

import Control.Monad.Reader
import Control.Monad.State
import Interpreter.Scheme.Values
import Syntax.Scheme.AST
import Syntax.Ide
import Data.Functor.Identity
import qualified Data.Map as Map
import Data.Functor

class (Monad m, MonadFail m) => InterpreterM m where
   -- | Generates a random integer or real value
   random :: SchemeValue -> m SchemeValue
   -- | Allocates a new address for the given expression
   allocAdr :: Exp -> m CAdr
   -- | Allocates a new address for the given variable 
   allocVar :: Ide -> m CAdr
   -- | Allocates a new return address 
   allocRet :: Exp -> Env -> m CAdr
   -- |  Dereferences the given address 
   derefAdr :: CAdr -> m SchemeValue
   -- | Stores a value at the given address
   -- returns the address as pointer.
   storeVal :: SchemeValue -> CAdr -> m SchemeValue
   -- | Return the current environment
   getEnv :: m Env
   -- | Lookup a variable in the current environment
   lookupEnv :: String -> m CAdr
   -- | Lookup a value on the specified address
   lookupSto :: CAdr -> m SchemeValue
   -- | Replaces the environment with the one resulting from the given function 
   -- and executes the given computation within the modified environment
   withEnv :: (Env -> Env) -> m a -> m a
   -- | Same as `withEnv` but adds the given bindings to the environment
   withExtendedEnv :: [(String, CAdr)] -> m a -> m a
   -- | Extends the store with the given binding
   extendSto :: CAdr -> SchemeValue -> m ()


type AdrAlloc    = StateT Int
newtype CEvalM a = CEvalM { runCEval :: ReaderT Env (StateT Sto (AdrAlloc Identity)) a } deriving (Applicative, Monad, Functor)

freshId :: CEvalM Int
freshId = do
   CEvalM $ lift $ lift $ modify (+1)
   CEvalM $ lift $ lift get

instance MonadFail CEvalM where
   fail e = error $ show e
instance InterpreterM CEvalM where
   random _   = return $ SchemeInt 42 -- TODO: real randomness
   allocAdr e = flip (curry CAdr) e <$> freshId
   allocVar i = flip (curry VarAdr) i <$> freshId
   allocRet exp env = RetAdr exp env <$> freshId
   storeVal vlu adr =
      CEvalM (modify (Map.insert adr vlu)) $> SchemePtr adr
   getEnv = CEvalM ask
   lookupEnv = CEvalM . asks . Map.findWithDefault (error "binding not found")
   withEnv f (CEvalM m) = CEvalM $ local f m
   withExtendedEnv bds (CEvalM m) = CEvalM $ local (\env -> foldr (uncurry Map.insert) env bds) m
   extendSto adr vlu = CEvalM $ modify (Map.insert adr vlu)
   lookupSto adr = CEvalM $ gets $ Map.findWithDefault (error $ "address not found" ++ show adr) adr
   derefAdr = lookupSto
