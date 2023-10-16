{-# LANGUAGE UndecidableInstances, KindSignatures, FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# OPTIONS_GHC -Wno-unticked-promoted-constructors #-}
module Data.TypeLevel.List(Has) where

import GHC.TypeLits
import Data.Kind

class Has (l :: [Type]) e 
instance {-# OVERLAPPING #-} Has (x ': xs) x
instance Has xs x => Has (y ': xs) x
instance TypeError (Text "Has: failed to find type " :<>: ShowType x :<>: Text " in typelevel list") => Has '[] x

