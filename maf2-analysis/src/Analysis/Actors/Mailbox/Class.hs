module Analysis.Actors.Mailbox.Class (Mailbox(..)) where

import Data.Set
import Lattice
import Domain
import Lattice.BottomLiftedLattice (BottomLifted)

-- |  This typeclass specifies which operations the mailbox should understand
--  A mailbox contains a particular type of messages, given by the `msg` type parameter.
class (Ord m, Eq m) => Mailbox m msg | m -> msg where
  -- | Enqueue a message into the mailbox
  enqueue :: msg -> m -> m

  -- | Dequeue a message from the mailbox
  -- Returns a set of possible messages and updated mailboxes
  dequeue :: m -> Set (msg, m)

  -- | Return the first element that would be dequeued from the queue
  -- Returns a set of possible messages that could be dequeued first.
  peek :: m -> Set msg

  -- | Create an empty mailbox
  empty :: m

  -- | Checks whether the mailbox contains the given message.
  hasMessage' :: (BottomLattice b, BoolDomain b) => msg -> m -> b

  -- | Same as 'hasMessage'' but returns True for anything >= BoolDomain.true
  hasMessage :: msg -> m -> Bool
  hasMessage msg  = isTrue @(BottomLifted (CP Bool)) . hasMessage' msg

  -- | Applies the given function over the mailbox contens
  mapMessages :: (msg -> msg) -> m -> m
