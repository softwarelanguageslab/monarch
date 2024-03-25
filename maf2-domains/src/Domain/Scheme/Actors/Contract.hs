-- This module provides abstractions for contracts and their monitors
module Domain.Scheme.Actors.Contract(MessageContract(..)) where

import Data.Set (Set)
import qualified Data.Set as Set
import Lattice (Joinable(..), JoinLattice(..))

-- | Abstraction of a message contract, its join is performed
-- pairwise. 
data MessageContract v ptr = MessageContract {
      tag      :: v,       -- ^ expected message tag
      rcpt     :: v,       -- ^ expected recipient (λ)
      payload  :: Set ptr, -- ^ payload contracts, allocated as a list in the store
      comm     :: v        -- ^ communication contract (λ)
   } | Bottom deriving (Show, Eq, Ord)

instance (Joinable v, Ord ptr) => Joinable (MessageContract v ptr) where
   join Bottom v = v
   join v Bottom = v
   join (MessageContract tag1 rcpt1 payload1 comm1) (MessageContract tag2 rcpt2 payload2 comm2) =
      MessageContract {
         tag     = join tag1 tag2,
         rcpt    = join rcpt1 rcpt2,
         payload = join payload1 payload2,
         comm    = join comm1 comm2
      }

instance (JoinLattice v, Ord ptr) => JoinLattice (MessageContract v ptr) where   
   bottom = Bottom


   
