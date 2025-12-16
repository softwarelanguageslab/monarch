-- | Bounded counting
module Domain.Core.BoundedCount(
    BoundedCount,
    inc,
    zero,
    infty
  ) where

import Lattice.Class

-- | A monotonically increasing counter with a particular bound after which it is set to infinity
data BoundedCount = Count Int Int | Infty
                  deriving (Ord, Eq, Show)

-- | Increment the counter
inc :: BoundedCount -> BoundedCount
inc Infty = Infty
inc (Count n limit) =
  if n < limit then Count (n + 1) limit else Infty

-- | Create an zero counter with the given limit
zero :: Int -> BoundedCount
zero = flip Count 0

-- | Create an infinite value
infty :: BoundedCount
infty = Infty

instance Joinable BoundedCount where
  join Infty _ = Infty
  join _ Infty = Infty
  join (Count a limit1) (Count b limit2)
    | a == b && limit1 == limit2 = Count a limit1
    | otherwise = Infty

instance TopLattice BoundedCount where
  top = Infty

instance PartialOrder BoundedCount where
  leq _ Infty = True
  leq (Count a limit1) (Count b limit2)
    | a == b && limit1 == limit2 = True
    | otherwise = False
  leq _ _ = False
