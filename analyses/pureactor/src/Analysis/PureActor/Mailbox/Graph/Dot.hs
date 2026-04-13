{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}
-- | Graphviz visualization of the graph mailbox abstraction
--
-- The visualization renders each messages in the mailbox as a node 
-- in the graph, and each ordering relation as an edge in the graph.
-- The top (first message in the queue) and bottom pointer (last message in the queue)
-- are visualized as directed edges with an invisible source node.
module Analysis.PureActor.Mailbox.Graph.Dot(render) where

import Analysis.PureActor.Mailbox.Graph
import Control.Lens
import qualified Data.Map.Lazy as Map
import Control.Monad.Error.Class
import Control.Monad
import qualified Analysis.PureActor.Mailbox.Graph as Graph
import qualified Data.Set as Set

------------------------------
-- Monad
------------------------------

data DotState node = State { _identifierMap :: Map node Int, _freshCounter :: Int }

$(makeLenses ''DotState)

type MonadRender node m = (MonadState (DotState node) m, MonadError Text m, Ord node)

-- | Assign a fresh identifier to the given node
assignNodeFresh :: MonadRender node m => node -> m Int
assignNodeFresh node = do
    fresh <- freshCounter <<+= 1
    fresh <$ (identifierMap %= Map.insert node fresh)

-- | Find the identifier associated with the given node
lookupNode :: (MonadRender node m, Show node) => node -> m Int
lookupNode node =
    use (identifierMap . at node) >>= maybe (throwError $ "Node not found: " <> show node) return

------------------------------
-- Rendering 
------------------------------

-- | Render a list of nodes into the DOT text format and 
-- assigns an identifier to each node that can be referenced
-- in the edge list.
renderNodes :: (MonadRender node m, Show node) => [node] -> m Text
renderNodes =
    foldM (\acc node -> do
        identifier <- assignNodeFresh node
        return $ acc <> "  " <> show identifier <> " [label=\"" <> show node <> "\"];\n"
    ) ""

-- | Render a list of edges into the DOT text format 
renderEdges :: (MonadRender node m, Show node) => [(node, node)] -> m Text
renderEdges =
    foldM (\acc (from', to') -> do
        fromId <- lookupNode from'
        toId <- lookupNode to'
        return $ acc <> "  " <> show fromId <> " -> " <> show toId <> ";\n"
    ) ""

-- | Render the set of top or bottom pointers into the DOT text format as edges from an invisible source node
renderPointer :: (Show node, MonadRender node m)
              => Text       -- ^ Label for the pointer (e.g., "top" or "bottom")
              -> Set node   -- ^ Set of nodes that the pointer points to
              -> m Text
renderPointer node = 
    foldM (\acc to' -> do
        toId <- lookupNode to'
        return $ acc <> "  " <> node <> " -> " <> show toId <> " [style=dashed];\n"
    ) ""

-- | Render a graph representation of a mailbox into a textual representation
-- of a dot graph that can be rendered by the "dot" command from Graphviz.
render :: (Ord a, Show a) => Graph a -> Text
render graph =
    let initialState = State Map.empty 0
        renderGraph = do
            nodeText <- renderNodes (Set.toList $ Graph.vertices graph)
            edgeText <- renderEdges (foldMap (\(from', tos) -> map (from',) $ Set.toList tos) $ Map.toList $ Graph.edges graph)
            pointerText <- mconcat <$> sequence [renderPointer "top" (Graph.tops graph), renderPointer "bottom" (Graph.bottoms graph)]
            return $ "digraph Mailbox {\n" <> nodeText <> edgeText <> pointerText <> "}\n"
    in case evalStateT renderGraph initialState of
        Left err -> error $ "Error rendering graph: " <> err
        Right text -> text
