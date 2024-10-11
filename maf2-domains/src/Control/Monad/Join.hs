{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}

module Control.Monad.Join (
   MonadJoin(..), 
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
   msplitOnCP
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

-- | Non-deterministic computations that can be joined together into a single computation
class (Monad m) => MonadJoin m where
   mjoin :: Joinable v => m v -> m v -> m v
   mzero :: BottomLattice a => m a
   (<||>) :: Joinable v => m v -> m v -> m v
   a <||> b = mjoin a b
   infix 0 <||>

cond :: (BoolDomain b, MonadJoin m, Joinable v, BottomLattice v) => m b -> m v -> m v -> m v
cond cnd csq alt = mjoin t f
   where t = cnd >>= (\b -> if isTrue b then csq else mzero)
         f = cnd >>= (\b -> if isFalse b then alt else mzero)

conds :: (BoolDomain b, MonadJoin m, Joinable v, BottomLattice v) => [(m b, m v)] -> m v -> m v
conds clauses els = foldr (uncurry cond) els clauses 

condCP :: (MonadJoin m, Joinable v, BottomLattice v) => m (CP Bool) -> m v -> m v -> m v
condCP = cond 

condsCP :: (MonadJoin m, Joinable v, BottomLattice v) => [(m (CP Bool), m v)] -> m v -> m v
condsCP = conds

mjoinMap :: (MonadJoin m, Foldable t, Joinable b, BottomLattice b) => (a -> m b) -> t a -> m b 
mjoinMap f = foldr (mjoin . f) mzero

-- | Same as @mjoin@ but uses the given element as its neutral
mjoins1' :: (MonadJoin m, Foldable t, Joinable v) => v -> t (m v) -> m v 
mjoins1' = foldr mjoin . return

-- | Same as @mjoin@ but assumes there is at least one element in the foldable
mjoins1 :: (MonadJoin m, Foldable t, Joinable v) => t (m v) -> m v
mjoins1 = foldr1 mjoin 

mjoins :: (MonadJoin m, Foldable t, Joinable v, BottomLattice v) => t (m v) -> m v
mjoins = foldr mjoin mzero

msplit :: (MonadJoin m, Joinable v,  BottomLattice v, SplitLattice a) => (a -> m v) -> a -> m v
msplit f = mjoinMap f . split

msplitOn :: (MonadJoin m, BoolDomain b, Lattice v, Lattice a, SplitLattice a) => (a -> m b) -> (a -> m v) -> (a -> m v) -> a -> m v
msplitOn p ft ff vs = do (t, f) <- splitOnM p vs
                         protectBot ft t `mjoin` protectBot ff f
   where protectBot f v 
            | v == bottom = mzero
            | otherwise   = f v 

msplitOnCP :: (MonadJoin m, Lattice v, Lattice a, SplitLattice a) => (a -> m (CP Bool)) -> (a -> m v) -> (a -> m v) -> a -> m v
msplitOnCP = msplitOn



-- Some instances for convenience

instance (MonadJoin m) => MonadJoin (ReaderT r m) where
   mjoin ma mb = ReaderT $ \r -> mjoin (runReaderT ma r) (runReaderT mb r)
   mzero = lift Control.Monad.Join.mzero

instance (MonadJoin m, Joinable w, BottomLattice w, Monoid w) => MonadJoin (WriterT w m) where
   mjoin (WriterT ma) (WriterT mb) = WriterT (mjoin ma mb)
   mzero = lift mzero

instance (MonadJoin m, Joinable s, BottomLattice s) => MonadJoin (StateT s m) where
   mjoin ma mb = StateT (\st -> mjoin (runStateT ma st) (runStateT mb st))
   mzero = lift mzero

instance (MonadJoin m) => MonadJoin (MaybeT m) where
   mjoin ma mb = MaybeT $ mjoin (runMaybeT ma) (runMaybeT mb)
   mzero = MaybeT mzero

instance MonadJoin Maybe where
   mjoin (Just a) (Just b) = Just (join a b)
   mjoin (Just a) Nothing  = Just a
   mjoin Nothing  (Just b) = Just b
   mjoin _ _ = Nothing 
   mzero = Nothing

instance MonadJoin Identity where
   mjoin = liftA2 join
   mzero = pure bottom

instance (MonadJoin m) => MonadJoin (IdentityT m) where
   mjoin (IdentityT ma) (IdentityT mb) = IdentityT $ mjoin ma mb
   mzero = IdentityT mzero
