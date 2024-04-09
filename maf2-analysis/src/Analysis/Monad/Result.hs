{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE LambdaCase #-}

module Analysis.Monad.Result (
    ResultM(..),
    ResultT,
    save,
    load,
    runWithResultMap,
) where

import Data.Map (Map)
import qualified Data.Map as Map 
import Control.Monad.State (StateT(StateT), MonadState, MonadTrans)
import qualified Control.Monad.State as State
import Control.Monad.Layer
import Analysis.Monad.Cache
import Control.Monad ((>=>))
import Control.Monad.Join
import Data.Maybe (maybe)
import Lattice


--
-- ResultM typeclass
--

class (Monad m) => ResultM m k v | m k -> v where
    get :: k -> m (Maybe v)
    put :: k -> v -> m ()

save :: (MonadCache m, ResultM m k (Cache m v)) => k -> m v -> m ()
save k = cache >=> put k 

load :: forall m k v . (MonadCache m, MonadJoin m, JoinLattice v, ResultM m k (Cache m v)) => k -> m v
load = get >=> maybe mzero restore 

-- 
-- ResultT 
--

newtype ResultT k v m a = ResultT (StateT (Map k v) m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadState (Map k v), MonadCache)

instance {-# OVERLAPPING #-} (Monad m, Ord k) => ResultM (ResultT k v m) k v where 
    get = State.gets . Map.lookup
    put k = State.modify . Map.insert k

instance (ResultM m k v, MonadLayer t) => ResultM (t m) k v where
    get = upperM . get
    put k = upperM . put k

runWithResultMap :: forall k v m a . Monad m => ResultT k v m a -> m a
runWithResultMap (ResultT m) = fst <$> State.runStateT m Map.empty 