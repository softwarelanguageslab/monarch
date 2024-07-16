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

instance (HMapKey m, 
          ForAll (KeyKind m) (AtKey1 Joinable m)) 
          => 
          Joinable (HMap m) where
  join = unionWith (withC_ @(AtKey1 Joinable m) join)

instance (HMapKey m, 
          ForAll (KeyKind m) (AtKey1 Eq m),
          ForAll (KeyKind m) (AtKey1 Joinable m),
          ForAll (KeyKind m) (AtKey1 JoinLattice m)) 
          => 
          JoinLattice (HMap m) where
  bottom         = empty 
  subsumes m1 m2 = size m2 <= size m1 && all (withKey $ withC @(AtKey1 JoinLattice m) subsumesAt) (keys m2)
      where subsumesAt :: forall kt . AtKey1 JoinLattice m @@ kt => Sing kt -> Bool
            subsumesAt Sing = subsumes (fromMaybe bottom (get @kt m1)) (fromJust (get @kt m2))

instance (HMapKey m, AllAtKey1 Eq m, AllAtKey1 Ord m) => SplitLattice (HMap m) where
  split = HMap.foldr (\k -> Set.insert . singletonWithSing k) Set.empty  