{-# LANGUAGE LambdaCase, DeriveGeneric #-}
-- | The "Infer" module infers a communication graph (either of the entire system or of the system's parts individually)
-- this module represents the internal representation of such graph
module Analysis.SimpleActor.Infer.Graph(
    -- * Graph Representation
    N(..),
    E(..),
    Graph(..),
    emptyGraph,
    -- * Generic Graph Modification
    addNode,
    addEdge,
    -- * Edges
    addCall,
    addSend,
    addWrite,
    addLookup,
    addSpawn,
    -- * Export
    toDot
  ) where

import Analysis.SimpleActor.Infer.Common
import Data.List as List
import GHC.Generics
import qualified RIO.Map as Map
import qualified RIO.Set as Set
import RIO
import Syntax.Span

-- | Nodes of the graph
data N = ActorNode Actor -- ^ a node that represents an actor (and also its reference)
       | FnCallNode Clo  -- ^ node representing a function call (or closure)
       | AdrNode Adr     -- ^ node representing an address in the store
       | ReceiveNode Clo -- ^ node representing receives
       deriving (Ord, Eq, Show, Generic)

instance SpanOf N where
  spanOf (ActorNode (Actor (e, _))) = spanOf e
  spanOf (FnCallNode (e, _)) = spanOf e
  spanOf (AdrNode adr) = spanOf adr
  spanOf (ReceiveNode (e, _)) = spanOf e

instance NFData N

-- | Edges of the graph
data E = SpawnEdge      -- ^ an edge that goes from actor a to actor b whenever a spawns b
       | SendEdge       -- ^ send a message 
       | CallEdge       -- ^ add a call edge
       | WriteEdge      -- ^ write a value to an address
       | LookupEdge     -- ^ read a value from the given address
       | ReceiveEdge    -- ^ edge that leads to a receive block
       deriving (Ord, Eq, Show, Generic)

instance NFData E

-- | Graph representation as an adjecency list
data Graph = G { n :: Set N, e :: Map N (Set (N, E)) } deriving (Ord, Eq, Show, Generic)

-- | Create an empty graph
emptyGraph :: Graph
emptyGraph = G Set.empty Map.empty

instance NFData Graph


-- | Add a new node to the graph (if does not already exist)
addNode :: N -> Graph -> Graph
addNode n' g@G { .. } = g { n = Set.insert n' n }

-- | Add an edge to the graph with the given label
addEdge :: E -> N -> N -> Graph -> Graph
addEdge lbl start end g@G{ .. } = g { e = Map.insertWith Set.union start (Set.singleton (end, lbl)) e }

-- | Add a 'Send' edge between the given nodes
addSend :: N -> N -> Graph -> Graph
addSend = addEdge SendEdge

-- | Add a 'Spawn' edge between the given nodes
addSpawn :: N -> N -> Graph -> Graph
addSpawn = addEdge SpawnEdge

-- | Add a 'Call' edge between the given nodes
addCall :: N -> N -> Graph -> Graph
addCall = addEdge CallEdge

-- | Add a 'Write' edge between the given nodes
addWrite :: N -> N -> Graph -> Graph
addWrite = addEdge WriteEdge

-- | Add a 'Lookup' edge between the given nodes
addLookup :: N -> N -> Graph -> Graph
addLookup = addEdge LookupEdge

-- | Generate a dot representation of the graph
toDot :: Graph -> String
toDot g = "digraph G { " ++ nodes ++ ";" ++ edges ++ "}"
  where nodeList = Set.toList (n g)
        -- | Attach a label (numerical index) to the node
        label n = fromMaybe (0 :: Integer) $ Map.lookup n (Map.fromList (zip nodeList [1..]))
        labelStr n = "n" ++ show (label n)
        -- | The string representation of the nodes includded in the graph
        nodes = List.intercalate ";\n" $ map printNode nodeList
        edges = List.intercalate ";\n" $ map (uncurry (\k -> List.intercalate ";" . Set.toList . Set.map (printEdge k))) (Map.toList (e g))
        printNode n = labelStr n ++ "[label = \"" ++ show (spanOf n) ++ "\", color = \"" ++ colorNode n ++ "\"]"
        printEdge start (end, tpy) = labelStr start ++ " -> " ++ labelStr end ++ "[label = \"" ++ show tpy ++ "\"]"
        colorNode = \case ActorNode {} -> "blue"
                          FnCallNode {} -> "green"
                          AdrNode {} -> "red"
                          ReceiveNode {} -> "orange"
