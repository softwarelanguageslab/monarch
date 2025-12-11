{-# LANGUAGE UndecidableInstances #-}
module Analysis.Monad.Partition (
    MonadPartition (..),
    PartitionT(..)
  ) where

import Analysis.Partition (Partition)
import qualified Analysis.Partition as Partition
import Analysis.Monad.Cache
import Control.Monad.Layer
import Control.Monad.State (StateT, MonadState)
import qualified Control.Monad.State as State
import Control.Monad.Join


-- | Incorperates the given partition into the state
-- of the computation therefore splitting the trace
-- of that computation according to that partition.
class MonadPartition e m | m -> e where
  integrate :: e -> m ()
  get :: m e

-- | Layered instance of "MonadPartition"
instance {-# OVERLAPPABLE #-} (MonadPartition e m, Monad m, MonadLayer t) => MonadPartition e (t m) where
  integrate = upperM . integrate
  get = upperM get

-- | State monad based instance of 'MonadPartition'
newtype PartitionT e m a = PartitionT (StateT e m a)
                         deriving (Applicative, Functor, Monad, MonadState e, MonadCache, MonadLayer, MonadJoinable, MonadBottom)

instance (Partition e, Monad m)=> MonadPartition e (PartitionT e m) where 
  integrate e' = State.modify (Partition.integrate e')
  get = State.get
