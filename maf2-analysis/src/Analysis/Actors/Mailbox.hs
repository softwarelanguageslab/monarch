{-# LANGUAGE FlexibleInstances #-}

-- | Mailbox abstractions for the analysis of actors programs
-- See: Stiévenart, Quentin, et al. "Mailbox abstractions for static analysis of actor programs." 31st European Conference on Object-Oriented Programming (ECOOP 2017). 2017.
module Analysis.Actors.Mailbox (
  module Analysis.Actors.Mailbox.Class
  ) where

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
import Analysis.Actors.Mailbox.Class

-- | A simple mailbox backed by a powerset.
--
-- This representation is finite if the number of messages that could be queued in the mailbox is also finite.
-- It discards message multiplicity and ordering.
instance (Ord msg) => Mailbox (Set msg) msg where
  enqueue = Set.insert
  dequeue m = Set.map (,m) m
  peek = id
  empty = Set.empty
  hasMessage' msg m
    | Set.member msg m = boolTop
    | otherwise = inject False
  mapMessages = Set.map

