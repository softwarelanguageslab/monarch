-- This module provides abstractions for contracts and their monitors
module Domain.Scheme.Actors.Contract(MessageContract(..)) where

import Lattice (Joinable(..), BottomLattice(..))
import Domain.Core.SeqDomain.BoundedList

-- | Abstraction of a message contract, its join is performed
-- pairwise. 
data MessageContract v = MessageContract {
      tag      :: v,             -- ^ expected message tag
      rcpt     :: v,             -- ^ expected recipient (λ)
      payload  :: BoundedList v, -- ^ payload contracts, allocated as a list in the store
      comm     :: v              -- ^ communication contract (λ)
   } | Bottom deriving (Show, Eq, Ord)


-- TODO: the `BottomLattice` constraint is needed here because of the `BoundedList`
-- usage which requires a bottom for its join, we should change `BoundedList`
-- to not rely on bottom anymore.
instance (Joinable v, BottomLattice v) => Joinable (MessageContract v) where
   join Bottom v = v
   join v Bottom = v
   join (MessageContract tag1 rcpt1 payload1 comm1) (MessageContract tag2 rcpt2 payload2 comm2) =
      MessageContract {
         tag     = join tag1 tag2,
         rcpt    = join rcpt1 rcpt2,
         payload = join payload1 payload2,
         comm    = join comm1 comm2
      }

instance BottomLattice (MessageContract v) where   
   bottom = Bottom


   
