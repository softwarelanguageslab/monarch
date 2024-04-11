{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.Map where

import Control.Monad.Trans
import Control.Monad.Layer

import Control.Monad.State ( StateT, MonadState )
import qualified Control.Monad.State as State 
import Data.Map ( Map ) 
import qualified Data.Map as Map 
import Control.Monad.Trans.State (runStateT)

--
-- MapM typeclass
--

class Monad m => MapM k v m | m k -> v where
    get :: k -> m (Maybe v)
    put :: k -> v -> m ()

put' :: (Eq v, MapM k v m) => k -> v -> m Bool
put' k v = do old <- get k
              put k v
              return (old /= Just v)

--
-- MapT monad transformer 
--

newtype MapT k v m a = MapT (StateT (Map k v) m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadState (Map k v))

instance {-# OVERLAPPING #-} (Monad m, Ord k) => MapM k v (MapT k v m) where
    get = State.gets . Map.lookup 
    put k = State.modify . Map.insert k 

instance (MapM k v m, MonadLayer t) => MapM k v (t m) where
    get = upperM . get
    put k = upperM . put k 

runWithMapping :: forall k v m a . Monad m => MapT k v m a -> m a 
runWithMapping (MapT m) = fst <$> runStateT m Map.empty 