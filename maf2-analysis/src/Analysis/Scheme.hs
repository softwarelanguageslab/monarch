{-# LANGUAGE UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Analysis.Scheme where

import Prelude hiding (iterate, exp, lookup)

import Analysis.Scheme.Primitives hiding (run)

import Syntax.Scheme
import Domain.Scheme hiding (Exp, Env, Adr)
import Domain.Scheme.Store hiding (Env)
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
import Debug.Trace (traceShow)
import Data.Typeable
import Lattice.Class (BottomLattice)

-----------------------------------------
-- Shorthands
-----------------------------------------

type Program  = Exp
type Cmp      = Key (IntraT Identity) Exp
type Res   v  = Val (IntraT Identity) v
type K        = [Exp]
type Env      = Map String Adr
type Sto   v  = Map Adr (StoreVal v)
type AnlRes v = (Sto v, Map Cmp (Res v))
type Adr      = SchemeAdr Exp K


-----------------------------------------
-- Store & Environment
-----------------------------------------

-- | The initial environment used by 
-- the analysis
analysisEnv :: Env
analysisEnv = initialEnv PrrAdr

-----------------------------------------
-- Analysis
-----------------------------------------

type IntraT m = MonadStack '[
                  MayEscapeT (Set DomainError),
                  AllocT Ide K Adr,
                  AllocT Exp K Adr,
                  EnvT Env,
                  CtxT K,
                  JoinT,
                  CacheT
               ] m


type InterAnalysisM v m =
   (WorkListM m Cmp,
    StoreM Adr (StoreVal v) m,
    ComponentTrackingM m Cmp,
    MonadDependencyTracking Cmp Adr m,
    MonadDependencyTracking Cmp Cmp m,
    MapM Cmp (Res v) m,
    SchemeDomain v) :: Constraint

----------------------------------------
-- Analysis
-----------------------------------------

intra :: forall m v var . (InstSchemeDomain var v, InterAnalysisM v m) => Cmp -> m ()
intra cmp =  runFixT @(IntraT (IntraAnalysisT Cmp m)) eval cmp
           & runAlloc VarAdr
           & runAlloc PtrAdr
           & runIntraAnalysis cmp

inter :: forall v m .  (InstSchemeDomain Adr v, InterAnalysisM v m) => Exp -> m ()
inter exp = lfp intra ((exp, analysisEnv), [])

analyze :: forall v . (InstSchemeDomain Adr v) =>  Exp -> AnlRes v
analyze exp = let (((), varSto), resMap) =
                       inter @v exp
                     & runStoreT @(Sto v) @Adr @(StoreVal v) (VarVal <$> P.initialSto analysisEnv)
                     & runWithMapping @Cmp @(Res v)
                     & runWithComponentTracking @Cmp
                     & runWithDependencyTracking @Cmp @Cmp
                     & runWithDependencyTracking @Cmp @Adr
                     & runWithWorkList @(Set Cmp)
                     & runIdentity
              in (varSto, resMap)

-- | Scheme Domain constraints
type InstSchemeDomain var v = (
          Typeable v,
          Show v,
          SchemeValue v,
          Adr ~ var,
          SchemeConstraints v Exp var Env,
          EqualLattice v,
          S.Env v ~ Env,
          VarDom v ~ v,
          Ord K,
          Ord v,
          ForAllStored Ord v,
          ForAllStored Show v,
          ForAllStored Eq v)

