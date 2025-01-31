{-# LANGUAGE RecordWildCards #-}
module Data.DeltaMap where

import RIO
import qualified RIO.Map as Map

data DeltaMap k v = DeltaMap { origMap :: Map k v, delta :: Map k v }

-- | Empty delta map
empty :: DeltaMap k v
empty = DeltaMap Map.empty Map.empty

-- | Create a delta map from the given map
fromMap :: Map k v -> DeltaMap k v
fromMap m = empty { origMap = m }

-- | Insert a value in the map, overwriting potentially existing ones
insert :: Ord k => k -> v -> DeltaMap k v -> DeltaMap k v
insert k v m = m { delta = Map.insert k v (delta m) }

-- | Same as @insert@ but executes @f@ on the existing value 
-- if any.
insertWith :: Ord k => (v -> v -> v) -> k -> v -> DeltaMap k v -> DeltaMap k v
insertWith f k v m@DeltaMap { .. } = m { delta = Map.insert k v' delta }
   where v' = maybe v (`f` v) (Map.lookup k delta <|> Map.lookup k origMap)

-- | Lookup a key
lookup :: Ord k => k -> DeltaMap k v -> Maybe v
lookup k DeltaMap { .. } = Map.lookup k delta <|> Map.lookup k origMap

-- | Apply the delta to the original mapping to obtain a mapping
apply :: Ord k => DeltaMap k v -> Map k v
apply DeltaMap { .. } = Map.union delta origMap
