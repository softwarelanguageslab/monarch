-- | Lifts an infinite domain such that a widening 
-- operator is implemented that widens to `Top.
module Domain.TopLifted(TopLifted(..)) where

import Domain.Lattice

data TopLifted a = Top | Value a deriving Eq

instance (Joinable v) => Joinable (TopLifted v) where 
   join Top _   = Top 
   join _   Top = Top 
   join (Value v1) (Value v2) = Value (join v1 v2)
 
instance (JoinLattice v) => JoinLattice (TopLifted v) where 
   bottom = Value bottom
   subsumes Top _ = True 
   subsumes _ Top = False
   subsumes (Value v1) (Value v2) = subsumes v1 v2

instance (JoinLattice v) => TopLattice (TopLifted v) where 
   top = Top
