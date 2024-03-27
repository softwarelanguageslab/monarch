{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
-- | An implementation of 'Domain.Scheme.Actors.Class.ActorDomain' for 'Domain.Scheme.Modular.SchemeVal'
module Domain.Scheme.Actors.Modular where

import Domain.Scheme.Actors.Class
import Domain.Scheme.Modular
import Data.TypeLevel.HMap (Assoc)
import qualified Data.TypeLevel.HMap as HMap
import Control.Monad.Join

import Data.Maybe
import qualified Data.Set as Set
import Data.Singletons
import Control.Monad.AbstractM
import Lattice.Class (JoinLattice)
import Control.Monad.Escape
import Control.Monad.DomainError

instance (IsSchemeValue m) => ActorDomain (SchemeVal m) where
   type ARef (SchemeVal m) = (Assoc PidConf m)

   -- actor references
   aref  = SchemeVal . HMap.singleton @PidKey . Set.singleton
   arefs :: forall schemeM a . (AbstractM schemeM, JoinLattice a) => (ARef (SchemeVal m) -> schemeM a) -> SchemeVal m -> schemeM a
   arefs f = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values m) -> schemeM a
            select SPidKey vs = mjoins (fmap f (Set.toList vs))
            select _ _ = escape WrongType
   arefs'     = fromMaybe Set.empty . HMap.get @PidKey . getSchemeVal
   isActorRef = hasType PidKey

   -- behaviors
   beh = SchemeVal . HMap.singleton @BehKey . Set.singleton
   withBehs :: forall schemeM a . (AbstractM schemeM, JoinLattice a) => (Beh m -> schemeM a) -> SchemeVal m -> schemeM a
   withBehs f = mjoins . HMap.mapList select . getSchemeVal 
      where select :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values m) -> schemeM a
            select SBehKey v = mjoins (fmap f (Set.toList v))
            select _ _ = escape WrongType
   
