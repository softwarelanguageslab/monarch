{-# LANGUAGE PolyKinds              #-}
{-# LANGUAGE AllowAmbiguousTypes    #-}
{-# LANGUAGE UndecidableInstances   #-}

module Domain.Core.HMapDomain.Class (HMapDomain(..)) where

import Lattice hiding (empty, insert)
import Domain.Core.BoolDomain

import Data.TypeLevel.HMap hiding (empty)

import Data.Kind (Type)
import Data.Singletons

-- | An abstract representation of an HMap
class (Joinable v, PartialOrder v) => HMapDomain v (m :: k ~> Type) | v -> m where
    empty :: v
    member :: forall (kt :: k) b . (BoolDomain b) => Sing kt -> v -> b
    lookup :: forall kt . Sing kt -> v -> Maybe (m @@ kt) 
    insert :: forall kt . Sing kt -> m @@ kt -> v -> v 
    singleton :: forall kt . Sing kt -> m @@ kt -> v  
    singleton k v = insert k v empty 
    from :: [Sigma k m] -> v
    from = Prelude.foldr (\(s :&: v) -> insert s v) empty



