module Data.Graph.Class(Graph(..)) where 

import Data.Map (Map)
import qualified Data.Map as Map
import Data.Bifunctor

--
-- Utilities
-- 

dup :: a -> (a, a)
dup a = (a, a)

--
-- Graph typeclass
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
