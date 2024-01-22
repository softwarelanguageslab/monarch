{-# LANGUAGE PolyKinds              #-}
{-# LANGUAGE AllowAmbiguousTypes   #-}
{-# LANGUAGE UndecidableInstances   #-}

module Domain.Core.HMapDomain.Class (HMapDomain(..)) where

import Lattice hiding (empty, insert)
import Domain.Core.BoolDomain

import Data.TypeLevel.HMap hiding (empty)

import Data.Kind (Type)
import Data.Singletons

-- | An abstract representation of an HMap
class (JoinLattice v, ForAll k (AtKey1 JoinLattice m)) => HMapDomain v (m :: [k:->Type]) | v -> m where
    empty :: v
    member :: forall (kt :: k) b . (BoolDomain b) => Sing kt -> v -> b
    lookup :: forall kt . Sing kt -> v -> Maybe (Assoc kt m) 
    insert :: forall kt . Sing kt -> Assoc kt m -> v -> v 
    singleton :: forall kt . Sing kt -> Assoc kt m -> v  
    singleton k v = insert k v empty 



