-- | A simple interval domain, with an upper and lower bound
module Domain.Interval(Interval(..), Bound(..)) where

import Domain.Lattice

-- | A bound of the interval domain, 
-- is either a concrete value or infinity. 
data Bound a = Bounded a | Infinity

-- | Take the minimum bound of the lower bound of the interval
min' :: Ord a => Bound a -> Bound a -> Bound a 
min' Infinity _ = Infinity 
min' _ Infinity = Infinity 
min' (Bounded a) (Bounded b) = Bounded $ min a b

-- | < comparison of bounds, interprets Infinity as negative infinity
lt :: Ord a => Bound a -> Bound a -> Bool
lt Infinity _ = True 
lt _ Infinity = False
lt (Bounded a) (Bounded b) = a < b

-- | Take the maximum bound of the upper bound of the interval
max' :: Ord a => Bound a -> Bound a -> Bound a
max' Infinity _ = Infinity 
max' _ Infinity = Infinity
max' (Bounded a) (Bounded b) = Bounded $ max a b

-- | > comparison of bounds, interprets Infinity as positive infinity
gt :: Ord a => Bound a -> Bound a -> Bool
gt _ Infinity = True 
gt Infinity _ = False
gt (Bounded a) (Bounded b) = a > b

-- | The interval itself with its upper and lower bound .
-- `Infinity` in the lower bound is always interpreted to mean negative infinity, 
-- the converse is taken for the upper bound.
data Interval a = Interval (Bound a) (Bound a) | BottomInterval

-- Lattice implementations

instance (Ord a) => Joinable (Interval a) where 
  join BottomInterval x = x
  join x BottomInterval = x
  join (Interval left1 right1) (Interval left2 right2) = 
    Interval (min' left1 left2) (max' right1 right2)

instance (Ord a) => JoinLattice (Interval a) where
  bottom = BottomInterval
  subsumes _ BottomInterval = True 
  subsumes BottomInterval _ = True 
  subsumes (Interval left1 right1) (Interval left2 right2) = 
    left1 `lt` left2 && right1 `gt` right2

instance (Ord a) => TopLattice (Interval a) where 
  top = Interval Infinity Infinity