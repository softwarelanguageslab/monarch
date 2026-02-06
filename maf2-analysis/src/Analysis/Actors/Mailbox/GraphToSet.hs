{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE RecordWildCards #-}

-- | Mailbox that is either a set of graph mailbox abstraction
module Analysis.Actors.Mailbox.GraphToSet
  (-- * Graph without threshold
   GraphToSet (..),
   graphToSet,
   -- * Graph with threshold
   GraphToSetWithThreshold(..),
   emptyWithLimit) where

import Analysis.Actors.Mailbox
import Analysis.Actors.Mailbox.Graph hiding (numberOfUniqueGraphs)
import qualified Analysis.Actors.Mailbox.Graph as Graph
import Data.Set (Set)
import qualified Data.Set as Set
import Lattice.Class
import Lattice.Trace
import GHC.Base (assert)
import Data.Maybe (fromJust)
import Control.Monad.Cond (ifM)

-------------------------------------------------------------
-- GraphToSet without thresholds
-------------------------------------------------------------

data GraphToSet msg
  = SetAbstraction (Set msg)
  | GraphAbstraction (GraphMailbox msg)
  deriving (Ord, Eq, Show)

instance (Ord msg) => Joinable (GraphToSet msg) where
  join (SetAbstraction s1) (SetAbstraction s2) =
    SetAbstraction (join s1 s2)
  join (GraphAbstraction s1) (GraphAbstraction s2) =
    GraphAbstraction (join s1 s2)
  join (SetAbstraction s1) (GraphAbstraction s2) =
    SetAbstraction (join s1 (Graph.messages s2))
  join (GraphAbstraction s1) (SetAbstraction s2) =
    SetAbstraction (join (Graph.messages s1) s2)

instance (Ord msg) => PartialOrder (GraphToSet msg) where
  leq (SetAbstraction s1) (SetAbstraction s2) = leq s1 s2
  leq (GraphAbstraction s1) (GraphAbstraction s2) = leq s1 s2
  leq (SetAbstraction _) _ = False
  leq (GraphAbstraction s1) (SetAbstraction s2) = leq (Graph.messages s1) s2

instance BottomLattice (GraphToSet msg) where
  bottom = GraphAbstraction bottom

instance (Ord msg) => Mailbox (GraphToSet msg) msg where
  enqueue msg =
    \case
      SetAbstraction s -> SetAbstraction $ enqueue msg s
      -- Turn sets of graphs into sets of messages after a particular limit.
      -- The rationale is that sets of graphs are equivalent to sets of messages at some point in terms of precision. They are, however, not equivalent in terms of performance. This is because when a message is received, the analysis generates an execution path for every graph in the set of graphs, in that execution path it also considers all other graphs which again generate an execution pathn  and so on.
      -- This results in a combinatorial explosion of execution paths. The sets of messages are similar in that they also generate an execution path for every message in the set of messages, **but this is it**, subsequent receives on the same set of messages will yield the same execution paths that have already been explored, therefore reducing the combinatorial explosion.
      self@(GraphAbstraction s) | Graph.numberOfUniqueGraphs s > maxUniqueGraphs -> graphToSet self
      GraphAbstraction s -> GraphAbstraction $ enqueue msg s
  dequeue = \case
    SetAbstraction s -> Set.map (fmap SetAbstraction) $ dequeue s
    GraphAbstraction s -> Set.map (fmap GraphAbstraction) $ dequeue s
  peek = \case
    SetAbstraction s -> peek s
    GraphAbstraction s -> peek s
  empty = GraphAbstraction empty
  hasMessage' msg = \case
    SetAbstraction s -> hasMessage' msg s
    GraphAbstraction s -> hasMessage' msg s
  mapMessages f = \case
    SetAbstraction s -> SetAbstraction $ mapMessages f s
    GraphAbstraction s -> GraphAbstraction $ mapMessages f s

instance (Ord msg, Trace adr msg) => Trace adr (GraphToSet msg) where
  trace (GraphAbstraction abstr) = trace abstr
  trace (SetAbstraction abstr) = trace abstr

-- | Converts the graph abstraction (if it is one) to a set set abstraction
graphToSet :: (Ord msg) => GraphToSet msg -> GraphToSet msg
graphToSet s@(SetAbstraction {}) = s
graphToSet (GraphAbstraction s) = SetAbstraction $ Graph.messages s

-- | Returns the number of unique graphs in the abstraction if the graph abstraction was used
numberOfUniqueGraphs :: GraphToSet msg -> Maybe Int
numberOfUniqueGraphs  = \case SetAbstraction {} -> Nothing
                              GraphAbstraction g -> Just $ Graph.numberOfUniqueGraphs g

-------------------------------------------------------------
-- GraphToSet with thresholds
-------------------------------------------------------------

-- | The default 'GraphToSet' abstraction has no bound on the number
--  of unique graphs that can occur in the set of graphs (as specified in the 'Mailbox.Graph' abstraction).
--
-- Unfortunately, this can be detrimental for the performance and scalability
-- of the analysis. In very imprecise analyses, the graph abstraction results
-- in many unique graphs. This in turn yields many execution paths when a
-- message is received, which yield more execution paths because after receiving
-- that message the updated graph or any of the other graphs may still be received from.
--
-- To prevent this combinatorial explosion, this abstraction puts a bound on the number of unique graphs in the set of graphs by converting the graph abstraction
-- into a set abstraction (which lacks ordering and multiplicity information).
-- While each message receive still generates another execution path, any subsequence receive generate the same path, therefore preventing the combinatorial explosion.
data GraphToSetWithThreshold msg = GraphToSetWithThreshold
  { graphThreshold :: Int,
    storage :: GraphToSet msg
  }
  deriving (Ord, Eq, Show)

-- The same interfaces as the "GraphToSet" abstraction are implemented for this
-- abstraction.
--
-- INVARIANT: the graphThreshold is the same for all graphs used within a single analysis.
instance (Ord msg) => Joinable (GraphToSetWithThreshold msg) where
  join g1 g2 =
    assert (graphThreshold g1 == graphThreshold g2) -- invariant
           (g1 { storage = join (storage g1) (storage g2) })


instance (Ord msg) => PartialOrder (GraphToSetWithThreshold msg) where
  leq g1 g2 =
    assert (graphThreshold g1 == graphThreshold g2) -- invariant
           (leq (storage g1) (storage g2))

instance Ord msg => Mailbox (GraphToSetWithThreshold msg) msg where
  enqueue msg GraphToSetWithThreshold { .. }  =
      GraphToSetWithThreshold graphThreshold (enqueue msg grh)
    where grh = fromJust $ ifM ((> graphThreshold) <$> numberOfUniqueGraphs storage)
                               (Just (graphToSet storage))
                               (Just storage)
  dequeue g@GraphToSetWithThreshold { .. } = undefined
    where mapOutput = undefined
  peek = undefined
  empty = GraphToSetWithThreshold 0 empty
  hasMessage' msg GraphToSetWithThreshold { .. } = hasMessage' msg storage
  mapMessages = undefined

emptyWithLimit :: Ord msg => Int -> GraphToSetWithThreshold msg
emptyWithLimit = flip GraphToSetWithThreshold (GraphAbstraction empty)

-- | The maximum number of graphs in a `GraphAbstraction` until
-- it is turned into a set for performance reasons
maxUniqueGraphs :: Int
maxUniqueGraphs = 100
