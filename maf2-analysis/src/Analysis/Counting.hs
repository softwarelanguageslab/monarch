-- | Infrastructure for keeping track of abstract counts within an analysis 
module Analysis.Counting(
    CountMap'(..)
  , CountMap
  , increment
  , isZero
  , isOne
  , getCount
  , markInfty
  , emptyCountMap
  ) where

import Lattice.Class
import Lattice.MapLattice ()
import Domain.Core.AbstractCount hiding (Count)
import Domain.Core.Count.Class
import Data.Map
import qualified Data.Map as Map
import Data.Maybe (isNothing)

-------------------------------------------------------------
-- Generic CountMap
-------------------------------------------------------------

-- | A mapping from elements to their count
newtype CountMap' e c = CountingMap {
  getCountingMap :: Map e c
  } deriving (Joinable, PartialOrder, BottomLattice, Eq, Ord, Show)

-- | Mark an entry in the counting map as "Infinte"
markInfty :: (Ord e, Count c) => e -> CountMap' e c -> CountMap' e c
markInfty k = CountingMap . Map.insert k infty . getCountingMap 

-- | Increment the count at the given element by one
increment :: (Ord e, Count c) => e -> CountMap' e c -> CountMap' e c
increment k = CountingMap .  Map.insertWith (const inc) k one . getCountingMap

-- | Checks whether the count at the given element is zero
isZero :: (Ord e) => e -> CountMap' e c  -> Bool
isZero k = isNothing . Map.lookup k . getCountingMap

-- | Checks whether the count at the given element is one
isOne :: (Ord e, Eq c, Count c)  => e -> CountMap' e c -> Bool
isOne k = (Just one ==) . Map.lookup k . getCountingMap

-- | Get the current count of the given element (if one is available)
getCount :: (Ord e) => e -> CountMap' e c -> Maybe c
getCount k = Map.lookup k . getCountingMap

-- | Create an empty count mapping
emptyCountMap :: CountMap' e c
emptyCountMap = CountingMap Map.empty

-------------------------------------------------------------
-- AbstractCount CountMap
-------------------------------------------------------------

type CountMap e = CountMap' e AbstractCount
