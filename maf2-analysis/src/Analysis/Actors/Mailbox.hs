{-# LANGUAGE FunctionalDependencies, FlexibleInstances #-}
-- | Mailbox abstractions for the analysis of actors programs
-- See: Stiévenart, Quentin, et al. "Mailbox abstractions for static analysis of actor programs." 31st European Conference on Object-Oriented Programming (ECOOP 2017). 2017.
module Analysis.Actors.Mailbox(Mailbox(..), Message(..)) where

import Lattice

import Data.Set (Set)
import qualified Data.Set as Set

-- | This typeclass specifies which operations the mailbox should understand
-- A mailbox contains a particular type of messages, given by the `msg` type parameter.
class (JoinLattice m) => Mailbox m msg | m -> msg where
   -- | Enqueue a message into the mailbox 
   enqueue :: msg -> m -> m

   -- | Dequeue a message from the mailbox 
   -- Returns a set of possible messages and updated mailboxes
   dequeue :: m -> Set (msg, m)

   -- | Create an empty mailbox
   empty :: m

-- | A simple mailbox backed by a powerset.
--
-- This representation is finite if the number of messages that could be queued in the mailbox is also finite. 
-- It discards message multiplicity and ordering.
instance (Ord msg) => Mailbox (Set msg) msg where
   enqueue = Set.insert
   dequeue m = Set.map (, m) m
   empty = Set.empty

class Message m v | m -> v where
   -- | Determines whether the message has a tag that could be considered equal to the given tag 
   matchesTag :: m -> String -> Bool
   -- | Extracts the message payload from the message 
   payload :: m -> [v]
   -- | Create a new message 
   message :: String -> [v] -> m
