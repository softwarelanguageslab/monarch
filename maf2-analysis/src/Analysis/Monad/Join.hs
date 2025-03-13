{-# LANGUAGE FlexibleContexts, FlexibleInstances, UndecidableInstances, AllowAmbiguousTypes, PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}

module Analysis.Monad.Join (
    JoinT(..),
    NonDetT,
    SetNonDetT, 
    runJoinT,
    runNonDetT,
    runSetNonDetT,
) where

import Lattice.Class

import Control.Monad.Join
import Control.Monad.Layer
import ListT

import Control.Monad (ap, mplus)
import Control.Monad.Identity hiding (mzero, join)
import qualified Control.Monad as C
import Control.Applicative
import Analysis.Monad.Cache
import Lattice.BottomLiftedLattice (BottomLifted(..))
import Data.Set (Set)
import qualified Data.Set as Set

--
-- JoinT
--


-- | Join multiple paths together by joining their 
-- state together using a JoinLattice, anything 
-- below this on the stack will not be joined together and 
-- is assumed to be global across all paths
newtype JoinT m a = JoinT { runJoinT' :: m (BottomLifted a) }

-- The 'crux' of the transformer
instance (Monad m) => MonadJoinable (JoinT m) where
   mjoin (JoinT ma) = JoinT . liftA2 join ma . runJoinT'
instance (Monad m) => MonadBottom (JoinT m) where
   mzero = JoinT $ return Bottom

-- Standard monad implementations
instance (Functor m) => Functor (JoinT m) where
   {-# INLINE fmap #-}
   fmap f (JoinT m) = JoinT $ fmap (\case Bottom -> Bottom
                                          Value v -> Value (f v)) m
instance (Monad m) => Applicative (JoinT m) where
   {-# INLINE pure #-}
   pure = JoinT . pure . Value
   {-# INLINE (<*>) #-}
   (<*>) = ap
instance (Monad m) => Monad (JoinT m) where
   {-# INLINE (>>=) #-}
   (>>=) (JoinT m) f = JoinT $ m >>= (\case Bottom  -> return Bottom
                                            Value v -> runJoinT' (f v))
instance MonadTrans JoinT where
   {-# INLINE lift #-}
   lift m = JoinT $ fmap Value m
instance MonadLayer JoinT where
   {-# INLINE upperM #-}
   upperM = lift
   {-# INLINE lowerM #-}
   lowerM f m = JoinT $ f (runJoinT' m)
instance (MonadCache m) => MonadCache (JoinT m) where
   type Key (JoinT m) k = Key m k
   type Val (JoinT m) v = Val m (BottomLifted v)
   type Base (JoinT m) = Base m

   key   = upperM . key
   val   = JoinT . val
   run f = run (runJoinT' . f)

-- | Same as `run` from `MonadCache` but replaces the synthetic bottom value 
-- with the bottom value of the underlying domain.
runJoinT :: (Functor m) => JoinT m a -> m (BottomLifted a)
runJoinT (JoinT m) = m

-- 
-- NonDetT
-- 

-- | Non-deterministic computations
newtype NonDetT m a = NonDetT (ListT m a)
    deriving (Functor, Applicative, Monoid, MonadLayer, MonadTrans, Semigroup, Monad, MonadCache)

instance (Monad m) => MonadJoinable (NonDetT m) where
   mjoin (NonDetT ma) (NonDetT mb) = NonDetT $ ma `mplus` mb
instance (Monad m) => MonadBottom (NonDetT m) where
   mzero = NonDetT C.mzero

runNonDetT :: Monad m => NonDetT m a -> m [a]
runNonDetT (NonDetT ma) = uncons ma >>= fix'
   where fix' Nothing         = return []
         fix' (Just (x, mxs)) = fmap (x:) (uncons mxs >>= fix')


--
-- NonDetT (but with cached sets)
--

-- | Same as @NonDetT@ but caches sets instead of lists
newtype SetNonDetT m a = SetNonDetT  { getSetNonDetT :: (ListT m a) }
                  deriving (Functor, Applicative, Monad, Monoid, MonadLayer, MonadTrans, Semigroup)


instance (MonadCache m,  Monad m) => MonadCache (SetNonDetT m) where
   type Key (SetNonDetT m) k = Key (ListT m) k
   type Val (SetNonDetT m) v = Val m (Set v)
   type Base (SetNonDetT m) = Base (ListT m) 
   key = upperM . key
   val :: forall v . Val m (Set v) -> SetNonDetT m v
   val v = SetNonDetT (ListT $ val @m @(Set v) v >>= uncons . ListT.fromFoldable . Set.toList)
   run f = run (fmap Set.fromList . ListT.toList . getSetNonDetT . f)

instance (Monad m) => MonadJoinable (SetNonDetT m) where
   mjoin (SetNonDetT ma) (SetNonDetT mb) = SetNonDetT $ ma `mplus` mb
instance (Monad m) => MonadBottom (SetNonDetT m) where
   mzero = SetNonDetT C.mzero

runSetNonDetT :: (Ord a, Monad m) => SetNonDetT m a -> m (Set a)
runSetNonDetT (SetNonDetT ma) = Set.fromList <$> (uncons ma >>= fix')
   where fix' Nothing         = return []
         fix' (Just (x, mxs)) = fmap (x:) (uncons mxs >>= fix')

