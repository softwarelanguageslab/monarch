{-# LANGUAGE UndecidableInstances #-}
module Analysis.Monad.AbstractCount where

import Analysis.Counting
import Analysis.Monad.Cache
import Control.Monad.State
import Domain.Core.AbstractCount
import Control.Monad.Layer
import Control.Monad.Join

-- | A monad for managing the abstract count of the specified
--  address type @a@.
class MonadAbstractCount a m | m -> a where
  -- | Increments the abstract count of the given address
  -- in the abstract count mapping
  countIncrement :: a -> m ()

  -- | Returns the current count of the given addres
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
newtype AbstractCountT e m a = AbstractCountT (StateT (CountMap e) m a)
  deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer, MonadCache, MonadJoinable, MonadState (CountMap e))

instance (Ord e, MonadBottom m) => MonadAbstractCount e (AbstractCountT e m) where
  countIncrement k = modify (increment k)
  currentCount k = maybe mbottom return =<< (gets $ getCount k)
  getCounts = get


