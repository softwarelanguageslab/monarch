{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
-- | Graphviz visualization of the graph mailbox abstraction
--
-- The visualization renders each messages in the mailbox as a node 
-- in the graph, and each ordering relation as an edge in the graph.
-- The top (first message in the queue) and bottom pointer (last message in the queue)
-- are visualized as directed edges with an invisible source node.
module Analysis.PureActor.Mailbox.Graph.Dot(render) where

import Control.Lens
import qualified Data.Map.Lazy as Map
import Control.Monad.Error.Class
import Control.Monad
import qualified Data.Set as Set
import Numeric (showFFloat)
import Analysis.PureActor.Mailbox.Partitioned.Graph (PartitionedGraph)
import qualified Analysis.PureActor.Mailbox.Partitioned.Graph as PartitionedGraph
import Analysis.PureActor.Mailbox.Graph (Node)

------------------------------
-- Monad
------------------------------

data DotState c p node = State {
        -- | Injective partial function that maps node representations 'node' onto integers
        _identifierMap :: Map node Int,
        -- | Injective partial function that maps partitions representations 'p' onto integers
        _partitionMap :: Map p Int,
        -- | Injective partial function that maps a node without its partition onto integers.
        _nodeMap :: Map c Int,
        -- | Counter for generating unique integers for the identifiers
        _freshCounter :: Int ,
        -- | Counter for generating unique integers for the partitions
        _partitionCounter :: Int
    }

$(makeLenses ''DotState)

type MonadRender c p node m =
    (MonadState (DotState c p node) m,
     MonadError Text m,
     Ord node,
     Ord p,
     Ord c,
     NodePartition c p node)

-- | Type class for types that can be partitioned
class NodePartition c p node | node -> p c where
    nodePartition :: Lens' node p
    nodeNode      :: Lens' node c

-- | Assign a fresh identifier to the given node
assignNodeFresh :: MonadRender c p node m => node -> m Int
assignNodeFresh node = do
    fresh <- freshNode
    fresh <$ (identifierMap %= Map.insert node fresh)

-- | Find the identifier associated with the given node
lookupNode :: (MonadRender c p node m, Show node) => node -> m Int
lookupNode node =
    use (identifierMap . at node) >>= maybe (throwError $ "Node not found: " <> show node) return

-- | Lookup the color associated with the given node contents, if a node could not be found a fresh identifier is assigned to it and a color is generated based on that identifier.
colorNode :: (MonadRender c p node m, Ord c) => c -> m String
colorNode contents =
    nodeColor <$>
        (use (nodeMap . at contents) >>= maybe (do
            fresh <- freshNode
            nodeMap %= Map.insert contents fresh
            return fresh
        ) return)

-- | Lookup the color associated with the given partition, if the partition could not be found a fresh color is assigned to it.
colorPartition :: (MonadRender c p node m, Ord p) => p -> m String
colorPartition partition =
    nodeColor <$>
        (use (partitionMap . at partition) >>= maybe (do
            fresh <- partitionCounter <<+= 1
            partitionMap %= Map.insert partition fresh
            return fresh
        ) return)

-- | Generate a fresh integer that can be used as an identifier for a node
freshNode :: MonadRender c p node m => m Int
freshNode = freshCounter <<+= 1

------------------------------
-- Coloring
------------------------------

-- | Assign a color to a node based on its identifier. The color is determined by
-- mapping the identifier to a hue in the HSV color space, with fixed saturation and value.
nodeColor :: Int -> String
nodeColor i = toDotColor (hue, 0.7, 0.95)
  where
    phi  = 0.618033988749895
    hue  = snd $ properFraction @_ @Integer (fromIntegral i * phi)

-- | Convert an HSV color to a string format that can be used in DOT. The input is a tuple of (hue, saturation, value).
-- The hue is expected to be in the range [0, 1], and saturation and value are also expected to be in the range [0, 1].
-- The output is a string in the format "h s v" where h, s, and v are formatted to three decimal places.
toDotColor :: (Double, Double, Double) -> String
toDotColor (h, s, v) = show $ unwords [fmt h, fmt s, fmt v]
  where
    fmt x = toText $ showFFloat (Just 3) x ""

------------------------------
-- Rendering 
------------------------------

-- | Render a list of nodes into the DOT text format and 
-- assigns an identifier to each node that can be referenced
-- in the edge list.
renderNodes :: (MonadRender c p node m, Show node) => [node] -> m Text
renderNodes =
    foldM (\acc node -> do
        identifier <- assignNodeFresh node
        color <- colorNode (node ^. nodeNode)
        return $ acc <> "  " <> show identifier <> " [color = " <> toText color <> ", label=\"" <> show node <> "\"];\n"
    ) ""

-- | Render a list of edges into the DOT text format 
renderEdges :: (MonadRender c p node m, Show node) => [(node, node)] -> m Text
renderEdges =
    foldM (\acc (from', to') -> do
        fromId <- lookupNode from'
        toId <- lookupNode to'
        return $ acc <> "  " <> show fromId <> " -> " <> show toId <> ";\n"
    ) ""

-- | Render the set of top or bottom pointers into the DOT text format as edges from an invisible source node
renderPointer :: (Show node, MonadRender c p node m)
              => Text       -- ^ Label for the pointer (e.g., "top" or "bottom")
              -> Set node   -- ^ Set of nodes that the pointer points to
              -> m Text
renderPointer node nodes = do 
        source <- freshNode
        edges <- foldM (generateEdge source) "" (Set.toList nodes)
        return $ "  " <> show source <> " [label = \"" <> node <> "\", width=0.1];\n" <> edges
    where generateEdge source acc to' = do
                toId <- lookupNode to'
                return $ acc <> "  " <> show source <> " -> " <> show toId <> " [style=dashed];\n"


instance NodePartition (Node a) p (PartitionedGraph.PartitionedNode p a) where
    nodePartition = lens PartitionedGraph.partitionedPartition
                         (\node newPartition -> PartitionedGraph.Partitioned newPartition (PartitionedGraph.partitionedValue node))
    nodeNode = lens PartitionedGraph.partitionedValue
                   (PartitionedGraph.Partitioned . PartitionedGraph.partitionedPartition)

-- | Render a graph representation of a mailbox into a textual representation
-- of a dot graph that can be rendered by the "dot" command from Graphviz.
render :: (Ord a, Show a, Ord p, Show p) => PartitionedGraph p a -> Text
render graph =
    let initialState = State Map.empty Map.empty Map.empty 0 0
        renderGraph = do
            nodeText <- renderNodes (Set.toList $ PartitionedGraph.vertices graph)
            edgeText <- renderEdges (foldMap (\(from', tos) -> map (from',) $ Set.toList tos) $ Map.toList $ PartitionedGraph.edges graph)
            pointerText <- mconcat <$> sequence ( 
                                            map (\ptr -> renderPointer ("top " <> show (PartitionedGraph.pointerPartition ptr)) (Set.singleton $ PartitionedGraph.pointerNode ptr)) (Set.toList $ PartitionedGraph.tops graph) ++
                                            map (\ptr -> renderPointer ("bottom " <> show (PartitionedGraph.pointerPartition ptr)) (Set.singleton $ PartitionedGraph.pointerNode ptr)) (Set.toList $ PartitionedGraph.bottoms graph)
                                        )
            return $ "digraph Mailbox {\n" <> nodeText <> edgeText <> pointerText <> "}\n"
    in case evalStateT renderGraph initialState of
        Left err -> error $ "Error rendering graph: " <> err
        Right text -> text
