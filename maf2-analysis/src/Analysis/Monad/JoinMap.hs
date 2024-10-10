{-# LANGUAGE FlexibleInstances #-}
-- | Same as the `MapT` monad transformer but expects that 
-- a list of results is written to the caching layer and 
-- joins them together so that only a single value is 
-- stored in the cache.
module Analysis.Monad.JoinMap (JoinMapT, runWithJoinMap) where

import Lattice.Class
import Analysis.Monad.Map
import Data.Map
import qualified Data.List as List
import Control.Monad.Layer

newtype JoinMapT k v m a = JoinToResultMap (MapT k v m a) 
                            deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer)

instance {-# OVERLAPPING #-} (Eq v, Monad m, Ord k, BottomLattice v, Joinable v) => MapM k [v] (JoinMapT k v m) where 
   get = JoinToResultMap . fmap (fmap List.singleton) . get 
   put k = JoinToResultMap . put k . joins
   joinWith k = JoinToResultMap . joinWith k . joins

-- | Run the @JoinToResultMap@
runWithJoinMap :: forall k v m a . JoinMapT k v m a -> m (a, Map k v)
runWithJoinMap (JoinToResultMap m) = runWithMapping m
