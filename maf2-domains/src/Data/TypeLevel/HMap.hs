{-# LANGUAGE PolyKinds                  #-}
{-# LANGUAGE UndecidableInstances       #-}
{-# LANGUAGE AllowAmbiguousTypes        #-}
{-# LANGUAGE StandaloneKindSignatures   #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Data.TypeLevel.HMap (
    HMap,
    (:->),
    (::->),
    Dict(..),
    KeyType,
    Keys,
    KeyKind,
    HMapKey,
    withDict,
    withFacts,
    withKey,
    empty,
    singleton,
    singletonWithSing,
    isSingleton,
    get,
    getWithSing,
    set,
    setWithSing,
    member,
    memberWithSing,
    null,
    keys,
    size,
    map,
    map',
    mapList,
    filter,
    foldr,
    fromList,
    toList,
    unionWith,
    withC,
    withC_,
    withC_',
    ForAll(..),
    ForAllOf,
    All,
    Assoc,
    LookupIn,
    InstanceOf,
    AtKey,
    AtKey1,
    AllAtKey1,
    AllAtKey,
    KeyIs,
    KeyIs1,
    Const,
    BindingFrom,
    genHKeys, 
    MapWith,
    MapWithAt,
    Sigma(..),
    buildForAllKeys
) where

import Prelude hiding (map, filter, foldr, null)
import qualified Prelude
import Data.Kind
import Data.Singletons
import Data.Singletons.TH

import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import Unsafe.Coerce (unsafeCoerce)

import Data.TypeLevel.HMap.TH
import Data.Singletons.Sigma
import Data.Singletons.Decide

import qualified Data.List as List
import Data.TypeLevel.AssocList
import GHC.Base (build)
import Control.DeepSeq

--
-- SomeVal (TODO: move this to other utility module?)
--

data SomeVal = forall v . SomeVal v

instance NFData SomeVal where    
   -- XXX: this might not be correct as the 
   -- value enclosed within `SomeVal` is not 
   -- evaluated. We propably need to create 
   -- a proper instance for `NFData` for HMap
   -- rather than relying on the instance on @Map@.
   rnf x = seq x ()

-- only use this when absolutely sure about the type 
unsafeCoerceVal :: SomeVal -> v
unsafeCoerceVal (SomeVal v) = unsafeCoerce v

--
-- Dict (TODO: move this to other utility module?)
--

data Dict (c :: Constraint) where
  Dict :: c => Dict c

withDict :: Dict c -> (c => v) -> v
withDict Dict = id

---
--- Some useful constraints (TODO: move this to other utility module?)
---

type AllAtKey1 c m = ForAll (KeyKind m) (AtKey1 c m) :: Constraint 
type AllAtKey  c m = ForAll (KeyKind m) (AtKey c m) :: Constraint

---
--- El HMap
---

-- | Returns the kind of the keys in the mapping
type KeyKind (m :: [k :-> Type]) = k
type KeyType m = Demote (KeyKind m)

newtype HMap (m :: [k :-> Type]) = HMap (Map (KeyType m) SomeVal) 

deriving instance (NFData (Demote k)) => NFData (HMap (m :: [k :-> Type]))

-- shorthand for mappings with a "valid"/"usable" key
type HMapKey m = (SingKind (KeyKind m), SDecide (KeyKind m), Ord (KeyType m))
-- shorthand for dependent key/value pairs
type BindingFrom m = (Sigma (KeyKind m) (LookupIn m))



--
-- Map-like interface
--

empty :: HMap m
empty = HMap Map.empty

isSingleton :: HMap m -> Bool
isSingleton = (==1) . size 

singleton :: forall kt m . (HMapKey m, SingI kt) => Assoc kt m -> HMap m
singleton = HMap . Map.singleton (demote @kt) . SomeVal

singletonWithSing :: forall kt m . (HMapKey m) => Sing kt -> Assoc kt m -> HMap m
singletonWithSing Sing = singleton @kt

get :: forall kt m . (HMapKey m, SingI kt) => HMap m -> Maybe (Assoc kt m)
get (HMap m) = unsafeCoerceVal <$> Map.lookup (demote @kt) m

getWithSing :: forall kt m . (HMapKey m) => Sing kt -> HMap m -> Maybe (Assoc kt m)
getWithSing Sing = get @kt

set :: forall {k} kt (m :: [k :-> Type]) . (Ord (KeyType m), SingKind k, SingI kt) => Assoc kt m -> HMap m -> HMap m
set v (HMap m) = HMap $ Map.insert (demote @kt) (SomeVal v) m

setWithSing :: forall k kt (m :: [k :-> Type])  . (Ord (KeyType m), SingKind k) => Sing kt -> Assoc kt m -> HMap m -> HMap m
setWithSing Sing = set @kt

member :: forall {k} (kt :: k)  (m :: [k :-> Type]) . (HMapKey m, SingI kt) => HMap m -> Bool
member (HMap m) = Map.member (demote @kt) m

memberWithSing :: forall {k} (kt :: k) (m :: [k :-> Type]) . (HMapKey m) => Sing kt -> HMap m -> Bool
memberWithSing Sing = member @kt


-- | Map the given function over each key/Value in the hmap.
--
-- The result is a new Hmap.
map :: forall f m . (HMapKey m) => (forall (kt :: KeyKind m) . Sing kt -> Assoc kt m -> f @@ kt) -> HMap m -> HMap (MapWith f (Keys m))
map f (HMap m) = HMap $ Map.mapWithKey (\k v -> withSomeSing k (g v)) m
  where g :: forall (kt :: KeyKind m) . SomeVal -> Sing kt -> SomeVal
        g v s = SomeVal $ f s (unsafeCoerceVal @(Assoc kt m) v)

map' :: forall m a . (HMapKey m) => (forall (kt :: KeyKind m) . Sing kt -> Assoc kt m -> a) -> HMap m -> HMap (MapWith (Const a) (Keys m))
map' = map @(Const a)

-- | Map over the key/value pairs in the HMap and return a list of their results.
-- This function assumes that each key in the HMap maps to the same value (which is true for all 'Const' functions) such that 
-- the results can be collected into a single Haskell list.
mapList :: forall a m . HMapKey m => (forall (kt :: KeyKind m) . Sing kt -> Assoc kt m -> a) -> HMap m -> [a]
mapList f m1 = 
   let (HMap m) = map' f m1
   in -- safety: from applying `f` on all key-value pairs in m we know that 
      -- each key is mapped to `a`, therefore `SomeVal`s are actually a's 
      -- and can be safely coerced.
      List.map (unsafeCoerceVal . snd) $ Map.toList m

filter :: forall m . (HMapKey m) => (forall (kt :: KeyKind m) . Sing kt -> Assoc kt m -> Bool) -> HMap m -> HMap m
filter p (HMap m) = HMap $ Map.filterWithKey (\k v -> withSomeSing k (g v)) m
  where g :: forall (kt :: KeyKind m) . SomeVal -> Sing kt -> Bool
        g v s = p s (unsafeCoerceVal @(Assoc kt m) v)

foldr :: forall m b . (HMapKey m) => (forall (kt :: KeyKind m) . Sing kt -> Assoc kt m -> b -> b) -> b -> HMap m -> b
foldr f b (HMap m) = Map.foldrWithKey (\k v r -> withSomeSing k (g v r)) b m
  where g :: forall (kt :: KeyKind m) . SomeVal -> b -> Sing kt -> b
        g v r s = f s (unsafeCoerceVal @(Assoc kt m) v) r

-- TODO?: can be generalised for different mappings m1 and m2 (but might be confusing for a "union")
unionWith :: forall m . (HMapKey m) => (forall (kt :: KeyKind m) .  Sing kt -> Assoc kt m -> Assoc kt m -> Assoc kt m) -> HMap m -> HMap m -> HMap m
unionWith f (HMap m1) (HMap m2) = HMap $ Map.unionWithKey (\k v1 v2 -> withSomeSing k (g v1 v2)) m1 m2
  where g :: forall (kt :: KeyKind m) . SomeVal -> SomeVal -> Sing kt -> SomeVal
        g v1 v2 s = SomeVal $ f s (unsafeCoerceVal @(Assoc kt m) v1) (unsafeCoerceVal @(Assoc kt m) v2)

keys :: HMap m -> Set (KeyType m)
keys (HMap m) = Map.keysSet m

withKey :: HMapKey m => (forall (kt :: KeyKind m) . Sing kt -> r) -> KeyType m -> r
withKey f k = withSomeSing k f

size :: HMap m -> Int
size (HMap m) = Map.size m

null :: HMap m -> Bool
null (HMap m) = Map.null m

fromList :: forall m . HMapKey m => [BindingFrom m] -> HMap m
fromList = HMap . Map.fromList . Prelude.map sigmaToPair      
  where sigmaToPair :: BindingFrom m -> (KeyType m, SomeVal)
        sigmaToPair (s :&: v) = (fromSing s, SomeVal v)

toList :: forall m . HMapKey m => HMap m -> [BindingFrom m]
toList (HMap m) = Prelude.map (\(k, v) -> withKey (pairToSigma v) k) (Map.toList m)
  where pairToSigma :: forall (kt :: KeyKind m) . SomeVal -> Sing kt -> BindingFrom m
        pairToSigma v s = s :&: unsafeCoerceVal @(Assoc kt m) v


-- Other utility functions


-- | Construct a list of all keys in the hmap (at the type-level)
class AllKeys (m :: [kt :-> Type]) where   
   allKeys :: SingKind kt => [SomeSing kt]
instance AllKeys '[] where 
   allKeys = []
instance (SingI k, AllKeys r) => AllKeys (k ::-> v ': r) where 
   allKeys = toSing (demote @k) : allKeys @_ @r

-- | Call function f with each possible key in the HMap and 
-- return an HMap where each key is mapped to the result of 
-- the function
buildForAllKeys :: forall k (m :: [k :-> Type]) . (SingKind k, Ord (Demote k), AllKeys m) => (forall kt . Sing kt -> Maybe (Assoc kt m)) -> HMap m
buildForAllKeys f = foldl (\m k -> case k of SomeSing k' -> maybe m (flip (setWithSing k') m) (f k')) empty (allKeys @_ @m)

-- optionally, supporting these can be used for generic Eq/Semigroup/... instances
type family All k :: [k]
type ForAllOf k c = ForAllIn (All k) c
type family ForAllIn (t :: [k]) (c :: k ~> Constraint) :: Constraint where
  ForAllIn '[] c      = ()
  ForAllIn (k ': r) c = (c @@ k, ForAllIn r c)


-- | Provides evidence that constraint `c` is satisfied for a key type `t` of kind `k`.
--
-- Useful for stating that some constraint should hold for all keys in a mapping of an HMap
-- (which are always of the same key kind). Mostly used in polymorphic contexts when `m` 
-- isn't known. Otherwise the constraint does not need to be stated explicitly as the instance
-- can be resolved from the concrete type.
-- 
-- Example: 
--
-- @
-- data MyKey = IntKey | StringKey deriving (Ord, Eq)
-- genHKeys ''MyKey
-- 
-- showMap :: forall (m :: [MyKey :-> Type]) . ForAll MyKey (AtKey1 Show m) => HMap m -> HMap (MapWith (Const String) (Keys m)) 
-- showMap = map  @(Const String) @m  showIt
--    where showIt :: forall (k :: MyKey) . Sing k -> Assoc k m -> String
--          showIt sing v = withDict (for @MyKey @(AtKey1 Show m) sing) (show v)
-- @
class ForAll k c where
  for :: forall (t :: k) . Sing t -> Dict (c @@ t)

-- |  Run `f` with constraint `c` in scope (if constraint `c` can be solved for `k`)
withC :: forall {k} c t r . (ForAll k c) => (c @@ t => Sing t -> r) -> Sing t -> r
withC f s = withDict (for @k @c s) (f s)

-- | Same as 'withC' but does not pass key information to the function
withC_ :: forall {k} c t r . (ForAll k c) => (c @@ t => r) -> Sing t -> r
withC_ f = withC @c (const f)

-- | Same as 'withC' but passes key information implicitly using 'SingI'
withC_' :: forall {k} t c r . (ForAll k c, SingI t) => (c @@ t => r) -> r
withC_' f = withC @c (const f) (sing @t)

-- Eq instance
instance (HMapKey m, AllAtKey1 Eq m) => Eq (BindingFrom m) where 
  (k1 :&: v1) == (k2 :&: v2) = 
    case decideEquality k1 k2 of
      Just Refl -> withC_ @(AtKey1 Eq m) (v1 == v2) k1
      Nothing   -> False 
instance (HMapKey m, AllAtKey1 Eq m) => Eq (HMap m) where
  m1 == m2 = size m1 == size m2 && toList m1 == toList m2 

-- Ord instance
instance (HMapKey m, AllAtKey1 Eq m, AllAtKey1 Ord m) => Ord (BindingFrom m) where 
  (k1 :&: v1) `compare` (k2 :&: v2) = 
    case decideEquality k1 k2 of
      Just Refl -> withC_ @(AtKey1 Ord m) (compare v1 v2) k1
      Nothing   -> compare (fromSing k1) (fromSing k2)
instance (HMapKey m, AllAtKey1 Eq m, AllAtKey1 Ord m) => Ord (HMap m) where
  compare m1 m2 = compare (toList m1) (toList m2)


type ValueIsSemigroup m = AtKey1 Semigroup m
instance (HMapKey m, ForAll (KeyKind m) (ValueIsSemigroup m)) => Semigroup (HMap m) where
  (<>) = unionWith (withC_ @(ValueIsSemigroup m) (<>))

-- | Introduces trivial facts about the operations on the HMap which Haskell cannot figure out on its own.
type Facts f kt m = Assoc kt (MapWith f (Keys m)) ~ f @@ kt
withFacts :: forall f kt m r . (Facts f kt m => r) -> r
withFacts = withDict forced
   where forced :: Dict (Facts f kt m)
         forced = unsafeCoerce (Dict @())
