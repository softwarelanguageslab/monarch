{-# LANGUAGE FlexibleInstances #-}

module Data.Graph where
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set 
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)

--
-- Graph type class
--

class Graph g v e | g -> v e where
    addVertex :: v -> g -> g  
    addEdge   :: v -> v -> e -> g -> g
    edges     :: g -> [(v,v,e)]
    edges g = foldMap (\v -> map (addFrom v) (outgoing v g)) (vertices g)  
        where addFrom v1 (v2, e) = (v1, v2, e)
    vertices  :: g -> [v]
    outgoing  :: v -> g -> [(v,e)]

--
-- Simple graph instance
--

newtype SimpleGraph v e = SimpleGraph { adj :: Map v (Set (v, e)) }

add :: (Ord v, Ord e) => Set (v, e) -> v -> SimpleGraph v e -> SimpleGraph v e
add to from = SimpleGraph . Map.insertWith Set.union from to . adj  

instance (Ord v, Ord e) => Graph (SimpleGraph v e) v e where
    addVertex = add Set.empty 
    addEdge from to label = add (Set.singleton (to, label)) from 
    vertices = Map.keys . adj 
    outgoing v = Set.toList . fromMaybe Set.empty . Map.lookup v . adj