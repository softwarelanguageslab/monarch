-- | Infrastructure for keeping track of abstract counts within an analysis 
module Analysis.Counting(CountMap(..), increment, isZero, isOne, emptyCountMap) where

import Lattice.Class
import Lattice.MapLattice ()
import Domain.Core.AbstractCount
import Data.Map
import qualified Data.Map as Map
import Data.Maybe (isNothing)

-- | A mapping from elements to their count
newtype CountMap e = CountingMap {getCountingMap :: Map e AbstractCount}
                  deriving (Joinable, PartialOrder)
  
-- | Increment the count at the given element by one
increment :: Ord e => e -> CountMap e -> CountMap e
increment k = CountingMap .  Map.insertWith (const inc) k CountOne . getCountingMap

-- | Checks whether the count at the given element is zero
isZero :: Ord e => e -> CountMap e -> Bool
isZero k = isNothing . Map.lookup k . getCountingMap

-- | Checks whether the count at the given element is one
isOne :: Ord e => e -> CountMap e -> Bool
isOne k = (Just CountOne ==) . Map.lookup k . getCountingMap

-- | Create an empty count mapping
emptyCountMap :: CountMap e
emptyCountMap = CountingMap Map.empty
