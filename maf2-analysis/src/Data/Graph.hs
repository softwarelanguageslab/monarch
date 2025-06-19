{-# LANGUAGE FlexibleInstances #-}

module Data.Graph (Graph(..), SimpleGraph) where

import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set 
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import GHC.Generics (Generic)
import Control.DeepSeq (NFData)

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