{-# LANGUAGE RecordWildCards #-}
module Data.DeltaMap where

import RIO hiding (lookup)
import qualified RIO.Map as Map
import Prelude hiding (lookup)

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


-- | Insert only if the given function returns false if the key is already 
-- in the mapping, otherwise refrain from inserting. If the key was not 
-- in the mapping yet, it is inserted anyway.
insertWithUnless :: Ord k 
                 => (v -> v -> v)    -- ^ the @with@ part
                 -> (v -> v -> Bool) -- ^ the unless part 
                 -> k -- ^ the key to insert 
                 -> v -- ^ the value to insert 
                 -> DeltaMap k v 
                 -> DeltaMap k v
insertWithUnless f chk k v m = 
   fromMaybe (insert k v m) $ do 
      cnd <- flip chk v <$> lookup k m
      if cnd then Just $ insertWith f k v m
             else return m
                                   
-- | Lookup a key
lookup :: Ord k => k -> DeltaMap k v -> Maybe v
lookup k DeltaMap { .. } = Map.lookup k delta <|> Map.lookup k origMap

-- | Apply the delta to the original mapping to obtain a mapping
apply :: Ord k => DeltaMap k v -> Map k v
apply DeltaMap { .. } = Map.union delta origMap

-- | Return the set of updated keys
changedKeysSet :: DeltaMap k v -> Set k
changedKeysSet = Map.keysSet . delta
