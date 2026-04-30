{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ImpredicativeTypes #-}

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

import Lattice.ConstantPropagationLattice
import Lattice.Split
import Lattice.MaybeLattice()
import Lattice.ProductLattice()
import Domain.Core.BoolDomain

import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.State
import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Identity
import Data.Functor.Identity
import Lattice.BottomLiftedLattice (BottomLifted(..))
import Control.Monad.Except (ExceptT(..))
import Data.Kind (Constraint)
import Lattice.Class (BottomLattice)
import qualified Lattice.Class as Lattice

-- | Non-deterministic computations that can be joined together into a single computation
class (Monad m) => MonadJoinable m where
   type Joinable m v :: Constraint
   mjoin :: Joinable m v => m v -> m v -> m v
   (<||>) :: Joinable m v => m v -> m v -> m v
   a <||> b = mjoin a b
   infix 0 <||>

class (Monad m) => MonadBottom m where
   mbottom :: m a

cond :: (MonadJoin m, BoolLattice b, Joinable m v) => m b -> m v -> m v -> m v
cond cnd csq alt = cnd >>= (\b -> mjoin (t b) (f b))
   where t b = if isTrue b then csq else mbottom
         f b = if isFalse b then alt else mbottom
-- | If value is @Bottom@ results in  @mbottom@ computation,
-- otherwise in a computation returning the wrapped value.
fromBL :: forall a m . MonadBottom m => BottomLifted a -> m a
fromBL Bottom    = mbottom
fromBL (Value v) = return v

type MonadJoin m = (MonadJoinable m, MonadBottom m)

conds :: (BoolDomain b, MonadJoin m, Joinable m v) => [(m b, m v)] -> m v -> m v
conds clauses els = foldr (uncurry cond) els clauses

condCP :: (MonadJoin m, Joinable m v) => m (CP Bool) -> m v -> m v -> m v
condCP = cond

condsCP :: (MonadJoin m, Joinable m v) => [(m (CP Bool), m v)] -> m v -> m v
condsCP = conds

mjoinMap :: (MonadJoin m, Foldable t, Joinable m b) => (a -> m b) -> t a -> m b
mjoinMap f = foldr (mjoin . f) mbottom

-- | Same as @mjoin@ but uses the given element as its neutral
mjoins1' :: (MonadJoin m, Foldable t, Joinable m v) => v -> t (m v) -> m v
mjoins1' = foldr mjoin . return

-- | Same as @mjoin@ but assumes there is at least one element in the foldable
mjoins1 :: (MonadJoin m, Foldable t, Joinable m v) => t (m v) -> m v
mjoins1 = foldr1 mjoin

mjoins :: (MonadJoin m, Foldable t, Joinable m v) => t (m v) -> m v
mjoins = foldr mjoin mbottom

msplit :: (MonadJoin m, Joinable m v, SplitLattice a) => (a -> m v) -> a -> m v
msplit f = mjoinMap f . split

msplitOn :: (MonadJoin m, BoolDomain b, Joinable m v, BottomLattice a, SplitLattice a, Eq a) => (a -> m b) -> (a -> m v) -> (a -> m v) -> a -> m v
msplitOn p ft ff vs = do let vs' = splitAsList vs
                         mjoins (map trues vs' ++ map falses vs')
   where trues v   = p v >>= (\b -> if b then protectBot ft v else mbottom) . isTrue
         falses v  = p v >>= (\b -> if b then protectBot ff v else mbottom) . isFalse
         protectBot f v
            | v == Lattice.bottom = mbottom
            | otherwise   = f v

msplitOnCP :: (MonadJoin m, Joinable m v, BottomLattice a, Eq a, SplitLattice a) => (a -> m (CP Bool)) -> (a -> m v) -> (a -> m v) -> a -> m v
msplitOnCP = msplitOn


-- Some instances for convenience

instance (MonadJoinable m) => MonadJoinable (ReaderT r m) where
   type Joinable (ReaderT r m) v = Joinable m v
   {-# INLINE mjoin #-}
   mjoin ma mb = ReaderT $ \r -> mjoin (runReaderT ma r) (runReaderT mb r)

instance (MonadBottom m) => MonadBottom (ReaderT r m) where
   {-# INLINE mbottom #-}
   mbottom = ReaderT $ const mbottom

instance (MonadJoinable m, BottomLattice w, Monoid w) => MonadJoinable (WriterT w m) where
   type Joinable (WriterT w m) v = (Joinable m (v, w))
   {-# INLINE mjoin #-}
   mjoin (WriterT ma) (WriterT mb) = WriterT (mjoin ma mb)

instance (Monoid w, MonadBottom m) => MonadBottom (WriterT w m) where
   mbottom = WriterT mbottom

instance (MonadJoinable m, BottomLattice s) => MonadJoinable (StateT s m) where
   type Joinable (StateT s m) v = (Joinable m (v, s))
   {-# INLINE mjoin #-}
   mjoin ma mb = StateT (\st -> mjoin (runStateT ma st) (runStateT mb st))

instance (MonadBottom m) => MonadBottom (StateT r m) where
   {-# INLINE mbottom #-}
   mbottom = StateT $ const mbottom

instance (MonadJoinable m) => MonadJoinable (MaybeT m) where
   type Joinable (MaybeT m) v = Joinable m (Maybe v)
   {-# INLINE mjoin #-}
   mjoin ma mb = MaybeT $ mjoin (runMaybeT ma) (runMaybeT mb)

instance (MonadJoinable m) => MonadJoinable (ExceptT e m) where
    type Joinable (ExceptT e m) v = (Joinable m (Either e v))
    {-# INLINE mjoin #-}
    mjoin (ExceptT ma) (ExceptT mb) = ExceptT $ mjoin ma mb

instance (MonadBottom m) => MonadBottom (MaybeT m) where
   {-# INLINE mbottom #-}
   mbottom = MaybeT mbottom

instance MonadJoinable Maybe where
   type Joinable Maybe v = Lattice.Joinable v
   mjoin (Just a) (Just b) = Just (Lattice.join a b)
   mjoin (Just a) Nothing  = Just a
   mjoin Nothing  (Just b) = Just b
   mjoin _ _ = Nothing

instance MonadBottom Maybe where
   mbottom = Nothing

instance MonadJoinable Identity where
   type Joinable Identity v = Lattice.Joinable v
   mjoin = liftA2 Lattice.join

instance (MonadJoinable m) => MonadJoinable (IdentityT m) where
   type Joinable (IdentityT m) v = Joinable m v
   {-# INLINE mjoin #-}
   mjoin (IdentityT ma) (IdentityT mb) = IdentityT $ mjoin ma mb
instance (MonadBottom m) => MonadBottom (IdentityT m) where
   {-# INLINE mbottom #-}
   mbottom = IdentityT mbottom
