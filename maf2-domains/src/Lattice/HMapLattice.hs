{-# OPTIONS_GHC -Wno-orphans                #-}
{-# OPTIONS_GHC -Wno-missing-export-lists   #-}
{-# LANGUAGE UndecidableInstances           #-}
{-# LANGUAGE PolyKinds                      #-}

module Lattice.HMapLattice where

import Lattice.Class
import Data.TypeLevel.HMap

instance (HMapKey m, 
          ForAll (KeyKind m) (AtKey (InstanceOf Joinable) m)) 
          => 
          Joinable (HMap m) where
  join = unionWith (withC_ @(AtKey (InstanceOf Joinable) m) join)

instance (HMapKey m, 
          ForAll (KeyKind m) (AtKey (InstanceOf Eq) m),
          ForAll (KeyKind m) (AtKey (InstanceOf Joinable) m)) 
          => 
          JoinLattice (HMap m) where
  bottom = empty 
