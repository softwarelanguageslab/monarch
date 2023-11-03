{-# LANGUAGE UndecidableInstances, PolyKinds, FlexibleInstances, FlexibleContexts #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Data.TypeLevel.List(Has, NoDuplicates) where

import GHC.TypeError



-- | Class that has an instance when the given type level list `l`
--  contains the given value `v`
class Has (l :: [k]) (v :: k)
instance (Has' xs x xs) => Has xs x

-- | Auxilary class for `Has` that actually implements 
-- the recursion but provides better error messages
-- by keeping the original list in scope.
class Has' (l :: [k]) (v :: k) (l' :: [k])
instance {-# OVERLAPPABLE #-} (Has' xs x ks) => Has' (y ': xs) x ks
instance {-# OVERLAPPING #-} Has' (x ': xs) x ks
instance TypeError (Text "value " :<>: ShowType v :<>: Text " not in list " :<>: ShowType ks) => Has' '[] v ks

-- | Predicate that is satisfied when the gien list does not contain duplicates
class NoDuplicates (l :: [k]) 
instance NoDuplicates l -- TODO: implement
