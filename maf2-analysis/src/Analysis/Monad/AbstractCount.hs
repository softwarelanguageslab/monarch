{-# LANGUAGE UndecidableInstances #-}
module Analysis.Monad.AbstractCount(
  MonadAbstractCount(..),
  AbstractCountT,
  evalWithAbstractCountT,
  runAbstractCountT,
  runWithAbstractCountT)  where

import Analysis.Counting
import Analysis.Monad.Cache
import Control.Monad.State
import Domain.Core.Count.Class (Count)
import Control.Monad.Layer
import Control.Monad.Join
import Data.Map

-- | A monad for managing the abstract count of the specified
--  address type @a@.
class (Monad m, Count c) => MonadAbstractCount a c m | m a -> c where
  -- | Increments the abstract count of the given address
  -- in the abstract count mapping
  countIncrement :: a -> m ()

  -- | Returns the current count of the given addres
  --  in the abstract count mapping.
  currentCount :: a -> m (Maybe c)

  -- | Returns the entire abstract count mapping
  getCounts :: m (Map a c)

  -- | Replace the abstract count map with the given mapping
  putCounts :: Map a c -> m ()

  -- | Mark the count of the given address as 'CountInf'
  infty :: a -> m ()

-- | Layered instance
instance {-# OVERLAPPABLE #-} (Monad m, Monad (t m), MonadLayer t, MonadAbstractCount a c m) => MonadAbstractCount a c (t m) where
  countIncrement = upperM . countIncrement
  currentCount = upperM . currentCount
  getCounts = upperM getCounts
  putCounts = upperM . putCounts
  infty = upperM . infty

-- | Trivial instance of the @MonadAbstractCount@ type class
-- as a state monad managing an abstract count mapping.
newtype AbstractCountT e c m a = AbstractCountT (StateT (CountMap' e c) m a)
  deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer, MonadCache, MonadJoinable, MonadState (CountMap' e c))

instance (Count c, Ord e, Monad m) => MonadAbstractCount e c (AbstractCountT e c m) where
  countIncrement k = modify (increment k)
  currentCount k = gets (getCount k)
  getCounts = gets getCountingMap
  putCounts = put . CountingMap
  infty k = modify (markInfty k)


runWithAbstractCountT :: AbstractCountT e c m a -> m (a, CountMap' e c)
runWithAbstractCountT  (AbstractCountT ma) = runStateT ma emptyCountMap

runAbstractCountT :: CountMap' e c -> AbstractCountT e c m a -> m (a, CountMap' e c)
runAbstractCountT countMap (AbstractCountT ma) = runStateT ma countMap

evalWithAbstractCountT :: Monad m => AbstractCountT e c m a -> m a
evalWithAbstractCountT (AbstractCountT ma) = evalStateT ma emptyCountMap
