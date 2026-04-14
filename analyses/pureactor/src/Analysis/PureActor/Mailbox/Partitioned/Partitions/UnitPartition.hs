module Analysis.PureActor.Mailbox.Partitioned.Partitions.UnitPartition where

import Analysis.PureActor.Mailbox.Partitioned (HappensBefore(..))
import Lattice.Class
import Lattice.UnitLattice ()

-- | Trivial partition, where every partition is concurrent with every other partition
newtype UnitPartition = UnitPartition ()
    deriving (Ord, Eq, Show, PartialOrder, TopLattice)

instance HappensBefore UnitPartition where 
    isBefore = const $ const False

