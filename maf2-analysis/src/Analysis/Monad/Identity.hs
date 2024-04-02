module Analysis.Monad.Identity (
    IdentityDebug,
    runIdentityDebug
) where

import Control.Monad.Join 
import Control.Monad.Identity hiding (mzero)

newtype IdentityDebug a b = IdentityDebug (Identity b) deriving (Applicative, Monad, Functor)
instance MonadJoin (IdentityDebug a) where
   mzero = IdentityDebug mzero
   mjoin (IdentityDebug ma) (IdentityDebug mb) = IdentityDebug $ mjoin ma mb

runIdentityDebug :: IdentityDebug a b -> b
runIdentityDebug (IdentityDebug m) = runIdentity m
