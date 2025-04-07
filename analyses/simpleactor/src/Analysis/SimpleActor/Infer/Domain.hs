{-# LANGUAGE DeriveGeneric, UndecidableInstances #-}
-- | Abstract domain used in the "Infer" pre-analysis.
module Analysis.SimpleActor.Infer.Domain(
    -- * Accessors
    getPrimitives,
    getClosures,
    getActors,
    getValue,
    -- * Injection
    injectClo,
    injectPrim,
    injectActor,
    topValue,
    -- * Abstract value representation
    V(..),
    MB,
    M,
    ActorTag(..),
    SActorTag(..)   
  ) where

import Analysis.SimpleActor.Infer.Common
import qualified Data.List as List
import Data.TypeLevel.HMap hiding (map)
import qualified Data.TypeLevel.HMap as HMap
import Data.Singletons
import Domain.Class
import Domain.Core.BoolDomain.Class
import GHC.Generics
import Lattice.Class (Joinable, PartialOrder, TopLattice, BottomLattice)
import qualified Lattice.Class as L
import RIO
import qualified RIO.Set as Set
import qualified RIO.Map as Map
import Syntax.AST
import Text.Printf


-- | Tags of the product in the actor value
data ActorTag = CloTag -- ^ the value is a closure
              | PrmTag -- ^ the value is a primitive
              | ActTag -- ^ the value is an actor reference
               deriving (Ord, Eq, Show, Generic)

instance NFData ActorTag

$(genHKeys ''ActorTag)

-- | Mapping for the abstract actor value product
type M = '[ CloTag ::-> Set (Exp, Env), PrmTag ::-> Set String, ActTag ::-> Set Actor ]

-- | Very crude approximation of actor values
newtype Value = Value { getValue :: HMap M } deriving (Ord, Eq, Joinable, PartialOrder, BottomLattice, Generic)

instance NFData Value

instance (ForAll ActorTag (AtKey1 Show M)) => Show Value where
   show (Value hm) = List.intercalate "," $ map showElement $ HMap.toList hm
      where showElement :: BindingFrom M -> String
            showElement (key :&: value) =
               printf "%s -> %s" (show $ fromSing key) (withC_ @(AtKey1 Show M) (show value) key)

-- | Extract the set of primitives embedded in the value
getPrimitives :: Value -> Set String
getPrimitives = fromMaybe Set.empty . HMap.get @PrmTag . getValue

-- | Extract the set of closures embedded in the value
getClosures :: Value -> Set (Exp, Env)
getClosures = fromMaybe Set.empty . HMap.get @CloTag . getValue


-- |  Extract the set of actor references from the value
getActors :: Value -> Set Actor
getActors = fromMaybe Set.empty . HMap.get @ActTag . getValue

-- | Inject a closure into the abstract domain
injectClo :: (Exp, Env) -> Value
injectClo = Value . HMap.singleton @CloTag  . Set.singleton

-- | Inject a primitive into the abstract domain
injectPrim :: String -> Value
injectPrim = Value . HMap.singleton @PrmTag . Set.singleton

-- | Inject an actor in the abstract value
injectActor :: Actor -> Value
injectActor = Value . HMap.singleton @ActTag . Set.singleton


-- | Type to indicate that the actor value might be something else,
-- with a fallback of which actor values it might contain.
data V = ConstantValue { values :: Value } | TopValue { values :: Value } deriving (Ord, Eq, Show, Generic)

instance NFData V

instance Joinable V where
  join (TopValue v1) (TopValue v2) = TopValue $ L.join v1 v2
  join (ConstantValue v1) (ConstantValue v2) = ConstantValue $ L.join v1 v2
  join (TopValue v1) (ConstantValue v2) = TopValue (L.join v1 v2)
  join (ConstantValue v1) (TopValue v2) = TopValue (L.join v1 v2)

instance PartialOrder V where
  leq _ (TopValue _) = True
  leq (ConstantValue v1) (ConstantValue v2) = L.leq v1 v2
  leq _ _ = False

instance TopLattice V where
  top = TopValue L.bottom

instance Domain V Bool where
  inject = const $ TopValue L.bottom

-- | For simplicity the 'BoolDomain' implementation for 'V' is always top
instance BoolDomain V where
  boolTop = TopValue L.bottom
  not = const boolTop
  and = const $ const boolTop
  or  = const $ const boolTop

-- | Converts any value into a top value, retaining the possible
-- abstract values that the top value could take.
topValue :: V -> V
topValue (ConstantValue v) = TopValue v
topValue v = v

-- | An approximation of actors mailboxes
type MB = V

