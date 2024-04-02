{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}

module Control.Monad.Join (MonadJoin(..), cond, conds, MonadJoinAlternative(..), mjoinMap, mjoins, msplit, condCP) where

import Lattice.Class
import Lattice.ProductLattice
import Lattice.MaybeLattice
import Lattice.ConstantPropagationLattice
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
   mzero :: JoinLattice a => m a
   (<||>) :: JoinLattice v => m v -> m v -> m v
   a <||> b = mjoin a b
   infix 0 <||>

cond :: (BoolDomain b, MonadJoin m, JoinLattice v) => m b -> m v -> m v -> m v
cond cnd csq alt = mjoin t f
   where t = cnd >>= (\b -> if isTrue b then csq else mzero)
         f = cnd >>= (\b -> if isFalse b then alt else mzero)

conds :: (BoolDomain b, MonadJoin m, JoinLattice v) => [(m b, m v)] -> m v -> m v
conds clauses els = foldr (uncurry cond) els clauses 

condCP :: (MonadJoin m, JoinLattice v) => m (CP Bool) -> m v -> m v -> m v
condCP = cond 

mjoinMap :: (MonadJoin m, Foldable t, JoinLattice b) => (a -> m b) -> t a -> m b 
mjoinMap f = foldr (mjoin . f) mzero

mjoins :: (MonadJoin m, Foldable t, JoinLattice v) => t (m v) -> m v
mjoins = foldr mjoin mzero

msplit :: (MonadJoin m, JoinLattice v, SplitLattice a) => (a -> m v) -> a -> m v
msplit f = mjoinMap f . split


-- | Like `Alternative`, returns if a computation
-- succeeds, otherwise tries the other one.
--
-- Difference is when a computation **might** fail,
-- then the results of the first one are joined with the second one.
class (Monad m) => MonadJoinAlternative m where
   (<|>) :: JoinLattice v => m v -> m v -> m v

-- Some instances for convenience

instance (MonadJoin m) => MonadJoin (ReaderT r m) where
   mjoin ma mb = ReaderT $ \r -> mjoin (runReaderT ma r) (runReaderT mb r)
   mzero = lift Control.Monad.Join.mzero

instance (MonadJoin m, JoinLattice w, Monoid w) => MonadJoin (WriterT w m) where
   mjoin (WriterT ma) (WriterT mb) = WriterT (mjoin ma mb)
   mzero = lift mzero

instance (MonadJoin m, JoinLattice s) => MonadJoin (StateT s m) where
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
