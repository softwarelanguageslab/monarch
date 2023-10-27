{-# LANGUAGE UndecidableInstances, PolyKinds, FlexibleInstances, FlexibleContexts #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Data.TypeLevel.List(Has, NoDuplicates) where

import GHC.TypeError


-- | Class that has an instance when the given type level list `l`
--  contains the given value `v`
class Has (l :: [k]) (v :: k)
instance {-# OVERLAPPABLE #-} (Has xs x) => Has (y ': xs) x
instance {-# OVERLAPPING #-} Has (x ': xs) x
instance TypeError (Text "value not in list") => Has '[] v

-- | Predicate that is satisfied when the gien list does not contain duplicates
class NoDuplicates (l :: [k]) 
instance NoDuplicates l -- TODO: implement
