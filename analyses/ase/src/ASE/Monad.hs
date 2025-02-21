-- | Monadic infrastructure for ASE
{-# LANGUAGE FlexibleInstances, FlexibleContexts, UndecidableInstances, GeneralizedNewtypeDeriving, DeriveGeneric #-}
module ASE.Monad
  ( MonadAbstractCount (..),
    AbstractCountT,
    runAbstractCountT,
    CountMap(..)
  )
where

import Analysis.Monad.Cache
import Analysis.Monad.Store
import Control.Monad.Join
import Control.Monad.Layer
import Control.Monad.State hiding (mzero)
import Domain.Core.AbstractCount
import qualified Lattice.Class as Lat
import RIO hiding (mzero)
import qualified RIO.Map as Map
import qualified RIO.Set as Set

-- | Map mapping abstract symbolic variables to an abstract count
newtype CountMap a = CountMap {getCountMap :: Map a AbstractCount}
  deriving (Ord, Eq, Show, Generic)

instance (NFData a) => NFData (CountMap a)

-- |  A monad for managing the abstract count of the specified
--  address type @a@.
class MonadAbstractCount a m | m -> a where
  -- | Increments the abstract count of the given address
  -- in the abstract count mapping
  countIncrement :: a -> m ()

  -- |  Returns the current count of the given addres
  --  in the abstract count mapping.
  currentCount :: a -> m AbstractCount

  -- | Returns the entire abstract count mapping
  getCounts :: m (CountMap a)

-- | Layered instance
instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadAbstractCount a m) => MonadAbstractCount a (t m) where
  countIncrement = upperM . countIncrement
  currentCount = upperM . currentCount
  getCounts = upperM getCounts

-- | Trivial instance of the @MonadAbstractCount@ type class
-- as a state monad managing an abstract count mapping.
newtype AbstractCountT α m a = AbstractCountT (StateT (Map α AbstractCount) m a)
  deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer, MonadCache, MonadJoinable, MonadState (Map α AbstractCount))

instance (Ord α, MonadBottom m) => MonadAbstractCount α (AbstractCountT α m) where
  countIncrement α = modify (Map.insertWith Lat.join α CountOne)
  currentCount α = gets (Map.lookup α) >>= maybe mzero return
  getCounts = gets CountMap

-- |  Run an @AbstractCountT@ monad transformer with the given abstract count mapping
runAbstractCountT :: Map α AbstractCount -> AbstractCountT α m a -> m (a, Map α AbstractCount)
runAbstractCountT st (AbstractCountT m) = runStateT m st

--- XXX: MonadAbstractCount duplicates some of the behavior of AbstractCountM,
-- those two should be merged. The major difference between them is that the
-- former is meant to put constraints on a store with values, while the other
-- is independent of whether the things counted are addresses in a store
-- or something else.
instance (Ord α, Monad m) => AbstractCountM α (AbstractCountT α m) where
  count = get
