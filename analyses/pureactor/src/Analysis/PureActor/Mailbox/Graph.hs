{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE OverloadedStrings #-}
module Analysis.PureActor.Mailbox.Graph (
    Graph(..)
  ) where

import Lattice (Joinable(..), PartialOrder(..))
import qualified Lattice.Class as L
import Analysis.Actors.Mailbox.Class (Mailbox(..))
import qualified Data.Map.Lazy as Map
import qualified Data.Set as Set
import Lattice.Class (BottomLattice)
import Prelude hiding (empty)
import qualified Domain.Class as D

-- | Proper mailbox abstraction, inspired by "Mailbox Abstractions for Static Analysis for Actor Programs" by Stiévenart et al.
--
-- The main improvement over the abstraction proposed by Stiévenart et al. is that this abstraction forms a semi-join lattice (as defined later by instances of 'PartialOrder' and 'Joinable').
--
-- The semi-joinlattice structure itself is mostly trivial:
-- - the "top" and "bottom" field are lifted from a single bottom-lifted value (i.e., Maybe a) to a set (i.e., Set a)
-- - the operations "serve" (also called 'pop' in this implementation) and "enqueue" are updated accordingly.
-- - the join defined pointwise
-- - the partial ordering holds if all fields are pointwise ordered
--
-- Parameterized in message type "a".
data Graph a = Graph {
    vertices :: Set a,          -- V ⊂ Vertex 
    edges    :: Map a (Set a),  -- edges ⊂ Vertex × Vertex 
    tops     :: Set a,          -- invariant: tops ⊆ V
    bottoms  :: Set a           -- invariant: bottoms ⊆ V
  } deriving (Ord, Eq, Show)

-- Point-wise join
instance Ord a => Joinable (Graph a) where
  join g1 g2 = Graph {
      vertices = L.join (vertices g1) (vertices g2),
      edges    = L.join (edges g1)    (edges g2),
      tops     = L.join (tops g1)     (tops g2),
      bottoms  = L.join (bottoms g1)  (bottoms g2)
    }

-- Partial-ordering
instance Ord a =>  PartialOrder (Graph a) where
  leq g1 g2 =
       leq (vertices g1) (vertices g2)
    && leq (edges g1)    (edges g2)
    && leq (tops g1)     (tops g2)
    && leq (bottoms g1)  (bottoms g2)

instance Ord a => BottomLattice (Graph a) where
  bottom = empty


instance (Eq a, Ord a) => Mailbox (Graph a) a where
  enqueue msg Graph { .. } = Graph {
      vertices = Set.insert msg vertices,
      edges    = Map.unionWith Set.union edges $ Map.fromList (Set.toList $ Set.map (,Set.singleton msg) bottoms),
      tops     = if tops == Set.empty then Set.singleton msg else tops,
      -- ∀ paths, we send the message on each paths in the message graph.
      bottoms  = Set.singleton msg
    }
  dequeue g@Graph { .. } = Set.fromList [ (msg, newGraph msg) | msg <- Set.toList tops ]
    where newGraph msg = g { tops = fromMaybe Set.empty $ Map.lookup msg edges }
  peek = Set.map fst . dequeue
  empty = Graph {
      vertices = Set.empty,
      edges    = Map.empty,
      tops     = Set.empty,
      bottoms  = Set.empty
    }
  hasMessage' msg = D.inject . Set.member msg . vertices
  mapMessages = error "NYI"

