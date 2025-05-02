{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}

-- | Mailbox abstractions for the analysis of actors programs
-- See: Stiévenart, Quentin, et al. "Mailbox abstractions for static analysis of actor programs." 31st European Conference on Object-Oriented Programming (ECOOP 2017). 2017.
module Analysis.Actors.Mailbox (Mailbox (..)) where

import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Core.BoolDomain.Class
import Domain.Core.BoolDomain.ConstantPropagation ()
import Domain.Core.BoolDomain.BottomLifted ()
import Lattice.SetLattice ()
import Lattice.MapLattice ()
import Lattice.ConstantPropagationLattice (CP)
import Domain.Class (inject)
import Lattice.Class
import Lattice.BottomLiftedLattice (BottomLifted)

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

  -- | Checks whether the mailbox contains the given message.
  hasMessage' :: (BottomLattice b, BoolDomain b) => msg -> m -> b

  -- | Same as 'hasMessage'' but returns True for anything >= BoolDomain.true
  hasMessage :: msg -> m -> Bool
  hasMessage msg  = isTrue @(BottomLifted (CP Bool)) . hasMessage' msg

-- | A simple mailbox backed by a powerset.
--
-- This representation is finite if the number of messages that could be queued in the mailbox is also finite.
-- It discards message multiplicity and ordering.
instance (Ord msg) => Mailbox (Set msg) msg where
  enqueue = Set.insert
  dequeue m = Set.map (,m) m
  empty = Set.empty
  hasMessage' msg m
    | Set.member msg m = boolTop
    | otherwise = inject False

