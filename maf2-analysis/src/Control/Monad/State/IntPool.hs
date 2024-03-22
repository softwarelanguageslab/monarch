{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
-- | A pool of unique integers
module Control.Monad.State.IntPool(MonadIntegerPool(..), IntegerPoolT, runIntegerPoolT) where

import Control.Monad.State (StateT, MonadState)
import qualified Control.Monad.State as ST
import Control.Monad.Layer
import Control.Monad.Trans.Class

------------------------------------------------------------
-- Fresh integer pool
------------------------------------------------------------

-- | Provides a pool of unique integers to the analysis
class (Monad m) => MonadIntegerPool m where
   fresh :: m Int

instance (Monad (t m), MonadLayer t, MonadIntegerPool m) => MonadIntegerPool (t m) where
   fresh = upperM fresh

-- | Provides an integer pool using a counter, needs
-- to be used as a global effect (i.e., after joining or after list monads),
-- such that the counter is shared across all analysis states
newtype IntegerPoolT m a = IntegerPoolT (StateT Int m a)
                         deriving (Applicative, Functor, Monad, MonadLayer, MonadState Int, MonadTrans)

instance {-# OVERLAPPING #-} (Monad m) => MonadIntegerPool (IntegerPoolT m) where
   fresh = do
      i <- ST.get
      ST.modify (+1)
      return i

runIntegerPoolT :: Monad m => IntegerPoolT m a -> m a
runIntegerPoolT (IntegerPoolT ma) = ST.evalStateT ma 0
