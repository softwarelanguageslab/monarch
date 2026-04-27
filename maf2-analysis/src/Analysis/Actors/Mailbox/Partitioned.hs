{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Analysis.Actors.Mailbox.Partitioned(
        PartitionedMailbox(..),
        IsPartition,
        HappensBefore(..), 
        isConcurrent, 
    ) where 

import qualified Lattice.Class as L
import Data.Set (Set)

-- | A partition is  a partially ordered set 
-- (i.e., the 'bigger' the partition the more concrete 
-- partitions belong to that partition), coupled with 
-- a notion of abstract "concurrency". 
--
-- A partition happens before another partition iff 
-- all the events in that partition happen before the 
-- events of the other partition. A partition is said 
-- to be concurrent with another partition if neither 
-- partitions have a happens before relation with the 
-- other.
type IsPartition p = (L.TopLattice p, L.PartialOrder p, HappensBefore p)

-- | Encodes the notion that a element of type 'a' 
-- happens before another element of type 'a'. 
--
-- A particular example of this is the vector clock (see Lamport). 
class HappensBefore a where 
    -- | Returns true if the event in the first argument happened 
    -- before the event in the second argument
    isBefore :: a -> a -> Bool


-- | The first argument is concurrent with the second (and the other way around) 
-- iff ~ (isBefore a b) /\ ~(isBefore b a)
--
-- Properties:
-- * isConrurrent a a = True, ie., an element is concurrent with itself.
isConcurrent :: (HappensBefore a, Eq a) => a -> a -> Bool
isConcurrent a b = a == b || (not (isBefore a b) && not (isBefore b a))

-- | Unfortunately, as the API of the mailbox is not partition-aware, we have to create a seperate type class for partitioneded mailboxes. 
-- However, regular mailboxes can be seen as a special case of partitioned mailboxes where the partition is trivial (i.e., has only one element).
class PartitionedMailbox p msg m | m -> p msg where
    empty :: m
    -- | Enqueue a message from a certain partition into the partition of the second argument.
    --
    -- Properties:
    -- * forall partition in m: if partition is concurrent with p, then the message is enqueued in p and partition. 
    -- * otherwise, the message is only enqueued in p.
    enqueue :: p -> p -> msg -> m -> m 
    -- | Dequeue a message from a certain partition in the first partition.
    --
    -- Properties:
    -- * forall partition in m: if partition is concurrent with p, then the message is dequeue from both p and partition.
    -- * otherwise, the message is only dequeued from p.
    dequeue :: p -> m -> Set (msg, m)

