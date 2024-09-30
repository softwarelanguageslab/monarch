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
import Lattice
    ( BottomLattice, Joinable(..), Lattice, justOrBot, PartialOrder(..) )

--
-- MapM typeclass
--

class Monad m => MapM k v m | m k -> v where
    get :: k -> m (Maybe v)
    put :: k -> v -> m ()
    joinWith :: Lattice v => k -> v -> m ()

instance (MapM k v m, Monad (t m), MonadLayer t) => MapM k v (t m) where
    get = upperM . get
    put k = upperM . put k
    joinWith k = upperM . joinWith k

getOrBot :: (MapM k v m, BottomLattice v) => k -> m v
getOrBot = fmap justOrBot . get

put' :: (Eq v, MapM k v m) => k -> v -> m Bool
put' k v = do old <- get k
              put k v
              return (old /= Just v)

joinWith' :: (Eq v, Lattice v, MapM k v m) => k -> v -> m Bool
joinWith' k v = do old <- getOrBot k
                   joinWith k v
                   return (not $ subsumes old v)

--
-- MapT monad transformer 
--

newtype MapT k v m a = MapT (StateT (Map k v) m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadTransControl, MonadState (Map k v))

instance {-# OVERLAPPING #-} (Monad m, Ord k) => MapM k v (MapT k v m) where
    get = State.gets . Map.lookup
    put k = State.modify . Map.insert k
    joinWith k = State.modify . Map.insertWith join k

runWithMapping :: forall k v m a . MapT k v m a -> m (a, Map k v)
runWithMapping (MapT m) = runStateT m Map.empty

runWithMapping' :: forall k v m a . Monad m => MapT k v m a -> m a
runWithMapping' = fmap fst . runWithMapping
