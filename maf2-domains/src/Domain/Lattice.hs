{-# LANGUAGE FlexibleContexts, FlexibleInstances #-}
module Domain.Lattice (JoinLattice(..), Meetable(..), overlap, reduce, Domain(..), TopLattice(..), SplitLattice(..), BoolDomain(..), justOrBot, Joinable(..), WidenLattice(..)) where

import qualified Data.Set as Set
import qualified Data.Map as Map
import Data.Map (Map)
import Data.List (partition)

class Joinable v where
   join :: v -> v -> v

class Meetable v where
   meet :: v -> v -> v

overlap :: (Meetable v, JoinLattice v, Eq v) => v -> v -> Bool
overlap v1 v2 = v1 `meet` v2 /= bottom 

reduce :: (Meetable v, JoinLattice v, Eq v) => [v] -> [v]
reduce [] = []
reduce (v:vs)
    | updated == v   = v : reduce oth
    | otherwise      = reduce (updated : oth)
    where (olp, oth) = partition (overlap v) vs
          updated    = joins (v:olp)

instance (JoinLattice l, Meetable l, Eq l) => Joinable [l] where
   join l1 l2 = reduce (l1 ++ l2)  
instance (JoinLattice l, Meetable l, Eq l) => JoinLattice [l] where
   bottom = []
   subsumes l1 l2 = join l1 l2 == l1 

--- | A regular join-semilattice with bottom
--- but without top.
class (Joinable v, Eq v) => JoinLattice v where 
   bottom :: v
   subsumes :: v -> v -> Bool
   joins :: Foldable t => t v -> v
   joins = foldr join bottom

class (JoinLattice v) => WidenLattice v where 
   -- | A widening operator, can be implemented
   -- for infinite domains. 
   widen :: v   -- ^ left value 
         -> v   -- ^ right value 
         -> Int -- ^ number of iterations 
         -> v   -- ^ widened value

-- | A lattice with a top element
class (JoinLattice v) => TopLattice v where 
   -- | Returns the top value of the lattice,
   -- such that forall v, `subsumes top v` is true.
   top :: v

-- | Joinable for pairs of values
instance (Joinable v, Joinable w) => Joinable (v, w) where
   join (v1, w1) (v2, w2) = (join v1 v2, join w1 w2)

-- | JoinLattice for pairs of values
instance (JoinLattice v, JoinLattice w) => JoinLattice (v, w) where
   bottom = (bottom, bottom)
   subsumes (v1, w1) (v2, w2) = subsumes v1 v2 && subsumes w1 w2

-- | Joinable for Unit
instance Joinable () where
   join _ _ = ()

-- | JoinLattice for Unit 
instance JoinLattice () where
   bottom =   ()
   subsumes _ _ = True

-- | Joinable for Maybe
instance (Joinable v) => Joinable (Maybe v) where
   join (Just a) (Just b) = Just (join a b)
   join (Just a) Nothing = Just a
   join Nothing (Just a) = Just a
   join _ _ = Nothing

-- | JoinLattice implementation for Maybe
instance (JoinLattice v) => JoinLattice (Maybe v) where
   bottom = Nothing
   subsumes (Just a) (Just b) = subsumes a b
   subsumes (Just _) Nothing = True
   subsumes Nothing Nothing = True
   subsumes _ _ = False

-- | Joinable for maps
instance (Ord a, Joinable v) => Joinable (Map a v) where
   join m1 m2 = Map.unionWith join m1 m2

instance (Ord a, Eq v, Joinable v) => JoinLattice (Map a v) where
   bottom = Map.empty
   subsumes m1 m2 =
      join m1 m2 == m1

class JoinLattice v => Domain v c where
   inject :: c -> v

-- | Split operation for lattices
class SplitLattice v where
   -- Splits the value into a set of values where each value contains only one subvalue
   split :: v -> Set.Set v

-- | Joinable for sets
instance (Ord a) => Joinable (Set.Set a) where
   join = Set.union

-- | Lattice for sets
instance (Ord a) => JoinLattice (Set.Set a) where
   bottom = Set.empty
   subsumes = flip Set.isSubsetOf

class (Domain b Bool) => BoolDomain b where
   isTrue ::  b -> Bool
   isFalse :: b -> Bool
   not :: b -> b
   boolTop :: b



-------

-- | Returns the value in `Maybe a` if it is `Just` otherwise `bottom` 
justOrBot :: JoinLattice a => Maybe a -> a
justOrBot (Just v) = v
justOrBot _ = bottom
