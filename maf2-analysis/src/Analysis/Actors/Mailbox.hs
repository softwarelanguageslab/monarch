{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}

-- | Mailbox abstractions for the analysis of actors programs
-- See: Stiévenart, Quentin, et al. "Mailbox abstractions for static analysis of actor programs." 31st European Conference on Object-Oriented Programming (ECOOP 2017). 2017.
module Analysis.Actors.Mailbox (Mailbox (..)) where

import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Core.AbstractCount (AbstractCount)
import Lattice.Class (Joinable (join))
import Lattice.SetLattice ()
import Lattice.MapLattice ()
import Lattice.Class (PartialOrder)
import Lattice (PartialOrder(..))

-- |  This typeclass specifies which operations the mailbox should understand
--  A mailbox contains a particular type of messages, given by the `msg` type parameter.
class (Ord m, Eq m) => Mailbox m msg | m -> msg where
  -- | Enqueue a message into the mailbox
  enqueue :: msg -> m -> m

  -- | Dequeue a message from the mailbox
  -- Returns a set of possible messages and updated mailboxes
  dequeue :: m -> Set (msg, m)

  -- | Create an empty mailbox
  empty :: m

  -- | Returns true if the abstract mailbox already approximates
  -- for the given message
  hasMessage :: msg -> m -> Bool

-- | A simple mailbox backed by a powerset.
--
-- This representation is finite if the number of messages that could be queued in the mailbox is also finite.
-- It discards message multiplicity and ordering.
instance (Ord msg) => Mailbox (Set msg) msg where
  enqueue = Set.insert
  dequeue m = Set.map (,m) m
  empty = Set.empty
  hasMessage = Set.member

-- | Graph representation of the mailbox
data MessageGraph msg = MessageGraph
  { -- |  The first message to be dequeued from the mailbox
    top :: Set msg,
    -- | The last message in the mailbox
    bottom :: Set msg,
    -- | Every edge in the graph represents a "sends before" relation
    -- between message a and message b, so that if a -> b then a is sent before b
    edges :: Map msg (Set msg),
    -- | Counts how many times each message has been sent
    counts :: Map msg AbstractCount
  } deriving (Ord, Eq, Show)

-- | Create an empty message graph
emptyGraph :: MessageGraph msg
emptyGraph = MessageGraph Set.empty Set.empty Map.empty Map.empty

-- | Message graphs are @Joinable@ making them a candidate for widening.
instance Ord msg => Joinable (MessageGraph msg) where
  join (MessageGraph top1 bottom1 edges1 counts1) (MessageGraph top2 bottom2 edges2 counts2) =
    MessageGraph (join top1 top2) (join bottom1 bottom2) (join edges1 edges2) (join counts1 counts2)

-- | Message graphs are also partially ordered
instance Ord msg => PartialOrder (MessageGraph msg) where
  leq (MessageGraph top1 bottom1 edges1 counts1) (MessageGraph top2 bottom2 edges2 counts2) = 
    leq top1 top2 && leq bottom1 bottom2 && leq edges1 edges2 && leq counts1 counts2

-- | Message graphs satisfy the @Mailbox@ type class
instance (Ord msg) => Mailbox (MessageGraph msg) msg where
  enqueue = undefined
  dequeue = undefined
  empty = emptyGraph
  hasMessage msg = Set.member msg . Map.keysSet  . edges
