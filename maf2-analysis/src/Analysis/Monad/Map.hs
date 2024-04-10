{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.Map where

import Control.Monad.Trans
import Control.Monad.Layer

import Control.Monad.State ( StateT, MonadState )
import qualified Control.Monad.State as State 
import Data.Map ( Map ) 
import qualified Data.Map as Map 

--
-- MapM typeclass
--

class Monad m => MapM k v m | m k -> v where
    get :: k -> m (Maybe v)
    put :: k -> v -> m ()


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