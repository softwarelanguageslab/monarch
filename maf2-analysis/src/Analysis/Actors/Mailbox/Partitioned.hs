{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Analysis.Actors.Mailbox.Partitioned(
    PartitionedMailbox,
    UnitPartitionedMailbox,
    enqueue,
    empty,
    peek,
    dequeue
  ) where

import Data.Set (Set)
import Data.Map (Map)
import Lattice.Class ( Joinable, minimalElements, PartialOrder )
import Lattice.SetLattice ()
import Lattice.MapLattice ()
import qualified Analysis.Actors.Mailbox.Class as MB
import Analysis.Actors.Mailbox.Class (Mailbox)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import qualified Data.Set as Set
import Lattice.Class (BottomLattice)

-- | A mailbox partitioned according to partion "e"
-- and mailbox "mb".
--
-- Different partitions in a mailbox are considered concurrent when there is no
-- partial ordering relation between partitions,
-- messages within a partitioning can be ordered and can have multiplicity
-- but this is up to the used abstraction.
newtype PartitionedMailbox e msg mb = PartitionedMailbox (Map e mb)
                                    deriving (Show)

-- | Point-wise joining
deriving instance (Ord e, Ord mb, Joinable mb) => Joinable (PartitionedMailbox e msg mb)
deriving instance (Ord e, Ord mb, BottomLattice mb) => BottomLattice (PartitionedMailbox e msg mb)
deriving instance (Eq e, Eq msg, Eq mb) => Eq (PartitionedMailbox e msg mb)
deriving instance (Ord e, Ord msg, Ord mb) => Ord (PartitionedMailbox e msg mb)

-- Unfortunately, the "Mailbox" interface defined in "Analysis.Actors.Mailbox.Class" is not suitable
-- for the partitioned mailbox as the partitioned mailbox requires a more thorough integration into
-- the actor language's semantics.
--
-- The functions provided here provide a similar interface as "Analysis.Actors.Mailbox.Class" but
-- have different types. This enforces that an actor language's semantics integrates the partitioned
-- mailboxes correctly.

-- | Creates an empty mailbox
empty :: Ord e => PartitionedMailbox e msg mb
empty = PartitionedMailbox mempty


-- | Add a message to back of the mailbox
enqueue :: (Ord e, Mailbox mb msg)
        => e     -- ^ the partition where the message is sent from
        -> msg   -- ^ the message to send
        -> PartitionedMailbox e msg mb
        -> PartitionedMailbox e msg mb
enqueue e msg (PartitionedMailbox mbs) =
  PartitionedMailbox $ Map.insert e (MB.enqueue msg $ fromMaybe MB.empty $ Map.lookup e mbs) mbs

-- | Returns the message at the front of the mailbox together with its partition
peek :: (PartialOrder e, Ord e, Mailbox mb msg, Ord msg)
     => PartitionedMailbox e msg mb
     -> Set (msg, e)
peek pmb = Set.map (\(msg, e, _) -> (msg, e)) (dequeue pmb)

-- | Remove and return the message af the front of the mailbox together with its partition
dequeue :: (Ord e, PartialOrder e, Ord msg, Mailbox mb msg)
        => PartitionedMailbox e msg mb
        -> Set (msg, e, PartitionedMailbox e msg mb)
dequeue (PartitionedMailbox mbs) = foldMap (\e -> Set.map (updateMailbox e) $ MB.dequeue $ fromMaybe MB.empty $ Map.lookup e mbs) candidates
  where partitions = Map.keysSet mbs
        candidates = minimalElements partitions
        updateMailbox e (msg, mb') = (msg, e, PartitionedMailbox $ Map.insert e mb' mbs)

-------------------------------------------------------------
-- The trivial partition
-------------------------------------------------------------

-- | Partitions based on the unit (or isomorphic datatype) group all
-- partitions into a single one, leading to the most imprecise partitioning.
type UnitPartitionedMailbox msg mb = PartitionedMailbox () msg mb
