{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE StandaloneKindSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
module Domain.Erlang.Modular(ErlValue, EnvCfg, IntCfg, PidCfg) where

import Data.TypeLevel.HMap
import Syntax.Erlang
import Lattice
import Domain.Core
import Domain (Domain(..))
import Domain.Erlang.Class
import Control.Monad.Join

import Data.Kind
import Data.Set (Set)
import qualified Data.Set as Set

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

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Clo c = (EnvCfg c, Expr)

------------------------------------------------------------
-- Value
------------------------------------------------------------

data ValueKey = CloKey
              | IntKey
              | PidKey
              | BooKey
              deriving (Eq, Ord)

$(genHKeys ''ValueKey)

type ErlMapping c = '[
      CloKey ::-> Set (Clo c),
      IntKey ::-> IntCfg c,
      PidKey ::-> Set (PidCfg c),
      BooKey ::-> BooCfg c
   ]


type IsErlValue c =
   (AllAtKey1 JoinLattice (ErlMapping c),
    AllAtKey1 Eq (ErlMapping c),
    AllAtKey1 Joinable    (ErlMapping c),
    KeyIs1 IntDomain  (ErlMapping c) IntKey,
    KeyIs1 BoolDomain (ErlMapping c) BooKey)

newtype ErlValue c = ErlValue { getValue :: HMap (ErlMapping c) }

deriving instance (IsErlValue c) => Joinable (ErlValue c)
deriving instance (IsErlValue c) => Eq (ErlValue c)
deriving instance (IsErlValue c) => JoinLattice (ErlValue c)

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
   isZero = undefined
   random = undefined
   plus   = undefined
   minus  = undefined
   times  = undefined
   div    = undefined
   expt   = undefined
   eq     = undefined
   lt     = undefined

------------------------------------------------------------
-- Erlang Domain
------------------------------------------------------------

instance ErlangDomain (ErlValue c) where
   type Pid (ErlValue c) = PidCfg c
   type Env (ErlValue c) = EnvCfg c

   pid = ErlValue . singleton @PidKey . Set.singleton
   clo = ErlValue . singleton @CloKey . Set.singleton
   pids f = mjoins . Prelude.map f . maybe [] Set.toList . get @PidKey . getValue

   clos f = mjoins . Prelude.map f . maybe [] Set.toList . get @CloKey . getValue
