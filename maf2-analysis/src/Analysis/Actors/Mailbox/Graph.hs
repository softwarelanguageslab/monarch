module Analysis;Actors.Mailbox.Graph where

import Analysis.Actors.Mailbox
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Lattice.Class

-- | Graph representation of the mailbox
data MessageGraph msg = MessageGraph
  { -- |  The first message to be dequeued from the mailbox
    top :: msg,
    -- | The last message in the mailbox
    bottom :: msg,
    -- | Every edge in the graph represents a "sends before" relation
    -- between message a and message b, so that if a -> b then a is sent before b
    edges :: Map msg (Set msg),
    -- | Counts how many times each message has been sent
    counts :: Map msg AbstractCount
  } deriving (Ord, Eq, Show)

-- | Create an empty message graph
emptyGraph :: MessageGraph msg
emptyGraph = MessageGraph Set.empty Set.empty Map.empty Map.empty

-- | Push a message to the message graph
pushMessage :: msg -> MessageGraph msg -> MessageGraph msg
pushMessage = undefined

-- | Pop a message from the message graph, returns the message
-- and a set of successor message graphs.
popMessage :: MessageGraph msg -> (msg, Set (MessageGraph msg))
popMessage = undefined

-- | Compute the size of the mailbox
size :: MessageGraph msg -> msg
size = undefined

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
newtype GraphMailbox msg = GraphMailbox (Set (MessageGraph msg))
                         deriving (Ord, Eq, Show, Joinable, PartialOrder)

-- | For implementing the mailbox type class, we distirbute
-- all its operations to the elements the set.
instance (Ord msg) => Mailbox (MessageGraph msg) msg where
  enqueue msg = undefined -- Set.map (enqueue msg) . 
  dequeue = undefined
  empty = undefined
  hasMessage msg = undefined -- Set.member msg . Map.keysSet  . edges
