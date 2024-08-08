{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}

module Domain.SimpleActor.Modular where

import Data.Maybe
import Data.Set (Set)
import qualified Data.Set as Set
import Data.TypeLevel.HMap hiding (map)
import Data.TypeLevel.HMap.Singletons
import qualified Data.TypeLevel.HMap as HMap
import Domain.Class (Domain (..))
import Domain.Core (BoolDomain (..), IntDomain (..), NumberDomain (..))
import Domain.SimpleActor.Class
import Lattice (EqualLattice, containsType, contains)
import Lattice.Class
import Lattice.ConstantPropagationLattice (CP)
import Lattice.HMapLattice ()
import Syntax.AST
import Data.List (intercalate)
import Text.Printf (printf)

data SimpleActorKey
  = PaiKey
  | CloKey
  | PrimKey
  | ARefKey
  | BooKey
  | NumKey
  | SymKey
  | NilKey
  deriving (Eq, Ord, Show)

type SimpleActorMap v =
  '[ PaiKey ::-> (v, v),
     CloKey ::-> Set (Exp, Env v),
     PrimKey ::-> Set String,
     ARefKey ::-> Set (ARef v),
     BooKey ::-> CP Bool,
     NumKey ::-> CP Integer,
     NilKey ::-> (),
     SymKey ::-> Set String
   ]

$(genHKeys ''SimpleActorKey)

newtype SimpleActorValue = SimpleActorValue { getSimpleActorValue :: HMap (SimpleActorMap SimpleActorValue) }
  deriving (Eq, Ord, BottomLattice, PartialOrder, Joinable, EqualLattice)

------------------------------------------------------------
-- Show instance
------------------------------------------------------------

-- Show instance
instance (ForAll SimpleActorKey (AtKey1 Show (SimpleActorMap SimpleActorValue))) => Show SimpleActorValue where
   show (SimpleActorValue hm) = intercalate "," $ map showElement $ HMap.toList hm
      where showElement :: BindingFrom (SimpleActorMap SimpleActorValue) -> String
            showElement (key :&: value) =
               printf "%s ↦ %s" (show $ fromSing key) (withC_ @(AtKey1 Show (SimpleActorMap SimpleActorValue)) (show value) key)


------------------------------------------------------------
-- BoolDomain instance
------------------------------------------------------------

instance Domain SimpleActorValue Bool where
  inject = SimpleActorValue . HMap.singleton @BooKey . inject

instance BoolDomain SimpleActorValue

------------------------------------------------------------
-- NumberDomain instance
------------------------------------------------------------

instance NumberDomain SimpleActorValue where
   type Boo SimpleActorValue = SimpleActorValue
   
instance Domain SimpleActorValue Integer where
  inject = SimpleActorValue . HMap.singleton @NumKey . inject

instance IntDomain SimpleActorValue


------------------------------------------------------------
-- The actual domain for our analyses
------------------------------------------------------------


-- | Get a particular element from the product and if it does not exist
-- return bottom
gets :: forall (k :: SimpleActorKey) . (SingI k, BottomLattice (Assoc k (SimpleActorMap SimpleActorValue))) => SimpleActorValue -> Assoc k (SimpleActorMap SimpleActorValue)
gets = fromMaybe bottom . HMap.get @k . getSimpleActorValue

instance ValueDomain SimpleActorValue where
  type Adr SimpleActorValue = Ide
  type ARef SimpleActorValue = Span

  pair a b = SimpleActorValue $ HMap.singleton @PaiKey (a, b)
  closure e = SimpleActorValue . HMap.singleton @CloKey . Set.singleton . (e,)
  primitive = SimpleActorValue . HMap.singleton @PrimKey . Set.singleton
  actorRef  = SimpleActorValue . HMap.singleton @ARefKey . Set.singleton
  symbol    = SimpleActorValue . HMap.singleton @SymKey . Set.singleton
  label     = symbol . getLabelName
  nil       = SimpleActorValue $ HMap.singleton @NilKey ()

  closures   = gets @CloKey
  primitives = gets @PrimKey
  actorRefs  = gets @ARefKey
  pairs      = Set.singleton . gets @PaiKey
  labels     = Set.map Label . gets @SymKey

  isClosure     = return . containsType CloKey . getSimpleActorValue
  isPrimitive   = return . containsType PrimKey . getSimpleActorValue
  isActorRef    = return . containsType ARefKey . getSimpleActorValue
  isPair        = return . containsType PaiKey . getSimpleActorValue
  isBoolean     = return . containsType BooKey . getSimpleActorValue
  isNumber      = return . containsType NumKey . getSimpleActorValue
  isSymbol      = return . containsType SymKey . getSimpleActorValue

