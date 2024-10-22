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
   mzero :: m a 

-- | If value is @Bottom@ results in  @mzero@ computation,
-- otherwise in a computation returning the wrapped value.
fromBL :: MonadBottom m => BottomLifted a -> m a
fromBL Bottom    = mzero 
fromBL (Value v) = return v 

type MonadJoin m = (MonadJoinable m, MonadBottom m)

cond :: (BoolDomain b, MonadJoin m, Joinable v) => m b -> m v -> m v -> m v
cond cnd csq alt = mjoin t f
   where t = cnd >>= (\b -> if isTrue b then csq else mzero)
         f = cnd >>= (\b -> if isFalse b then alt else mzero)

conds :: (BoolDomain b, MonadJoin m, Joinable v) => [(m b, m v)] -> m v -> m v
conds clauses els = foldr (uncurry cond) els clauses 

condCP :: (MonadJoin m, Joinable v) => m (CP Bool) -> m v -> m v -> m v
condCP = cond 

condsCP :: (MonadJoin m, Joinable v) => [(m (CP Bool), m v)] -> m v -> m v
condsCP = conds

mjoinMap :: (MonadJoin m, Foldable t, Joinable b) => (a -> m b) -> t a -> m b 
mjoinMap f = foldr (mjoin . f) mzero

-- | Same as @mjoin@ but uses the given element as its neutral
mjoins1' :: (MonadJoin m, Foldable t, Joinable v) => v -> t (m v) -> m v 
mjoins1' = foldr mjoin . return

-- | Same as @mjoin@ but assumes there is at least one element in the foldable
mjoins1 :: (MonadJoin m, Foldable t, Joinable v) => t (m v) -> m v
mjoins1 = foldr1 mjoin 

mjoins :: (MonadJoin m, Foldable t, Joinable v) => t (m v) -> m v
mjoins = foldr mjoin mzero

msplit :: (MonadJoin m, Joinable v, SplitLattice a) => (a -> m v) -> a -> m v
msplit f = mjoinMap f . split

msplitOn :: (MonadJoin m, BoolDomain b, Joinable v, Lattice a, SplitLattice a) => (a -> m b) -> (a -> m v) -> (a -> m v) -> a -> m v
msplitOn p ft ff vs = do (t, f) <- splitOnM p vs
                         protectBot ft t `mjoin` protectBot ff f
   where protectBot f v 
            | v == bottom = mzero
            | otherwise   = f v 

msplitOnCP :: (MonadJoin m, Lattice v, Lattice a, SplitLattice a) => (a -> m (CP Bool)) -> (a -> m v) -> (a -> m v) -> a -> m v
msplitOnCP = msplitOn



-- Some instances for convenience

instance (MonadJoinable m) => MonadJoinable (ReaderT r m) where
   mjoin ma mb = ReaderT $ \r -> mjoin (runReaderT ma r) (runReaderT mb r)

instance (MonadBottom m) => MonadBottom (ReaderT r m) where 
   mzero = ReaderT $ const mzero

instance (MonadJoinable m, Joinable w, BottomLattice w, Monoid w) => MonadJoinable (WriterT w m) where
   mjoin (WriterT ma) (WriterT mb) = WriterT (mjoin ma mb)

instance (Monoid w, MonadBottom m) => MonadBottom (WriterT w m) where 
   mzero = WriterT mzero

instance (MonadJoinable m, Joinable s, BottomLattice s) => MonadJoinable (StateT s m) where
   mjoin ma mb = StateT (\st -> mjoin (runStateT ma st) (runStateT mb st))

instance (MonadBottom m) => MonadBottom (StateT r m) where 
   mzero = StateT $ const mzero

instance (MonadJoinable m) => MonadJoinable (MaybeT m) where
   mjoin ma mb = MaybeT $ mjoin (runMaybeT ma) (runMaybeT mb)

instance (MonadBottom m) => MonadBottom (MaybeT m) where 
   mzero = MaybeT mzero

instance MonadJoinable Maybe where
   mjoin (Just a) (Just b) = Just (join a b)
   mjoin (Just a) Nothing  = Just a
   mjoin Nothing  (Just b) = Just b
   mjoin _ _ = Nothing 
   
instance MonadBottom Maybe where
   mzero = Nothing

instance MonadJoinable Identity where
   mjoin = liftA2 join

instance (MonadJoinable m) => MonadJoinable (IdentityT m) where
   mjoin (IdentityT ma) (IdentityT mb) = IdentityT $ mjoin ma mb
instance (MonadBottom m) => MonadBottom (IdentityT m) where 
   mzero = IdentityT mzero
