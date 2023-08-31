{-# OPTIONS_GHC -Wno-redundant-constraints #-}
-- | A partitioned map that allows different keys to have different value types 
-- 
-- Lookup is then performed based on the type of the key and the key itself.
module TypeLevel.HMap where

import TypeLevel.List
import TypeLevel.Pair

import Data.Maybe
import Data.Kind
import qualified Data.Dynamic as Dyn
import Data.Map (Map)
import qualified Data.Map as Map

data HMap (ks :: [Type]) where 
   HMap :: NoDuplicates (MapFirst ks) => Map (ConstrainedDynamic Ord) Dyn.Dynamic -> HMap ks

contents :: HMap ks -> Map (ConstrainedDynamic Ord) Dyn.Dynamic
contents (HMap c) = c

-- | Lookup an existing key in the map
lookup :: forall k v ks . (Ord k, Dyn.Typeable k, Dyn.Typeable v, Has (k, v) ks) => k -> HMap ks -> Maybe v
lookup k = fmap (fromJust . Dyn.fromDynamic @v) . Map.lookup ((toDyn k) :: ConstrainedDynamic Ord) . contents 
   -- type safety: the cast in "fromJust . fromDynamic @v" is safe since we ensure that key `k` 
   -- always has value `v` associated with it (see also `insert` and `extend`) 
   -- the type cannot contain any other associations since keys should be unique.

-- | Inserting an existing key in the map
insert :: Has (k, v) ks => k -> v -> HMap ks -> HMap ks
insert = undefined

-- | Extend the map with a new key
extend :: NotElement (k, v) ks => k -> v -> HMap ks -> HMap ((k, v) ': ks)
extend = undefined
