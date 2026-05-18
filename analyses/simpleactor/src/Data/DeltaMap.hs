{-# LANGUAGE TypeFamilies #-}
module Data.DeltaMap
  ( DeltaMap (..)
  , changedKeysSet
  , persistMap
  , lookup
  , insert
  , insertWith
  , union
  , unions
  , unionWith
  , keys
  , keysSet
  , toList
  , fromList
  , toMap
  ) where

import Prelude hiding (lookup)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Lens
import GHC.Generics (Generic)
import Control.DeepSeq (NFData)
import Lattice.Class (Joinable (..), BottomLattice (..))
import Lattice.MapLattice ()


data DeltaMap k v = DeltaMap
  { storage :: Map k v
  , delta   :: Set k
  } deriving (Eq, Ord, Show, Generic)

instance (NFData k, NFData v) => NFData (DeltaMap k v)

instance (Ord k, Joinable v, Eq v) => Joinable (DeltaMap k v) where
  join (DeltaMap m1 d1) (DeltaMap m2 d2) =
    let m = join m1 m2
        -- Any key that is in m2 but not in m1, or where join v1 v2 /= v1
        newKeys = Map.foldrWithKey (\k v2 acc ->
            case Map.lookup k m1 of
              Nothing -> Set.insert k acc
              Just v1 -> if join v1 v2 == v1 then acc else Set.insert k acc
          ) Set.empty m2
    in DeltaMap m (Set.unions [d1, d2, newKeys])

instance BottomLattice (DeltaMap k v) where
  bottom = DeltaMap Map.empty Set.empty

type instance Index (DeltaMap k v) = k
type instance IxValue (DeltaMap k v) = v

instance (Ord k, Eq v) => Ixed (DeltaMap k v) where
  ix k f (DeltaMap m d) = case Map.lookup k m of
    Just v -> f v <&> \v' ->
      if v == v'
        then DeltaMap m d
        else DeltaMap (Map.insert k v' m) (Set.insert k d)
    Nothing -> pure (DeltaMap m d)

instance (Ord k, Eq v) => At (DeltaMap k v) where
  at k f (DeltaMap m d) = f (Map.lookup k m) <&> \case
    Nothing -> case Map.lookup k m of
      Nothing -> DeltaMap m d
      Just _  -> DeltaMap (Map.delete k m) (Set.insert k d)
    Just v' -> case Map.lookup k m of
      Just v | v == v' -> DeltaMap m d
      _ -> DeltaMap (Map.insert k v' m) (Set.insert k d)

changedKeysSet :: DeltaMap k v -> Set k
changedKeysSet = delta

persistMap :: DeltaMap k v -> DeltaMap k v
persistMap (DeltaMap m _) = DeltaMap m Set.empty

toMap :: DeltaMap k v -> Map k v
toMap = storage

lookup :: Ord k => k -> DeltaMap k v -> Maybe v
lookup k = Map.lookup k . storage

insert :: (Ord k, Eq v) => k -> v -> DeltaMap k v -> DeltaMap k v
insert k v (DeltaMap m d) =
  let oldV = Map.lookup k m
  in if oldV == Just v
     then DeltaMap m d
     else DeltaMap (Map.insert k v m) (Set.insert k d)

insertWith :: (Ord k, Eq v) => (v -> v -> v) -> k -> v -> DeltaMap k v -> DeltaMap k v
insertWith f k v (DeltaMap m d) =
  let newV = maybe v (f v) (Map.lookup k m) 
      oldV = Map.lookup k m
  in if oldV == Just newV
     then DeltaMap m d
     else DeltaMap (Map.insert k newV m) (Set.insert k d)

union :: (Ord k) => DeltaMap k v -> DeltaMap k v -> DeltaMap k v
union (DeltaMap m1 d1) (DeltaMap m2 d2) =
  let m = Map.union m1 m2
      newKeys = Map.keysSet (Map.difference m2 m1)
  in DeltaMap m (Set.unions [d1, d2, newKeys])

unions :: (Ord k) => [DeltaMap k v] -> DeltaMap k v
unions = foldl union (DeltaMap Map.empty Set.empty)

unionWith :: (Ord k, Eq v) => (v -> v -> v) -> DeltaMap k v -> DeltaMap k v -> DeltaMap k v
unionWith f (DeltaMap m1 d1) (DeltaMap m2 d2) =
  let m = Map.unionWith f m1 m2
      changedKeys = Map.foldrWithKey (\k v2 acc ->
          case Map.lookup k m1 of
            Nothing -> Set.insert k acc
            Just v1 -> if f v1 v2 == v1 then acc else Set.insert k acc
        ) Set.empty m2
  in DeltaMap m (Set.unions [d1, d2, changedKeys])

keys :: DeltaMap k v -> [k]
keys = Map.keys . storage

keysSet :: DeltaMap k v -> Set k
keysSet = Map.keysSet . storage

toList :: DeltaMap k v -> [(k, v)]
toList = Map.toList . storage

fromList :: Ord k => [(k, v)] -> DeltaMap k v
fromList l = DeltaMap (Map.fromList l) (Set.fromList (map fst l))
