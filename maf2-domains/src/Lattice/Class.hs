module Lattice.Class (
   Joinable(..), 
   JoinLattice(..), 
   TopLattice(..),
   SplitLattice(..), 
   WidenLattice(..), 
   Meetable(..), 
   justOrBot, 
   overlap,
) where

import Data.Set (Set)

------------------------------------------------------------
--- Joinable / JoinLattice
------------------------------------------------------------

class Joinable v where
   join :: v -> v -> v

--- | A regular join-semilattice with bottom
--- but without top.
class (Joinable v, Eq v) => JoinLattice v where 
   bottom :: v
   subsumes :: v -> v -> Bool
   subsumes a b =
      join a b == a
   joins :: Foldable t => t v -> v
   joins = foldr join bottom
   -- | Like foldMap, folding all mapped values using a join
   joinMap :: Foldable t => (a -> v) -> t a -> v  
   joinMap f = foldr (join . f) bottom 

-- | A lattice with a top element
class (JoinLattice v) => TopLattice v where  --TODO: is JoinLattice necessary?
   -- | Returns the top value of the lattice,
   -- such that forall v, `subsumes top v` is true.
   top :: v

-- | Returns the value in `Maybe a` if it is `Just` otherwise `bottom` 
justOrBot :: JoinLattice a => Maybe a -> a
justOrBot (Just v) = v
justOrBot _ = bottom

------------------------------------------------------------
--- SplitLattice
------------------------------------------------------------

-- | Split operation for lattices
class SplitLattice v where
   -- Splits the value into a set of values where each value contains only one subvalue
   split :: v -> Set v

------------------------------------------------------------
--- WidenLattice
------------------------------------------------------------

class (JoinLattice v) => WidenLattice v where 
   -- | A widening operator, can be implemented
   -- for infinite domains. 
   widen :: v   -- ^ left value 
         -> v   -- ^ right value 
         -> Int -- ^ number of iterations 
         -> v   -- ^ widened value

------------------------------------------------------------
--- Meetable
------------------------------------------------------------

class Meetable v where
   meet :: v -> v -> v

overlap :: (Meetable v, JoinLattice v) => v -> v -> Bool
overlap v1 v2 = v1 `meet` v2 /= bottom 