{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.Graph (
    GraphM(..), 
    GraphT, 
    runWithGraph
) where

import Control.Monad.Trans
import Control.Monad.Layer

import Control.Monad.State ( StateT, MonadState )
import qualified Control.Monad.State as State 
import Control.Monad.Trans.State (runStateT)
import Data.Graph (Graph)
import qualified Data.Graph as Graph 

--
-- GraphM typeclass
--

class Monad m => GraphM v e m | m -> v e where
    addEdge :: v -> v -> e -> m () 

--
-- MapT monad transformer 
--

newtype GraphT g m a = GraphT (StateT g m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadTransControl, MonadState g)

instance {-# OVERLAPPING #-} (Monad m, Graph g v e) => GraphM v e (GraphT g m) where
    addEdge from to label = State.modify (Graph.addEdge from to label) 

instance (GraphM v e m, Monad (t m), MonadLayer t) => GraphM v e (t m) where
    addEdge from to = upperM . addEdge from to  

runWithGraph :: forall g v e m a . Graph g v e => GraphT g m a -> m (a, g) 
runWithGraph (GraphT m) = runStateT m Graph.empty 
