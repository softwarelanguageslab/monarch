{-# OPTIONS_GHC -Wno-orphans                #-}
{-# OPTIONS_GHC -Wno-missing-export-lists   #-}
{-# LANGUAGE UndecidableInstances           #-}
{-# LANGUAGE PolyKinds                      #-}

module Lattice.HMapLattice where

import Lattice.Class
import Lattice.Split 

import Data.Singletons
import Data.TypeLevel.HMap as HMap 
import Data.Maybe
import qualified Data.Set as Set 
import Lattice.Equal (EqualLattice(eql))
import Domain.Core.BoolDomain (BoolDomain, boolTop)
import Domain.Class (Domain(inject))

instance (HMapKey m, 
          ForAll (KeyKind m) (AtKey1 Joinable m)) 
          => 
          Joinable (HMap m) where
  join = unionWith (withC_ @(AtKey1 Joinable m) join)

instance BottomLattice (HMap m) where
   bottom = empty

instance (HMapKey m, 
          ForAll (KeyKind m) (AtKey1 Eq m),
          ForAll (KeyKind m) (AtKey1 BottomLattice m),
          ForAll (KeyKind m) (AtKey1 PartialOrder m),
          ForAll (KeyKind m) (AtKey1 Lattice m))
          => 
          PartialOrder (HMap m) where
  subsumes m1 m2 = size m2 <= size m1 && all (withKey $ withC @(AtKey1 Lattice m) subsumesAt) (keys m2)
      where subsumesAt :: forall kt . AtKey1 Lattice m @@ kt => Sing kt -> Bool
            subsumesAt Sing = subsumes (fromMaybe bottom (get @kt m1)) (fromJust (get @kt m2))

instance (HMapKey m, AllAtKey1 Eq m, AllAtKey1 Ord m) => SplitLattice (HMap m) where
  split = HMap.foldr (\k -> Set.insert . singletonWithSing k) Set.empty  

instance (ForAll (KeyKind m) (AtKey1 EqualLattice m), ForAll (KeyKind m) (AtKey1 Eq m), HMapKey m) => EqualLattice (HMap m) where
   eql a b 
      | a == bottom || b == bottom = bottom
      | HMap.isSingleton a && HMap.isSingleton b =
         joins $ HMap.mapList (HMap.withC @(AtKey1 EqualLattice m) check) a
      | otherwise = boolTop
     where check ::  forall (kt :: KeyKind m) b . (BoolDomain b, EqualLattice (Assoc kt m) )=> Sing kt -> Assoc kt m -> b
           check Sing v = maybe (inject False) (eql v) (HMap.get @kt b)

containsType :: (HMapKey m, BoolDomain b) => KeyType m -> HMap m-> b
containsType k = check . HMap.keys 
   where check keySet
            | keySet == Set.empty  = bottom
            | Set.size keySet == 1 && k `Set.member` keySet = inject True
            | k `Set.member` keySet = boolTop
            | otherwise = inject False
