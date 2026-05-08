{-# LANGUAGE UndecidableInstances #-}
module Analysis.Monad.AbstractCount(
  MonadAbstractCount(..),
  AbstractCountT,
  InftyCountT,
  evalWithAbstractCountT,
  runAbstractCountT,
  runWithAbstractCountT,
  count)  where

import Analysis.Counting
import Analysis.Monad.Cache
import Control.Monad.State
import Domain.Core.Count.Class (Count)
import Control.Monad.Layer
import Control.Monad.Join
import Data.Map
import Control.Monad.Identity
import qualified Domain.Core.Count.Class as Count
import qualified Data.Map as Map
import Control.Monad.Choice (MonadChoice)
import qualified Lattice.Class as L

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

-- | Same as 'getCounts'
count :: MonadAbstractCount e c m => m (Map e c) 
count = getCounts

-- | Layered instance
instance {-# OVERLAPPABLE #-} (Monad m, Monad (t m), MonadLayer t, MonadAbstractCount a c m) => MonadAbstractCount a c (t m) where
  countIncrement = upperM . countIncrement
  currentCount = upperM . currentCount
  getCounts = upperM getCounts
  putCounts = upperM . putCounts
  infty = upperM . infty

------------------------------------------------------------
-- Instances
------------------------------------------------------------

-- | Trivial instance of the @MonadAbstractCount@ type class
-- as a state monad managing an abstract count mapping.
newtype AbstractCountT e c m a = AbstractCountT (StateT (CountMap' e c) m a)
  deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer, MonadCache, MonadJoinable, MonadState (CountMap' e c))
deriving instance (Ord e, L.Joinable c, MonadChoice b m) => MonadChoice b (AbstractCountT e c m) 

instance (Count c, Ord e, Monad m) => MonadAbstractCount e c (AbstractCountT e c m) where
  countIncrement k = modify (increment k)
  currentCount k = gets (getCount k)
  getCounts = gets getCountingMap
  putCounts = put . CountingMap
  infty k = modify (markInfty k)

-- | Another trivial instance that returns ∞ for every count, which is trivially sound
newtype InftyCountT e c m a = InftyCountT (IdentityT m a)
    deriving (Applicative, Functor, Monad, MonadJoinable, MonadCache, MonadLayer, MonadTrans)

deriving instance MonadChoice b m => MonadChoice b (InftyCountT e c m) 

instance (Count c, Monad m) => MonadAbstractCount e c (InftyCountT e c m) where 
    countIncrement = const $ return () 
    currentCount = const $ return (Just Count.infty)
    -- TODO: actually this should be a map where each key is mapped to ∞
    getCounts = return Map.empty
    putCounts = const $ return ()
    infty = const $ return () -- everything is already empty

------------------------------------------------------------
-- Executing the monad
------------------------------------------------------------

runWithAbstractCountT :: AbstractCountT e c m a -> m (a, CountMap' e c)
runWithAbstractCountT  (AbstractCountT ma) = runStateT ma emptyCountMap

runAbstractCountT :: CountMap' e c -> AbstractCountT e c m a -> m (a, CountMap' e c)
runAbstractCountT countMap (AbstractCountT ma) = runStateT ma countMap

evalWithAbstractCountT :: Monad m => AbstractCountT e c m a -> m a
evalWithAbstractCountT (AbstractCountT ma) = evalStateT ma emptyCountMap

