{-# LANGUAGE PolyKinds              #-}
{-# LANGUAGE AllowAmbiguousTypes    #-}
{-# LANGUAGE UndecidableInstances   #-}

module Domain.Core.HMapDomain.HMapAbs (HMapAbs(..)) where

import Lattice 
import Domain.Core.BoolDomain
import Domain.Core.HMapDomain.Class 

import Data.TypeLevel.HMap 
import qualified Data.TypeLevel.HMap as HMap
import qualified Lattice.ReversePowerSetLattice as RSet

import Data.Kind (Type)
import Data.Singletons

-- | HMapDomain instance
-- TODO: should also have an explicit bottom!
newtype HMapAbs m = HMapAbs (HMap m, ReversePowerSet (KeyType m))
    
deriving instance (HMapKey m, ForAll (KeyKind m) (AtKey1 Eq m)) => Eq (HMapAbs m)
deriving instance (HMapKey m, ForAll (KeyKind m) (AtKey1 Joinable m)) => Joinable (HMapAbs m)
deriving instance (HMapKey m) => BottomLattice (HMapAbs m)

instance (HMapKey m, 
          ForAll k (AtKey1 Eq m), 
          ForAll k (AtKey1 Joinable m), 
          ForAll k (AtKey1 PartialOrder m)) 
        => HMapDomain (HMapAbs m) (m :: [k:->Type]) where

    empty :: HMapAbs m
    empty = HMapAbs (HMap.empty, RSet.empty)

    member :: forall (kt :: k) b . (BoolDomain b) => Sing kt -> HMapAbs m -> b
    member s (HMapAbs (hmap, rset))
        | RSet.contains (fromSing s) rset = true
        | HMap.memberWithSing s hmap = boolTop
        | otherwise = false  

    lookup :: forall kt . Sing kt -> HMapAbs m -> Maybe (Assoc kt m) 
    lookup s (HMapAbs (hmap, _)) = HMap.getWithSing s hmap

    insert :: forall kt . Sing kt -> Assoc kt m -> HMapAbs m -> HMapAbs m
    insert s v (HMapAbs (hmap, rset)) = HMapAbs (HMap.setWithSing s v hmap, RSet.insert (fromSing s) rset)    

