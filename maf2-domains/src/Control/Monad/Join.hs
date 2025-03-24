{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}

module Control.Monad.Join (
   MonadJoin,
   MonadJoinable(..),
   MonadBottom(..),
   cond,
   conds, 
   condCP, 
   condsCP,
   mjoinMap, 
   mjoins, 
   mjoins1', 
   mjoins1,
   msplit, 
   msplitOn,
   msplitOnCP,
   fromBL,
) where

import Lattice.Class
import Lattice.ConstantPropagationLattice
import Lattice.Split 
import Lattice.MaybeLattice()
import Lattice.ProductLattice()
import Domain.Core.BoolDomain

import Control.Monad (ap, mplus)
import Control.Monad.Reader hiding (mzero, join)
import Control.Monad.Writer hiding (mzero, join)
import Control.Monad.State hiding (mzero, join)
import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Identity
import Control.Applicative (liftA2)
import Data.Functor.Identity
import Lattice.BottomLiftedLattice (BottomLifted(..))

-- | Non-deterministic computations that can be joined together into a single computation
class (Monad m) => MonadJoinable m where
   mjoin :: Joinable v => m v -> m v -> m v
   (<||>) :: Joinable v => m v -> m v -> m v
   a <||> b = mjoin a b
   infix 0 <||>

class (Monad m) => MonadBottom m where    
   mbottom :: m a 

cond :: (MonadJoin m, BoolDomain b, Joinable v) => m b -> m v -> m v -> m v 
cond cnd csq alt = cnd >>= (\b -> mjoin (t b) (f b))
   where t b = if isTrue b then csq else mbottom
         f b = if isFalse b then alt else mbottom
-- | If value is @Bottom@ results in  @mbottom@ computation,
-- otherwise in a computation returning the wrapped value.
fromBL :: MonadBottom m => BottomLifted a -> m a
fromBL Bottom    = mbottom 
fromBL (Value v) = return v 

type MonadJoin m = (MonadJoinable m, MonadBottom m)

conds :: (BoolDomain b, MonadJoin m, Joinable v) => [(m b, m v)] -> m v -> m v
conds clauses els = foldr (uncurry cond) els clauses 

condCP :: (MonadJoin m, Joinable v) => m (CP Bool) -> m v -> m v -> m v
condCP = cond 

condsCP :: (MonadJoin m, Joinable v) => [(m (CP Bool), m v)] -> m v -> m v
condsCP = conds

mjoinMap :: (MonadJoin m, Foldable t, Joinable b) => (a -> m b) -> t a -> m b 
mjoinMap f = foldr (mjoin . f) mbottom

-- | Same as @mjoin@ but uses the given element as its neutral
mjoins1' :: (MonadJoin m, Foldable t, Joinable v) => v -> t (m v) -> m v 
mjoins1' = foldr mjoin . return

-- | Same as @mjoin@ but assumes there is at least one element in the foldable
mjoins1 :: (MonadJoin m, Foldable t, Joinable v) => t (m v) -> m v
mjoins1 = foldr1 mjoin 

mjoins :: (MonadJoin m, Foldable t, Joinable v) => t (m v) -> m v
mjoins = foldr mjoin mbottom

msplit :: (MonadJoin m, Joinable v, SplitLattice a) => (a -> m v) -> a -> m v
msplit f = mjoinMap f . split

msplitOn :: (MonadJoin m, BoolDomain b, Joinable v, Lattice a, SplitLattice a) => (a -> m b) -> (a -> m v) -> (a -> m v) -> a -> m v
msplitOn p ft ff vs = do (t, f) <- splitOnM p vs
                         protectBot ft t `mjoin` protectBot ff f
   where protectBot f v 
            | v == bottom = mbottom
            | otherwise   = f v 

msplitOnCP :: (MonadJoin m, Lattice v, Lattice a, SplitLattice a) => (a -> m (CP Bool)) -> (a -> m v) -> (a -> m v) -> a -> m v
msplitOnCP = msplitOn



-- Some instances for convenience

instance (MonadJoinable m) => MonadJoinable (ReaderT r m) where
   {-# INLINE mjoin #-}
   mjoin ma mb = ReaderT $ \r -> mjoin (runReaderT ma r) (runReaderT mb r)

instance (MonadBottom m) => MonadBottom (ReaderT r m) where 
   {-# INLINE mbottom #-}
   mbottom = ReaderT $ const mbottom

instance (MonadJoinable m, Joinable w, BottomLattice w, Monoid w) => MonadJoinable (WriterT w m) where
   {-# INLINE mjoin #-}
   mjoin (WriterT ma) (WriterT mb) = WriterT (mjoin ma mb)

instance (Monoid w, MonadBottom m) => MonadBottom (WriterT w m) where 
   mbottom = WriterT mbottom

instance (MonadJoinable m, Joinable s, BottomLattice s) => MonadJoinable (StateT s m) where
   {-# INLINE mjoin #-}
   mjoin ma mb = StateT (\st -> mjoin (runStateT ma st) (runStateT mb st))

instance (MonadBottom m) => MonadBottom (StateT r m) where 
   {-# INLINE mbottom #-}
   mbottom = StateT $ const mbottom

instance (MonadJoinable m) => MonadJoinable (MaybeT m) where
   {-# INLINE mjoin #-}
   mjoin ma mb = MaybeT $ mjoin (runMaybeT ma) (runMaybeT mb)

instance (MonadBottom m) => MonadBottom (MaybeT m) where 
   {-# INLINE mbottom #-}
   mbottom = MaybeT mbottom

instance MonadJoinable Maybe where
   mjoin (Just a) (Just b) = Just (join a b)
   mjoin (Just a) Nothing  = Just a
   mjoin Nothing  (Just b) = Just b
   mjoin _ _ = Nothing 
   
instance MonadBottom Maybe where
   mbottom = Nothing

instance MonadJoinable Identity where
   mjoin = liftA2 join

instance (MonadJoinable m) => MonadJoinable (IdentityT m) where
   {-# INLINE mjoin #-}
   mjoin (IdentityT ma) (IdentityT mb) = IdentityT $ mjoin ma mb
instance (MonadBottom m) => MonadBottom (IdentityT m) where 
   {-# INLINE mbottom #-}
   mbottom = IdentityT mbottom
