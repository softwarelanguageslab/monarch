module Analysis.Actors.Mailbox.Partitioned.Partitions.UnitPartition (UnitPartition, unit) where

import Analysis.Actors.Mailbox.Partitioned (HappensBefore(..))
import Lattice.Class
import Lattice.UnitLattice ()
import Control.DeepSeq (NFData)
import GHC.Generics

-- | Trivial partition, where every partition is concurrent with every other partition
newtype UnitPartition = UnitPartition ()
    deriving (Ord, Eq, Show, PartialOrder, TopLattice, BottomLattice, Generic)

instance HappensBefore UnitPartition where 
    isBefore = const $ const False

instance NFData UnitPartition

unit :: UnitPartition 
unit = UnitPartition ()

