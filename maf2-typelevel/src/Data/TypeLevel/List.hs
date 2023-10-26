{-# LANGUAGE UndecidableInstances, PolyKinds, FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Data.TypeLevel.List(Has) where

import GHC.TypeError

class Has (l :: [k]) (v :: k)
instance {-# OVERLAPPABLE #-} (Has xs x) => Has (y ': xs) x
instance {-# OVERLAPPING #-} Has (x ': xs) x
instance TypeError (Text "value not in list") => Has '[] v

