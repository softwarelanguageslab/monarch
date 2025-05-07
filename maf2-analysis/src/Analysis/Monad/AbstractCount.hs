{-# LANGUAGE UndecidableInstances #-}
module Analysis.Monad.AbstractCount(
  MonadAbstractCount(..),
  AbstractCountT,
  evalWithAbstractCountT)  where

import Analysis.Counting
import Analysis.Monad.Cache
import Control.Monad.State
import Domain.Core.AbstractCount
import Control.Monad.Layer
import Control.Monad.Join
import Data.Map

-- | A monad for managing the abstract count of the specified
--  address type @a@.
class Monad m => MonadAbstractCount a m where
  -- | Increments the abstract count of the given address
  -- in the abstract count mapping
  countIncrement :: a -> m ()

  -- | Returns the current count of the given addres
  --  in the abstract count mapping.
  currentCount :: a -> m (Maybe AbstractCount)

  -- | Returns the entire abstract count mapping
  getCounts :: m (Map a AbstractCount)

  -- | Replace the abstract count map with the given mapping
  putCounts :: Map a AbstractCount -> m ()

  
-- | Layered instance
instance {-# OVERLAPPABLE #-} (Monad m, Monad (t m), MonadLayer t, MonadAbstractCount a m) => MonadAbstractCount a (t m) where
  countIncrement = upperM . countIncrement
  currentCount = upperM . currentCount
  getCounts = upperM getCounts
  putCounts = upperM . putCounts

-- | Trivial instance of the @MonadAbstractCount@ type class
-- as a state monad managing an abstract count mapping.
newtype AbstractCountT e m a = AbstractCountT (StateT (CountMap e) m a)
  deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer, MonadCache, MonadJoinable, MonadState (CountMap e))

instance (Ord e, Monad m) => MonadAbstractCount e (AbstractCountT e m) where
  countIncrement k = modify (increment k)
  currentCount k = gets (getCount k)
  getCounts = gets getCountingMap
  putCounts = put . CountingMap

evalWithAbstractCountT :: Monad m => AbstractCountT e m a -> m a
evalWithAbstractCountT (AbstractCountT ma) = evalStateT ma emptyCountMap
