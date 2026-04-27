{-# OPTIONS_GHC -Wno-orphans #-}
module Analysis.Actors.Mailbox.Graph (
    Graph,
    Node(..)
  ) where

import Analysis.Actors.Mailbox.Class (Mailbox(..))
import qualified Data.Set as Set
import qualified Lattice.Class as L
import qualified Analysis.Actors.Mailbox.Class as Mailbox
import Analysis.Actors.Mailbox.Partitioned.Graph (Node(..), PartitionedGraph)
import Analysis.Actors.Mailbox.Partitioned as Partitioned
import Analysis.Actors.Mailbox.Partitioned.Partitions.UnitPartition (UnitPartition)


-- | A graph mailbox abstraction is equivalent to a PartitionedGraph mailbox abstraction 
-- with the unit partition.
type Graph a = PartitionedGraph UnitPartition a

-- As the partitioning scheme used is the unit partition, we can implement to the classic 
-- non-partitioning mailbox typeclass as well.
instance (Eq a, Ord a) => Mailbox (Graph a) a where
  empty = Partitioned.empty @UnitPartition @a
  enqueue = Partitioned.enqueue L.bottom L.bottom
  dequeue = Partitioned.dequeue L.bottom
  peek = Set.map fst . Mailbox.dequeue
  hasMessage' = error "NYI"
  mapMessages = error "NYI"


