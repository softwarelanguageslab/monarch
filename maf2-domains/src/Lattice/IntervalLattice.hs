-- | A simple interval domain, with an upper and lower bound
module Lattice.IntervalLattice(Interval(..), Bound(..)) where

import Prelude 
import Lattice.Class 
import Domain.Class 
import Domain.Core.BoolDomain
import Domain.Core.NumberDomain.Class
import Lattice.ConstantPropagationLattice

import qualified Data.Set as Set 

-- | A bound of the interval domain, 
-- is either a concrete value or infinity. 
data Bound a = NegInfinity
             | Bounded a 
             | Infinity 
  deriving (Eq, Ord, Show)

-- | The interval itself with its upper and lower bound .
data Interval a = BottomInterval
                | Interval (Bound a) (Bound a) 
  deriving (Eq, Ord, Show)

-- true if there is an overlap between the two intervals
overlaps :: Ord a => Interval a -> Interval a -> Bool
overlaps (Interval l1 u1) (Interval l2 u2) = 
   max l1 l2 <= min u1 u2

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
    left1 < left2 && right2 < right1

instance (Ord a) => TopLattice (Interval a) where 
  top = Interval NegInfinity Infinity

instance (Ord a) => Domain (Interval a) a where
   inject a = Interval (Bounded a) (Bounded a)

instance (Enum a, Ord a) => SplitLattice (Interval a) where
  split (Interval (Bounded a) (Bounded b)) = Set.fromList $ zipWith make interval (tail interval)
    where interval = [a..b]
          make l u = Interval (Bounded l) (Bounded u)
  split int = Set.singleton int 

instance (Ord a) => Meetable (Interval a) where   
   meet i1@(Interval l1 u1) i2@(Interval l2 u2) 
      | overlaps i1 i2 = Interval (max l1 l2) (min l1 l2)
   meet _ _ = BottomInterval
   

instance NumberDomain (Interval Integer) where  
   -- TODO: implement isZero, random, plus, minus,times, div, expt
   type Boo (Interval Integer) = CP Bool
   random = const $ return top
   eq BottomInterval _ = return bottom
   eq _ BottomInterval = return bottom
   eq i1@(Interval l1 u1) i2@(Interval l2 u2) 
      | l1 == u1 && i1 == i2 = return (inject True)
      | overlaps i1 i2       = return boolTop
      | otherwise            = return (inject False)
   lt i1@(Interval l1 u1) i2@(Interval l2 u2)
      | l1 == u1 && i1 == i2 = return (inject False)     -- values are equal!
      | overlaps i1 i2       = return boolTop            -- if there is overlap, they might be smaller than each-other
      | otherwise            = return (inject $ u1 < l2) -- if there is no overlap, lower bound of the second one must be bigger than the other

