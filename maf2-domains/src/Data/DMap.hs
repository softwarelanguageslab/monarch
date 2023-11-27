{-# LANGUAGE ScopedTypeVariables, ExistentialQuantification, FlexibleContexts, TypeSynonymInstances #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
-- | Joinable hashMap where multiple key-value types can co-exist
module Data.DMap(DMap, lookup, updateAt, KV, Hashable(..), (:->), empty, alter, fromMap, region) where

import Data.Kind
import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as HashMap
import Data.Dynamic
import Domain.Lattice (Joinable, JoinLattice)
import qualified Domain.Lattice as Lat
import Data.Maybe
import Control.Monad
import qualified Data.HashSet as HashSet
import Prelude hiding (lookup)
import Data.Hashable
import Data.Map (Map)
import Data.Bifunctor
import qualified Data.Map as Map
import Data.TypeLevel.List
import Data.TypeLevel.Pair
import Type.Reflection

type (:->) a b = KV a b
infix 1 :->

data KV a b

-- Hashable dynamic keys
type MakeHash v = Int -> v -> Int
data DynamicHashable = forall a . DynamicHashable { _runHash :: MakeHash a, _eq :: a -> a -> Bool, _tag :: TypeRep a, _vlu :: a }

toDynHashable :: (Typeable v, Hashable v) => v -> DynamicHashable
toDynHashable = DynamicHashable hashWithSalt (==) typeRep

-- | Uses the hash function of the underlying type
instance Hashable DynamicHashable where
   hashWithSalt salt (DynamicHashable hash _ _ vlu) = hash salt vlu

-- | Dynamic types can only be equal if they have the same underlying type
instance Eq DynamicHashable where
   (DynamicHashable _ eq1 t1 v1) == (DynamicHashable _ _ t2 v2)
      | Just HRefl <- t1 `eqTypeRep` t2 = eq1 v1 v2
      | otherwise = False

fromDynamicHashable :: forall a  . (Typeable a) => DynamicHashable -> Maybe a
fromDynamicHashable (DynamicHashable _ _ t v)
   | Just HRefl <- t `eqTypeRep` rep = Just v
   | otherwise = Nothing
   where rep = typeRep :: TypeRep a
--
-- Joinable dynamic values
--

type Join a = a -> a -> a
data DynamicJoinable = forall a . DynamicJoinable (Join a) (TypeRep a) a
toDynamicJoinable :: (Typeable v, Joinable v) => v -> DynamicJoinable
toDynamicJoinable = DynamicJoinable Lat.join typeRep

fromDynamicJoinable :: forall a  . (Typeable a) => DynamicJoinable -> Maybe a
fromDynamicJoinable (DynamicJoinable _ t v)
   | Just HRefl <- t `eqTypeRep` rep = Just v
   | otherwise = Nothing
   where rep = typeRep :: TypeRep a

instance Joinable DynamicJoinable where
   join (DynamicJoinable join1 t1 v1) (DynamicJoinable _ t2 v2)
      | Just HRefl <- t1 `eqTypeRep` t2 = DynamicJoinable join1 t1 (join1 v1 v2)
      | otherwise = error "only values of the same type may be joined"

--


class (Typeable (Key k), Typeable (Val k)) => KeyVal k where
   type Key k :: Type
   type Val k :: Type

-- | A map based on dynamic keys and values
-- the map is parametrized by the set of key-value mappings that is contains
newtype DMap (ks :: [Type]) = DMap { getMap :: HashMap DynamicHashable DynamicJoinable }

instance (Typeable k, Typeable v) => KeyVal ((k :: Type) :-> (v :: Type)) where
   type Key (k :-> v) = k
   type Val (k :-> v) = v

-- Safe abstractions around the DMap

-- | Lookup a value in the given map at the specified key
lookup :: (Hashable k, Typeable v, Typeable k, Has ks (k :-> v)) => k -> DMap ks -> Maybe v
lookup k =
   -- SAFETY: fromJust will always succeed since 
   -- the type constraint of `insert` and `extend`
   -- forces the map to only contain
   -- the key associated with the given value.
   return . getMap >=> HashMap.lookup (toDynHashable k) >=> return . fromJust . fromDynamicJoinable

-- | Update the value at the given key
updateAt :: (Joinable v, Typeable k, Typeable v, Hashable k, Has ks (k :-> v)) => k -> v -> DMap ks -> DMap ks
updateAt k v =
   DMap . HashMap.insert (toDynHashable k) (toDynamicJoinable v) . getMap

-- | Create an empty Dmap
empty :: DMap a
empty = DMap HashMap.empty

-- | Alter the dynamic map
alter :: (Joinable v, Typeable k, Typeable v, Hashable k, Has ks (k :-> v)) => (Maybe v -> Maybe v) -> k -> DMap ks -> DMap ks 
alter f k = DMap . HashMap.alter (fmap toDynamicJoinable . f . fmap (fromJust . fromDynamicJoinable)) (toDynHashable k) . getMap

-- | Convert a map to a DMap
fromMap :: forall ks adr vlu . (Hashable adr, Typeable adr, Joinable vlu, Typeable vlu, Has ks (adr :-> vlu)) => Map adr vlu -> DMap ks
fromMap = Map.foldrWithKey updateAt empty

-- | DMap's can be joined together
instance Joinable (DMap ks) where
   join (DMap m1) (DMap m2) =
      DMap $ foldr (\k -> HashMap.insert k (joinKeys k)) m1 (HashSet.union (HashMap.keysSet m1) (HashMap.keysSet m2))
      where joinKeys k = case HashMap.lookup k m1 of
                           Just v1 -> maybe v1 (Lat.join v1) (HashMap.lookup k m2)
                           Nothing -> fromJust $ HashMap.lookup k m2


instance JoinLattice (DMap ks) where 

-- | Returns the given region as a map
-- 
-- NOTE: this is an expensive operation as the entire map
-- needs to be traversed, its keys casted to their respective
-- static types and then converted to a Map
region :: forall k v ks . (Typeable v, Typeable k, Hashable k, Has ks (KV k v)) => DMap ks -> HashMap k v
region (DMap m) = 
      HashMap.fromList $ map (bimap castK castV) $ HashMap.toList $ HashMap.filterWithKey (\k _ -> isJust $ fromDynamicHashable @k k) m
    where castK = fromJust . fromDynamicHashable @k
          castV = fromJust . fromDynamicJoinable @v

