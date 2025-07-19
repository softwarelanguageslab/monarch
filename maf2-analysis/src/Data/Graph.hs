{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Data.Graph (Graph(..), SimpleGraph(..), topSort) where

import Control.Lens
import Control.Monad.State
import Control.Monad.Except
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import GHC.Generics (Generic)
import Control.DeepSeq (NFData)
import Data.Sequence (Seq(..))
import qualified Data.Sequence as Sequence
import Control.Monad.Cond (ifM)
import Data.Foldable (find)
import Data.Bifunctor

--
-- Utilities
-- 

dup :: a -> (a, a)
dup a = (a, a)
--
-- Graph type class
--

class Graph g v e | g -> v e where
    empty     :: g
    fromList  :: [(v,v,e)] -> g
    fromList = foldr (\(from,to,label) -> addEdge from to label) empty
    addVertex :: v -> g -> g
    addEdge   :: v -> v -> e -> g -> g
    edges     :: g -> [(v,v,e)]
    edges g = foldMap (\v -> map (addFrom v) (outgoing v g)) (vertices g)
        where addFrom from (to, e) = (from, to, e)
    vertices  :: g -> [v]
    outgoing  :: v -> g -> [(v,e)]
    inDegrees :: Ord v => g -> Map v Int 
    inDegrees g = Map.fromList $ map (second (length . flip outgoing g) . dup) $ vertices g

--
-- Simple graph instance
--

newtype SimpleGraph v e = SimpleGraph { adj :: Map v (Set (v, e)) }
    deriving (Generic)

instance (NFData v, NFData e) => NFData (SimpleGraph v e) where

add :: (Ord v, Ord e) => Set (v, e) -> v -> SimpleGraph v e -> SimpleGraph v e
add to from = SimpleGraph . Map.insertWith Set.union from to . adj

instance (Ord v, Ord e) => Graph (SimpleGraph v e) v e where
    empty = SimpleGraph Map.empty
    addVertex = add Set.empty
    addEdge from to label = add (Set.singleton (to, label)) from
    vertices = Map.keys . adj
    outgoing v = Set.toList . fromMaybe Set.empty . Map.lookup v . adj


instance (Show v, Show e) => Show (SimpleGraph v e) where
    show = show . adj

-------------------------------------------------------------
-- Topological sorting
------------------------------------------------------------
-- | Encodes the state of the BFS traversal (i.e., queues, visited set, ..)
data BfsState v = BfsState {
      _visited :: Set v,
      _queue :: Seq v,
      _order :: [v]
  }

$(makeLenses ''BfsState)

type MonadBfs g v e m = (Graph g v e, MonadState (BfsState v) m, MonadError String m)

-- | Check whether the given node has been visited
isVisited :: (MonadBfs g v e m, Ord v) => v -> m Bool
isVisited node = gets (Set.member node . _visited)

-- | Mark the given node as visited
markVisited :: (MonadBfs g v e m, Ord v) => v -> m ()
markVisited node = modify (over visited (Set.insert node))

-- | Queue the given node
queueNode :: MonadBfs g v e m => v -> m ()
queueNode node = modify (over queue (|> node))

-- | Checks whether the queue is empty
queueEmpty :: MonadBfs g v e  m => m Bool
queueEmpty = gets (Sequence.null . _queue)

-- | Pop the given node from the stack
popNode :: MonadBfs g v e m => m v
popNode = gets (popEl . _queue) <* modify (over queue popSeq)
  where popEl (el :<| _) = el
        popEl _ = error "cannot pop from an empty sequence (should be unreachable)"
        popSeq (_ :<| queue') = queue'
        popSeq _ = error "cannot pop from an empty sequence (should be unreachable)"

-- | Push a node in the order
pushNode :: MonadBfs g v  e m => v -> m ()
pushNode node = modify (over order (node:))

-- | The initial state for the BFS algorithm
initialBfsState :: v -> BfsState v
initialBfsState initial = BfsState Set.empty (Sequence.singleton initial) []

-- | Run a BFS on the given graph for the purpose of topologically
-- sorting the graph, the result of this BFS is a list of topologically sorted nodes
bfs :: forall g v e m . (MonadBfs g v e m, Ord v) => g -> m ()
bfs g = ifM (queueEmpty @g @v @e)
        {- then -} (return ())
        {- else -} $ do
          node <- popNode @g @v @e
          ifM (isVisited @g @v @e node)
          -- edge to already visited, which means a cycle
            (throwError "graph contains cycles, cannot topsort")
            (do  mapM_ (queueNode @g @v @e  . fst) (outgoing node g)
                 markVisited @g @v @e node
                 pushNode @g @v @e node
                 bfs g)

-- | Compute a topological sorting of the given graph
topSort :: forall g  v e . (Ord v, Graph g v e) => g -> [v]
topSort g = _order $ either error id $ execStateT (bfs @_ @_ @e g) (initialBfsState initialNode)
  where initialNode = fst $ fromMaybe (error "no initial node found") $ find ((==0) . snd) (Map.toList (inDegrees g)) -- an initial node has in-degree zero

