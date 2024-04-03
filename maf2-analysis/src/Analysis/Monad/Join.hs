{-# LANGUAGE FlexibleContexts, FlexibleInstances, UndecidableInstances, AllowAmbiguousTypes, PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}

module Analysis.Monad.Join (
    JoinT,
    NonDetT,  
    runJoinT,
    runNonDetT,
) where

import Lattice 

import Control.Monad.Join 
import Control.Monad.Layer 
import ListT

import Control.Monad.Identity
import Control.Monad.Trans
import Control.Applicative

--
-- JoinT
--

-- | Join multiple paths together by joining their 
-- state together using a JoinLattice, anything 
-- below this on the stack will not be joined together and 
-- is assumed to be global across all paths
newtype JoinT m a = JoinT { _getJoinT :: IdentityT m a } 
    deriving (Applicative, Monad, MonadLayer, MonadTrans, Functor)

instance (Monad m) => MonadJoin (JoinT m) where
   mzero = return bottom
   mjoin = liftA2 Lattice.join

runJoinT :: JoinT m a -> m a
runJoinT (JoinT ma) = runIdentityT ma

-- 
-- NonDetT
-- 

-- | Useful for running the computation non-deterministically and defering join to the end.
newtype NonDetT m a = NonDetT (ListT m a) 
    deriving (Functor, Applicative, Monoid, MonadLayer, MonadTrans, Semigroup, Monad)

instance (Monad m) => MonadJoin (NonDetT m) where
   mzero = mempty
   mjoin (NonDetT ma) (NonDetT mb) = NonDetT $ ma `mplus` mb

runNonDetT :: Monad m => NonDetT m a -> m [a]
runNonDetT (NonDetT ma) = uncons ma >>= fix'
   where fix' Nothing         = return []
         fix' (Just (x, mxs)) = fmap (x:) (uncons mxs >>= fix')