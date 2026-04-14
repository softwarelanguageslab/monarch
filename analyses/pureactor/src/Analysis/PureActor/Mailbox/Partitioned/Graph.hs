{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE OverloadedStrings #-}
-- | Copy of Analysis.PureActor.Mailbox.Graph but with 
-- partitioned top, bottom pointers and node values.
module Analysis.PureActor.Mailbox.Partitioned.Graph (
    -- * Graph abstraction
    PartitionedGraph(..),
    PartitionedNode,
    Partitioned(..),
    PartitionedPointer,
    pointerNode,
    pointerPartition,
    partitionedValue,
    partitionedPartition,
    toGraph
  ) where

import Lattice (Joinable(..), PartialOrder(..))
import qualified Lattice.Class as L
import Lattice.Class (BottomLattice)
import Prelude hiding (empty)
import Analysis.PureActor.Mailbox.Graph (Node(..))
import Analysis.PureActor.Mailbox.Partitioned (PartitionedMailbox(..), IsPartition, isConcurrent)
import qualified Data.Set as Set
import qualified Data.Map.Lazy as Map
import qualified Analysis.PureActor.Mailbox.Graph as RegularGraph

-- | An element "a" that is partitioned by partition "p"
-- i.e., p x a
data Partitioned p a = Partitioned p a
    deriving (Ord, Eq, Show)

-- | Returns the value without the partition. 
partitionedValue :: Partitioned p a -> a
partitionedValue (Partitioned _ a) = a

-- | Returns the partition without the value.
partitionedPartition :: Partitioned p a -> p
partitionedPartition (Partitioned p _) = p

-- | A node with content "a" partitioned according to a partition "p", 
-- alias for convenience.
type PartitionedNode p a = Partitioned p (Node a)

-- | A partitioned pointer to a partitioned node
type PartitionedPointer p a = Partitioned p (PartitionedNode p a)

-- | Extracts the node part from the partitioned pointer.
pointerNode :: PartitionedPointer p a -> PartitionedNode p a
pointerNode (Partitioned _ node) = node

-- | Extracts the partition part from the partitioned pointer.
pointerPartition :: PartitionedPointer p a -> p
pointerPartition (Partitioned partition _) = partition

-- | Partitioned mailbox abstraction. It follows the same idea in terms 
-- of its partitional ordering as 'Analysis.PureActor.Mailbox.Graph', but 
-- partitions its top and bottom pointers as well as its nodes according
-- to a partition 'p'. Type parameter 'a' denotes the contents of the nodes.
data PartitionedGraph p a = Graph {
    vertices :: Set (PartitionedNode p a), -- V ⊂ Vertex 
    edges    :: Map (Partitioned p (Node a)) (Set (Partitioned p (Node a))),  -- edges ⊂ Vertex × Vertex 
    -- NOTE: It is important to note that below, the top pointers *themselves*
    -- are partitioned and point to other partitioned nodes. This is a really 
    -- fundamental design choice, as otherwise we couldn't pick a top or bottom
    -- element when serving/queuing according to a partition.
    tops     :: Set (Partitioned p (PartitionedNode p a)), -- invariant: tops ⊆ V
    bottoms  :: Set (Partitioned p (PartitionedNode p a))  -- invariant: bottoms ⊆ V
  } deriving (Ord, Eq, Show)


-- Point-wise join: identical to the non-partitioned mailbox as the sets of pointers, 
-- nodes and edges remain unchanged, they just have to be joined.
--
-- NOTE: we do have a problem with representations here though, as the partitions themselves 
-- are subject to partial ordering themselves, it is possible that a graph with fewer top 
-- or bottom pointers actually represents the same graph as one with more pointers,
-- because the smaller graph has less precise partitions.
--
-- A similar problem surfaces when implementing abstract dictionaries, we could solve 
-- the problem here in a similar way, but simply opted to encode this in the "leq" 
-- function and mailbox functions instead.
instance (Ord a, Ord p) => Joinable (PartitionedGraph p a) where
  join g1 g2 = Graph {
      vertices = L.join (vertices g1) (vertices g2),
      edges    = L.join (edges g1)    (edges g2),
      tops     = L.join (tops g1)     (tops g2),
      bottoms  = L.join (bottoms g1)  (bottoms g2)
    }

-- Partial-ordering
instance Ord a =>  PartialOrder (PartitionedGraph p a) where
  leq = const $ const $ error "NYI: but not used?"

instance (IsPartition p, Ord a, Ord p) => BottomLattice (PartitionedGraph p a) where
  bottom = empty


instance (IsPartition p, Ord p, Eq a, Ord a) => PartitionedMailbox p a (PartitionedGraph p a) where
  -- Recall properties:
  -- * forall partition in m: if partition is concurrent with p, then the message is enqueued in p and partition. 
  -- * otherwise, the message is only enqueued in p.
  enqueue p newP msg Graph { .. } = Graph {
      vertices = Set.union vertices partitionedMessages,
      -- We connect an edge from all active bottom pointers to the new node.
      edges    = Map.unionWith Set.union edges $ Map.fromList $ map (\bottom -> (pointerNode bottom,Set.singleton (partitionedMsg (partitionedPartition bottom)))) $ Set.toList activeBottoms,
      -- Set the top pointer in the current partition to the current message if there is no top pointer in the current partition (i.e., activeTops is empty), otherwise the top pointers remain unchanged.
      tops     = if Set.null activeTops then Set.union tops (Set.map (Partitioned newP) partitionedMessages) else tops,
      -- Create new bottom pointers for the current partition that point to the new message, this is fine as after the queue operation, 
      -- all new bottom pointers should point to the new message.
      bottoms  = Set.map (Partitioned newP) partitionedMessages `Set.union` bottoms
    }
    -- Compute the top and bottom pointers that are active for the partition "p" (i.e., the pointers that are concurrent with "p").
    where previousTops =
            -- Compute the pointers that were active in the previous partition, the previous partitions are all biggest partitions 
            -- that are smaller than the current partition. 
            Set.filter (\(Partitioned p' _) -> p /= p' && p' `leq` p && all ((`leq` p') . partitionedPartition) tops) tops
          previousBottoms =
            -- Compute the pointers that were active in the previous partition, the previous partitions are all biggest
            -- partitions that are smaller than the current partition.
            Set.filter (\(Partitioned p' _) -> p /= p' && p' `leq` p && all ((`leq` p') . partitionedPartition) bottoms) bottoms

          activeTops = Set.filter (\(Partitioned p' _) -> isConcurrent p p') tops `Set.union` previousTops
          activeBottoms = Set.filter (\(Partitioned p' _) -> isConcurrent p p') bottoms  `Set.union` previousBottoms
          bottomPartitions = Set.map partitionedPartition activeBottoms
          -- The new message ends up in the current partition if the bottom pointers are empty, 
          -- or otherwise, ends up in the partition the bottom pointer was associated with so that the origin of the message is preserved. 
          -- For instance, when using the received messages as a partition, the new message will remember the history of received messages that led to it being enqueued
          -- this is similar to branch partitioning (see Mauborgne et al.).
          partitionedMsg p' = Partitioned p' (Node msg)
          partitionedMessages = if Set.null bottomPartitions then Set.singleton (partitionedMsg p) else Set.map partitionedMsg bottomPartitions

  -- Recall properties:
  -- * forall partition in m: if partition is concurrent with p, then the message is dequeue from both p and partition.
  -- * otherwise, the message is only dequeued from p.
  dequeue p g = Set.fromList $ [ (node, newGraph top) | top@(Partitioned _ (Partitioned _ (Node node))) <- Set.toList activeTops ]
    -- Compute the top pointers that are active for the partition "p" (i.e., the pointers that are concurrent with "p").
    where
          previousTops =
            -- Compute the pointers that were active in the previous partition, the previous partitions are all biggest partitions 
            -- that are smaller than the current partition. 
            Set.filter (\(Partitioned p' _) -> p /= p' && p' `leq` p && all ((`leq` p') . partitionedPartition) (tops g)) (tops g)

          activeTops = Set.filter (\(Partitioned p' _) -> isConcurrent p p') (tops g) `Set.union` previousTops
          -- Create newt top pointers for the current partition that point to the successors of the current top pointers, this is fine as after the dequeue operation, all new top pointers should point to the successors of the current top pointers.
          newGraph ptr@(Partitioned _ node) =
            -- TODO: perhaps we should also remove the old top pointers here, but it is not strictly necessary as they will be ignored in future enqueue/dequeue operations if the updated partition is not concurrent with the old partition: if it is not concurrent, then the new top pointers will be used instead of the old ones.
            let successors = Map.findWithDefault Set.empty node (edges g)
            in g {
               -- Assign the successors to newly created top pointers in the new partition. 
               tops = Set.union (tops g) (Set.fromList $ map (Partitioned p) $ Set.toList successors) `Set.difference` Set.singleton ptr
            }

  empty = Graph {
      vertices = Set.empty,
      edges    = Map.empty,
      tops     = Set.empty,
      bottoms  = Set.empty
    }


-- | A partitioned graph can be turend into an orderinary graph by forgetting the partition information, this is useful for rendering and testing.
toGraph :: (Ord p, Ord a) => PartitionedGraph p a -> RegularGraph.Graph a
toGraph Graph { .. } = RegularGraph.Graph {
        vertices = Set.map partitionedValue vertices,
        edges    = foldr (Map.unionWith Set.union . uncurry Map.singleton . bimap partitionedValue (Set.map partitionedValue)) Map.empty (Map.toList edges),
        tops     = Set.map (partitionedValue . pointerNode) tops,
        bottoms  = Set.map (partitionedValue . pointerNode) bottoms
    }
