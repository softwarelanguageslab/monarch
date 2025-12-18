-- | Bounded counting
module Domain.Core.Count.BoundedCount(
    BoundedCount(..),
    zero,
    max
  ) where

import Lattice.Class
import Domain.Core.Count.Class
import GHC.Generics
import Control.DeepSeq (NFData)
import Prelude hiding (max)
import qualified Prelude 

-- | A monotonically increasing counter with a particular bound after which it is set to infinity
data BoundedCount = Count Int Int | Infty
                  deriving (Ord, Eq, Show, Generic)



instance NFData BoundedCount

instance Count BoundedCount where
  inc Infty = Infty
  inc (Count n limit) =
    if n < limit then Count (n + 1) limit else Infty

  one = Count 1 1
  infty = Infty

-- | Create an zero counter with the given limit
zero :: Int -> BoundedCount
zero = flip Count 0

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

max :: BoundedCount -> BoundedCount -> BoundedCount
max _ Infty = Infty
max Infty _ = Infty
max (Count n1 l1) (Count n2 l2) =
  Count (Prelude.max n1 n2)
        (Prelude.max l1 l2)
