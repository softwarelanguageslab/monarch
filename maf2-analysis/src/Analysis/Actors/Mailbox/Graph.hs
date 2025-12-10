{-# LANGUAGE RecordWildCards #-}
module Analysis.Actors.Mailbox.Graph(
  GraphMailbox(..),
  messages,
  toDot,
) where

import Analysis.Actors.Mailbox hiding (hasMessage)
import Data.Function ((&))
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Core.AbstractCount
import Domain.Core.BoolDomain.Class
import Domain.Class
import Lattice.Class hiding (top, bottom)
import Lattice.Trace 
import Data.Bifunctor

-- | Graph representation of the mailbox
data MessageGraph msg = MessageGraph
  { -- |  The last message to be dequeued from the mailbox
    top :: Maybe msg,
    -- | The first message in the mailbox
    bottom :: Maybe msg,
    -- | Every edge in the graph represents a "sends before" relation
    -- between message a and message b, so that if a -> b then a is sent before b
    edges :: Map msg (Set msg)
  } deriving (Ord, Eq, Show)

-- | Create an empty message graph
emptyGraph :: Ord msg => MessageGraph msg
emptyGraph = MessageGraph Nothing Nothing mempty

-- | Push a message to the message graph
pushMessage :: Ord msg => msg -> MessageGraph msg -> MessageGraph msg
pushMessage msg g@MessageGraph { .. } = g { bottom = Just $ fromMaybe msg bottom, top = Just msg, edges = edges' }
  where edges' =  maybe edges (\k -> Map.insertWith Set.union k (Set.singleton msg) edges) top
               &  Map.insertWith Set.union msg Set.empty

-- | Pop a message from the message graph, returns the message
-- and a set of successor message graphs.
popMessage :: Ord msg => MessageGraph msg -> Set (msg, MessageGraph msg)
popMessage g@MessageGraph { .. } = maybe Set.empty successors bottom
  where successors m     = Set.map (m,) (maybe (Set.singleton emptyGraph) (Set.map updateGraph) $ foldMap emptyToNothing $ Map.lookup m edges)
        updateGraph next = g { bottom = Just next }
        emptyToNothing s = if Set.null s then Nothing else Just s

-- | Returns the first message that would be popped from the message graph
peekMessage :: Ord msg => MessageGraph msg -> Set msg
peekMessage = Set.map fst . popMessage 

-- | Map a function over the messages in the mailbox
mapMessages' :: Ord msg => (msg -> msg) -> MessageGraph msg -> MessageGraph msg
mapMessages' f MessageGraph { .. } =
  MessageGraph { top = fmap f top,
                 bottom = fmap f bottom,
                 edges = Map.fromList $ map (bimap f (Set.map f))(Map.toList edges)
               }

-- | Compute the bounds of the mailbox
size :: MessageGraph msg -> i
size = undefined -- TODO compute a path from bottom to top if any exist

-- | Checks whether the graph has the given message
hasMessage :: (BoolDomain b, Ord msg)=> msg -> MessageGraph msg -> b
hasMessage msg g = inject $ Set.member msg $ Map.keysSet (edges g)

-- | Returns the set of messages inside this graph
graphMessages :: MessageGraph msg -> Set msg
graphMessages = Map.keysSet . edges

-----------------------------------------------------------
-- Partial ordering, and lattice structure
-----------------------------------------------------------

-- | Since the 'MessageGraph' does not have a partial ordering
-- its lattice instances cannot be implemented.
--
-- Instead we will use a set a suitable way to represent
-- mailboxes joined over multiple paths.
--
-- Importantly, this only works whenever the number of graphs
-- is finite. However, the abstraction above ensures
-- that this is the case of the analyzed programs
-- has a finite representation of message.
newtype GraphMailbox msg = GraphMailbox { getMessageGraphs :: Set (MessageGraph msg) }
                         deriving (Ord, Eq, Show, Joinable, PartialOrder, BottomLattice)


instance (Ord msg, Trace adr msg) => Trace adr (GraphMailbox msg) where
  trace = foldMap trace . messages

-- | For implementing the mailbox type class, we distirbute
-- all its operations to the elements the set.
instance (Ord msg) => Mailbox (GraphMailbox msg) msg where
  enqueue msg = GraphMailbox . Set.map (pushMessage msg) . getMessageGraphs
  dequeue = foldMap (Set.map (fmap (GraphMailbox . Set.singleton)) . popMessage) . getMessageGraphs
  peek = foldMap peekMessage . getMessageGraphs
  empty = GraphMailbox $ Set.singleton emptyGraph
  hasMessage' msg = joinMap (hasMessage msg) . getMessageGraphs
  mapMessages f = GraphMailbox . Set.map (mapMessages' f) . getMessageGraphs

-- | Return the powerset of messages represented by this graph
messages :: Ord msg => GraphMailbox msg -> Set msg
messages = foldMap graphMessages . getMessageGraphs

-----------------------------------------------------------
-- DOT graph visualization
-----------------------------------------------------------

-- | Shows the given data type but escapes its use of quotes
-- so that the data type be shown in a quoted context
showEscape :: Show a => a -> String
showEscape = foldMap escape . show
  where escape c
          | c == '"' = "\\\""
          | otherwise = [c]

-- | Convert a MessageGraph to DOT format for visualization
toDot :: (Show msg, Eq msg) => MessageGraph msg -> String
toDot MessageGraph { .. } =
  unlines $
    ["digraph MessageGraph {",
     "  rankdir=LR;",
     "  node [shape=box];",
     ""] ++
    topNode ++
    bottomNode ++
    [""] ++
    edgeList ++
    ["}"]
  where
    -- Highlight the top (most recently enqueued) node
    topNode = case top of
      Nothing -> []
      Just t -> ["  \"" ++ showEscape t ++ "\" [style=filled, fillcolor=lightgreen, label=\"TOP\\n" ++ showEscape t ++ "\"];"]

    -- Highlight the bottom (next to be dequeued) node
    bottomNode = case bottom of
      Nothing -> []
      Just b | Just b /= top -> ["  \"" ++ showEscape b ++ "\" [style=filled, fillcolor=lightblue, label=\"BOTTOM\\n" ++ showEscape b ++ "\"];"]
             | otherwise -> [] -- Already marked as top

    -- Generate edges from the graph
    edgeList = concatMap generateEdges (Map.toList edges)

    generateEdges (from, tos) =
      if Set.null tos
        then ["  \"" ++ showEscape from ++ "\";"] -- Node with no outgoing edges
        else map (\to -> "  \"" ++ showEscape from ++ "\" -> \"" ++ showEscape to ++ "\";") (Set.toList tos)
