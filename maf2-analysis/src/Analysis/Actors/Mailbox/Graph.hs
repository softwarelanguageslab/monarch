{-# LANGUAGE RecordWildCards #-}
module Analysis.Actors.Mailbox.Graph(GraphMailbox) where

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

-- | Graph representation of the mailbox
data MessageGraph msg = MessageGraph
  { -- |  The first message to be dequeued from the mailbox
    top :: Maybe msg,
    -- | The last message in the mailbox
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
  where successors m     = Set.map (m,) (maybe (Set.singleton emptyGraph) (Set.map updateGraph) $ Map.lookup m edges)
        updateGraph next = g { bottom = Just next }

-- | Compute the bounds of the mailbox
size :: (Domain Integer i, TopLattice i) => MessageGraph msg -> i
size = undefined -- TODO compute a path from bottom to top if any exist

-- | Checks whether the graph has the given message
hasMessage :: (BoolDomain b, Ord msg)=> msg -> MessageGraph msg -> b
hasMessage msg g = inject $ Set.member msg $ Map.keysSet (edges g)

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
                         deriving (Ord, Eq, Show, Joinable, PartialOrder)

-- | For implementing the mailbox type class, we distirbute
-- all its operations to the elements the set.
instance (Ord msg) => Mailbox (GraphMailbox msg) msg where
  enqueue msg = GraphMailbox . Set.map (pushMessage msg) . getMessageGraphs
  dequeue = foldMap (Set.map (fmap (GraphMailbox . Set.singleton)) . popMessage) . getMessageGraphs
  empty = GraphMailbox $ Set.singleton emptyGraph
  hasMessage' msg = joinMap (hasMessage msg) . getMessageGraphs
