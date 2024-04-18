module Data.Map.Extra where

import Data.Map (Map)
import qualified Data.Map as Map
import Data.Tuple.Extra

-- | Lookup the given key in the map or insert it using the given default value
-- if it is not in the map, return both the (modified) map and the value found.
lookupInsertDefaultF :: (Ord k, Applicative f) => f v -> k -> Map k v -> f (v, Map k v)
lookupInsertDefaultF def k m =
   second (flip (Map.insert k) m) . dupe <$> maybe def pure (Map.lookup k m)
