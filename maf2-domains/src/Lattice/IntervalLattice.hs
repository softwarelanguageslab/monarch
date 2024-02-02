-- | A simple interval domain, with an upper and lower bound
module Lattice.IntervalLattice(Interval(..), Bound(..)) where

import Prelude hiding (min, max)
import Lattice.Class 
import Domain.Class 

import qualified Data.Set as Set 

-- | A bound of the interval domain, 
-- is either a concrete value or infinity. 
data Bound a = Bounded a 
             | Infinity 
  deriving (Eq, Ord)

-- | <= comparison of lower bounds, hence Infinity as negative infinity
lle :: Ord a => Bound a -> Bound a -> Bool
lle Infinity _ = True 
lle _ Infinity = False
lle (Bounded a) (Bounded b) = a <= b

-- | Take the minimum bound of the lower bound of the interval
min :: Ord a => Bound a -> Bound a -> Bound a 
min a b
  | lle a b   = a
  | otherwise = b 

-- | <= comparison of upper bounds, hence Infinity as positive infinity
ule :: Ord a => Bound a -> Bound a -> Bool
ule _ Infinity = True   
ule Infinity _ = False  
ule (Bounded a) (Bounded b) = a <= b

-- | Take the maximum bound of the upper bound of the interval
max :: Ord a => Bound a -> Bound a -> Bound a
max a b
  | ule a b = b
  | otherwise = a 

-- | The interval itself with its upper and lower bound .
-- `Infinity` in the lower bound is always interpreted to mean negative infinity, 
-- the converse is taken for the upper bound.
data Interval a = BottomInterval
                | Interval (Bound a) (Bound a) 
  deriving (Eq, Ord)

-- Lattice implementations

instance (Ord a) => Joinable (Interval a) where 
  join BottomInterval x = x
  join x BottomInterval = x
  join (Interval left1 right1) (Interval left2 right2) = 
    Interval (min left1 left2) (max right1 right2)

instance (Ord a) => JoinLattice (Interval a) where
  bottom = BottomInterval
  subsumes _ BottomInterval = True 
  subsumes BottomInterval _ = True 
  subsumes (Interval left1 right1) (Interval left2 right2) = 
    left1 `lle` left2 && right2 `ule` right1

instance (Ord a) => TopLattice (Interval a) where 
  top = Interval Infinity Infinity

instance (Ord a) => Domain (Interval a) a where
   inject a = Interval (Bounded a) (Bounded a)

instance (Enum a, Ord a) => SplitLattice (Interval a) where
  split (Interval (Bounded a) (Bounded b)) = Set.fromList $ zipWith make interval (tail interval)
    where interval = [a..b]
          make l u = Interval (Bounded l) (Bounded u)
  split int = Set.singleton int 