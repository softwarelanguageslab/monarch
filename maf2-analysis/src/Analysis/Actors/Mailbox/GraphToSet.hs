{-# LANGUAGE LambdaCase #-}
-- | Mailbox that is either a set of graph mailbox abstraction
module Analysis.Actors.Mailbox.GraphToSet(GraphToSet(..), graphToSet) where

import Analysis.Actors.Mailbox
import Analysis.Actors.Mailbox.Graph
import qualified Analysis.Actors.Mailbox.Graph as Graph
import Data.Set (Set)
import qualified Data.Set as Set
import Lattice.Class
import Lattice.Trace

data GraphToSet msg = SetAbstraction (Set msg)
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
  enqueue msg = \case SetAbstraction s -> SetAbstraction $ enqueue msg s
                      GraphAbstraction s -> GraphAbstraction $ enqueue msg s
  dequeue = \case SetAbstraction s -> Set.map (fmap SetAbstraction) $ dequeue s
                  GraphAbstraction s -> Set.map (fmap GraphAbstraction) $ dequeue s
  empty = GraphAbstraction empty
  hasMessage' msg = \case SetAbstraction s -> hasMessage' msg s
                          GraphAbstraction s -> hasMessage' msg s
  mapMessages f = \case SetAbstraction s -> SetAbstraction $ mapMessages f s
                        GraphAbstraction s -> GraphAbstraction $ mapMessages f s

instance (Ord msg, Trace adr msg) => Trace adr (GraphToSet msg) where
  trace (GraphAbstraction abstr) = trace abstr
  trace (SetAbstraction abstr) = trace abstr

-- | Converts the graph abstraction (if it is one) to a set set abstraction
graphToSet :: Ord msg => GraphToSet msg -> GraphToSet msg
graphToSet s@(SetAbstraction {}) = s
graphToSet (GraphAbstraction s) = SetAbstraction $ Graph.messages s
