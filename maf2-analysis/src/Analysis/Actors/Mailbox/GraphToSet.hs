-- | Mailbox that is either a set of graph mailbox abstraction
module Analysis.Actors.Mailbox.GraphToSet where


import Analysis.Actors.Mailbox
import Analysis.Actors.Mailbox.Graph
import qualified Analysis.Actors.Mailbox.Graph as Graph
import Data.Set (Set)
import Lattice.Class

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
  -- TODO

instance (Ord msg) => Mailbox (GraphToSet msg) msg where 
  -- TODO
