{-# LANGUAGE UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}

module Analysis.Scheme where

import Prelude hiding (iterate, exp, lookup)

import Analysis.Scheme.Primitives hiding (run)

import Syntax.Scheme
import Domain.Scheme hiding (Exp, Env)
import qualified Domain.Scheme as S

import Data.Set (Set)
import Data.Map (Map)
import Data.Functor.Identity
import Data.Function ((&))
import Control.Monad.DomainError (DomainError)
import Control.Monad.Escape
import Lattice.Equal (EqualLattice)
import Analysis.Monad.Stack (MonadStack)
import Analysis.Monad.Cache
import Analysis.Monad.IntraAnalysis
import Analysis.Scheme.Semantics (eval)
import Data.Kind (Constraint)
import Analysis.Monad.DependencyTracking
import Analysis.Monad.Allocation
import Syntax (Ide)
import Analysis.Monad.Fix (runFixT, lfp)
import Analysis.Monad hiding (eval)
import qualified  Analysis.Scheme.Primitives as P
import Data.Typeable
import qualified Domain.Scheme.Store as Store
import Domain.Scheme.Store (ForAllStored, SchemeStore(..))
import qualified Data.Map as Map

-----------------------------------------
-- Shorthands
-----------------------------------------

type Program  = Exp
type Cmp      = Key (IntraT Identity) Exp
type Res   v  = Val (IntraT Identity) v
type K        = [Exp]
type AnlRes v = (Store.SchemeStore Exp K v, Map Cmp (Res v))

-- Addresses
type VarAdr      = Store.VarAdr K
type PaiAdr      = Store.PaiAdr Exp K 
type VecAdr      = Store.VecAdr Exp K 
type StrAdr      = Store.StrAdr Exp K

type Env      = Map String VarAdr
type VarSto v = Map VarAdr v
type PaiSto v = Map PaiAdr (PaiDom v)
type VecSto v = Map VecAdr (VecDom v) 
type StrSto v = Map StrAdr (StrDom v)

-----------------------------------------
-- Syntax 
-----------------------------------------

-- | Left-associative binary operator for the (,) function
(<+>) :: a -> b -> (a, b)
(<+>) = (,)
infixl 6 <+>

-- | Define the same operator on a type level
type (<+>) a b = (,) a b

-- | ... and define the same operator as a pattern
pattern (::*::) :: a -> b -> (a, b)
pattern (::*::) a b = (,) a b

-- | .. same for its type
type (::*::) a b = (a, b)

-----------------------------------------
-- Store & Environment
-----------------------------------------

-- | The initial environment used by 
-- the analysis
analysisEnv :: Env
analysisEnv = initialEnv Store.PrrAdr

-----------------------------------------
-- Analysis
-----------------------------------------

type IntraT m = MonadStack '[
                  MayEscapeT (Set DomainError),
                  AllocT Ide K VarAdr, 
                  AllocT Exp K PaiAdr, 
                  AllocT Exp K VecAdr,
                  AllocT Exp K StrAdr,
                  EnvT Env,
                  CtxT K,
                  JoinT,
                  CacheT
               ] m


type InterAnalysisM v m =
   (WorkListM m Cmp,
    StoreM VarAdr v m,
    StoreM PaiAdr (PaiDom v) m,
    StoreM VecAdr (VecDom v) m,
    StoreM StrAdr (StrDom v) m,
    ComponentTrackingM m Cmp,
    MonadDependencyTracking Cmp VarAdr m,
    MonadDependencyTracking Cmp PaiAdr m,
    MonadDependencyTracking Cmp VecAdr m,
    MonadDependencyTracking Cmp StrAdr m,
    MonadDependencyTracking Cmp Cmp m,
    MapM Cmp (Res v) m,
    SchemeDomain v) :: Constraint

----------------------------------------
-- Analysis
-----------------------------------------

intra :: forall m v . (InstSchemeDomain v, InterAnalysisM v m) => Cmp -> m ()
intra cmp =  runFixT @(IntraT (IntraAnalysisT Cmp m)) eval cmp
           & runAlloc Store.VrrAdr
           & runAlloc Store.PaiAdr
           & runAlloc Store.VecAdr
           & runAlloc Store.StrAdr
           & runIntraAnalysis cmp

inter :: forall v m .  (InstSchemeDomain v, InterAnalysisM v m) => Exp -> m ()
inter exp = lfp intra ((exp, analysisEnv), [])

analyze :: forall v . (InstSchemeDomain v) =>  Exp -> AnlRes v
analyze exp = let (() ::*:: varSto ::*:: paiSto ::*:: vecSto ::*:: strSto ::*:: resMap) =
                       inter @v exp
                     & runStoreT @(VarSto v) @VarAdr (P.initialSto analysisEnv)
                     & runStoreT @(PaiSto v) @PaiAdr Map.empty
                     & runStoreT @(VecSto v) @VecAdr Map.empty
                     & runStoreT @(StrSto v) @StrAdr Map.empty
                     & runWithMapping @Cmp @(Res v)
                     & runWithComponentTracking @Cmp
                     & runWithDependencyTracking @Cmp @Cmp
                     & runWithDependencyTracking @Cmp @VarAdr
                     & runWithDependencyTracking @Cmp @PaiAdr
                     & runWithDependencyTracking @Cmp @VecAdr
                     & runWithDependencyTracking @Cmp @StrAdr
                     & runWithWorkList @(Set Cmp)
                     & runIdentity
              in (SchemeStore paiSto strSto vecSto varSto, resMap)

-- | Scheme Domain constraints
type InstSchemeDomain v = (
          Typeable v,
          Show v,
          SchemeValue v,
          -- SchemeConstraints v Exp Env,
          EqualLattice v,
          S.Env v ~ Env,
          VarDom v ~ v,
          Ord K,
          Ord v,
          VaAdr v ~ VarAdr, 
          PaAdr v ~ PaiAdr,
          StAdr v ~ StrAdr,
          VeAdr v ~ VecAdr,
          S.Exp v ~ Exp,
          ForAllStored Ord v,
          ForAllStored Show v,
          ForAllStored Eq v)

