module Analysis.Actors.Mailbox.Partitioned.Partitions.UnitPartition (UnitPartition) where

import Analysis.Actors.Mailbox.Partitioned (HappensBefore(..))
import Lattice.Class
import Lattice.UnitLattice ()

-- | Trivial partition, where every partition is concurrent with every other partition
newtype UnitPartition = UnitPartition ()
    deriving (Ord, Eq, Show, PartialOrder, TopLattice, BottomLattice)


instance HappensBefore UnitPartition where 
    isBefore = const $ const False


