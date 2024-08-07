{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE StandaloneKindSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
module Domain.Erlang.Modular(ErlValue, EnvCfg, IntCfg, PidCfg) where

import Data.TypeLevel.HMap hiding (map)
import qualified Data.TypeLevel.HMap as HMap
import Syntax.Erlang
import Lattice
import Domain.Core
import Domain (Domain(..))
import Domain.Erlang.Class
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.Monad.AbstractM

import Data.Void
import Data.Singletons.Sigma
import Data.Kind
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Maybe (isJust)

------------------------------------------------------------
-- Configuration
------------------------------------------------------------

-- | Type of environment
type family EnvCfg (c :: k) :: Type
-- | Type of abstract integers
type family IntCfg (c :: k) :: Type
-- | Type of concrete PIDs, usually the locations
-- from the spawn expressions and an optional context
type family PidCfg (c :: k) :: Type
-- | Type of abstract booleans
type family BooCfg (c :: k) :: Type
-- | Type of abstract symbols
type family SymCfg (c :: k) :: Type

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Clo c = (EnvCfg c, [Clause])

------------------------------------------------------------
-- Utilities
------------------------------------------------------------

binop :: forall mp m . (AllAtKey1 Eq mp, AllAtKey1 Joinable mp, AllAtKey1 Lattice mp, AllAtKey1 BottomLattice mp, AllAtKey1 PartialOrder mp, HMapKey mp, AbstractM m)
      => (BindingFrom mp -> BindingFrom mp -> m (HMap mp))
      -> HMap mp -> HMap mp -> m (HMap mp)
binop f m1 m2 = mjoins (HMap.mapList select m1)
   where select' :: forall (kt :: KeyKind mp) . BindingFrom mp -> Sing kt -> Assoc kt mp -> m (HMap mp)
         select' b s v = f b (s :&: v)
         select  :: forall (kt :: KeyKind mp) . Sing kt -> Assoc kt mp -> m (HMap mp)
         select s v = mjoins (HMap.mapList (select' (s :&: v)) m2)

------------------------------------------------------------
-- Value
------------------------------------------------------------

data ValueKey = CloKey
              | IntKey
              | PidKey
              | BooKey
              | SymKey
              | NilKey
              deriving (Eq, Ord)

$(genHKeys ''ValueKey)

type ErlMapping c = '[
      CloKey ::-> Set (Clo c),
      IntKey ::-> IntCfg c,
      PidKey ::-> Set (PidCfg c),
      BooKey ::-> BooCfg c,
      SymKey ::-> Set String,
      NilKey ::-> ()
   ]


type IsErlValue c =
   (AllAtKey1 Lattice (ErlMapping c),
    AllAtKey1 Eq (ErlMapping c),
    AllAtKey1 Joinable      (ErlMapping c),
    AllAtKey1 BottomLattice (ErlMapping c),
    AllAtKey1 PartialOrder  (ErlMapping c),
    KeyIs1 IntDomain  (ErlMapping c) IntKey,
    KeyIs1 BoolDomain (ErlMapping c) BooKey,
    Boo (Assoc IntKey (ErlMapping c)) ~ Assoc BooKey (ErlMapping c))

newtype ErlValue c = ErlValue { getValue :: HMap (ErlMapping c) }

deriving instance (IsErlValue c) => Joinable (ErlValue c)
deriving instance (IsErlValue c) => Eq (ErlValue c)
deriving instance (IsErlValue c) => BottomLattice (ErlValue c)

------------------------------------------------------------
-- Domain instances
------------------------------------------------------------

instance (IsErlValue c) => Domain (ErlValue c) Bool where
   inject = ErlValue . singleton @BooKey . inject

instance (IsErlValue c) => BoolDomain (ErlValue c)

instance (IsErlValue c) => Domain (ErlValue c) Integer where
   inject = ErlValue . singleton @IntKey . inject

instance (IsErlValue c) => NumberDomain (ErlValue c) where
   type Boo (ErlValue c) = ErlValue c
   isZero = mjoins . HMap.mapList select . getValue
      where select :: forall m (kt :: ValueKey) . AbstractM m => Sing kt -> Assoc kt (ErlMapping c) -> m (ErlValue c)
            select SIntKey i = ErlValue <$> (singleton @BooKey <$> isZero i)
            select _ _ = escape WrongType
   random = mjoins . HMap.mapList select . getValue
      where select :: forall m (kt :: ValueKey) . AbstractM m => Sing kt -> Assoc kt (ErlMapping c) -> m (ErlValue c)
            select SIntKey i = ErlValue <$> (singleton @IntKey <$> random i)
            select _ _ = escape WrongType
   plus a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @IntKey <$> plus x y
            apply _ _ = escape WrongType
   minus a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @IntKey <$> minus x y
            apply _ _ = escape WrongType
   times a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @IntKey <$> times x y
            apply _ _ = escape WrongType
   div a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @IntKey <$> Domain.Core.div x y
            apply _ _ = escape WrongType
   expt a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @IntKey <$> Domain.Core.expt x y
            apply _ _ = escape WrongType
   eq a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @BooKey <$> Domain.Core.eq x y
            apply _ _ = escape WrongType
   lt a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @BooKey <$> Domain.Core.lt x y
            apply _ _ = escape WrongType

instance (IsErlValue c) => IntDomain (ErlValue c) where
   type Str (ErlValue c) = Void
   type Rea (ErlValue c) = Void
   toReal = error "no reals available"
   toString = error "no strings available"
   quotient a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @IntKey <$> Domain.Core.quotient x y
            apply _ _ = escape WrongType
   modulo a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @IntKey <$> Domain.Core.modulo x y
            apply _ _ = escape WrongType
   remainder a b = ErlValue <$> binop apply (getValue a) (getValue b)
      where apply :: forall m . AbstractM m => BindingFrom (ErlMapping c) -> BindingFrom (ErlMapping c) -> m (HMap (ErlMapping c))
            apply (SIntKey :&: x) (SIntKey :&: y) = singleton @IntKey <$> Domain.Core.remainder x y
            apply _ _ = escape WrongType

------------------------------------------------------------
-- Erlang Domain
------------------------------------------------------------

instance (IsErlValue c) => ErlangDomain (ErlValue c) where
   type Pid (ErlValue c) = PidCfg c
   type Env (ErlValue c) = EnvCfg c

   pid    = ErlValue . singleton @PidKey . Set.singleton
   clo    = ErlValue . singleton @CloKey . Set.singleton
   symbol = ErlValue . singleton @SymKey . Set.singleton
   nil    = ErlValue $ singleton @NilKey $ ()

   isNil = isJust . get @NilKey . getValue

   pids f = mjoins . Prelude.map f . maybe [] Set.toList . get @PidKey . getValue

   clos f = mjoins . Prelude.map f . maybe [] Set.toList . get @CloKey . getValue

   symbols f = mjoins . Prelude.map f . maybe [] Set.toList . get @SymKey . getValue
   
