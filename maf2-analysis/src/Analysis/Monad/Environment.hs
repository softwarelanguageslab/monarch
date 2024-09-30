{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.Environment (
   EnvM(..),
   EnvT(..),
   runEnv,
) where

import Analysis.Environment

import Control.Monad.Reader
import Control.Monad.Join
import Control.Monad.Layer
import Analysis.Monad.Cache (MonadCache)

---
--- EnvM typeclass
---

-- | Reading from an environment 
class (Monad m, Environment env adr) => EnvM m adr env | m -> env, m -> adr where
   -- | Lookup the address of the given identifier,
   -- may throw an exception if the identifier is not found 
   -- since it means that the program is not well-formed.
   lookupEnv :: String -> m adr
   lookupEnv nam = fmap (Analysis.Environment.lookup nam) getEnv
   -- | Extend the environment with the given list of bindings and run the computation
   -- given as an argument in it
   withExtendedEnv :: [(String, adr)] -> m a -> m a
   withExtendedEnv bds = withEnv (extends bds)
   -- | Retrieves the current environment 
   getEnv :: m env
   -- | Runs function `f` on the environment and to compute the environment to execute `m` in
   withEnv :: {- f -} (env -> env) -> m a -> m a
   -- | Runs `m` in the context of the value produced by `(ctx -> ctx)`.
   {-# MINIMAL withEnv, getEnv #-}

---
--- The EnvT monad transformer
---

newtype EnvT env m a = EnvT (ReaderT env m a)
   deriving (MonadReader env, MonadJoin, Monad, Applicative, MonadLayer, MonadTrans, Functor, MonadCache, MonadTransControl)

instance {-# OVERLAPPING #-} (Environment env adr, Monad m) => EnvM (EnvT env m) adr env where
   lookupEnv nam = asks (Analysis.Environment.lookup nam)
   withExtendedEnv bds = local (extends bds)
   getEnv = ask
   withEnv = local

instance forall env adr t m . (Environment env adr, Monad (t m), MonadLayer t, EnvM m adr env) => EnvM (t m) adr env where
   lookupEnv = upperM . lookupEnv
   withExtendedEnv bds = lowerM (withExtendedEnv bds)
   getEnv = upperM getEnv
   withEnv f = lowerM (withEnv f)

runEnv :: forall env m a .  env -> (EnvT env m) a -> m a
runEnv initialEnv (EnvT m) = runReaderT m initialEnv
