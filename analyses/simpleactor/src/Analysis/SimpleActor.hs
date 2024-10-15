{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Analysis.SimpleActor(ActorCmp, analyze) where

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics

import Data.Map (Map)
import Data.Function ((&))
import Data.Functor.Identity

import Analysis.Monad hiding (eval)
import Syntax.AST
import Analysis.Monad.Stack (MonadStack)
import Analysis.Monad.Fix
import Analysis.Symbolic.Monad.SymbolicStore
import Control.Monad.Escape
import Data.Set (Set)
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store 
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)
import qualified Data.Map as Map
import Data.Kind (Type, Constraint)
import Domain.SimpleActor

------------------------------------------------------------
-- Shortcuts
------------------------------------------------------------

type K = [Span]
type ActorRef = Pid Exp K
type ActorVlu = ActorValue K
type ActorEnv = Map String (EnvAdr K)
type ActorCmp = Key (IntraT Identity) Cmp
type ActorRes = Val (IntraT Identity) ActorVlu
type ActorMai = Map ActorRef (Set ActorVlu)
type ActorSto = Map (EnvAdr K) ActorVlu

type family DependsOn (m :: Type -> Type) (cmp :: Type) (ads :: [Type]) :: Constraint where
      DependsOn m cmp '[] = ()
      DependsOn m cmp (adr : ads) = (DependencyTrackingM m cmp adr, DependsOn m cmp ads) 


type family Unlist (as :: Type) :: Type where 
   Unlist [k] = k

------------------------------------------------------------
-- Monad
------------------------------------------------------------

type IntraT m = MonadStack '[
               MayEscapeT (Set ActorError),
               EnvT ActorEnv,
               DynamicBindingT ActorVlu,
               AllocT Ide K (EnvAdr K),
               AllocT Exp K (PaiAdrE Exp K),
               AllocT Exp K (StrAdrE Exp K),
               AllocT Exp K (VecAdrE Exp K),
               CtxT K,
               MetaT, 
               ActorLocalT ActorVlu,
               -- NonDetT,
               JoinT,
               CacheT,
               -- Symbolic execution
               SymbolicStoreT (EnvAdr K) ActorVlu
            ] m

-- TODO: group some constraint into a constraint alias for ModX
type MonadInter m =
      ( MapM ActorCmp ActorRes m,
        WorkListM m ActorCmp,
        ComponentTrackingM m ActorCmp,
        DependsOn m ActorCmp '[ ActorCmp , EnvAdr K, Pid Exp K, PaiAdrE Exp K, VecAdrE Exp K, StrAdrE Exp K ], 
        StoreM (EnvAdr K) ActorVlu m,
        StoreM (PaiAdrE Exp K) (PaiDom ActorVlu) m,
        StoreM (VecAdrE Exp K) (VecDom ActorVlu) m,
        StoreM (StrAdrE Exp K) (StrDom ActorVlu) m,
        MonadMailbox ActorVlu m )

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

intra :: forall m . MonadInter m
 => ActorCmp -> m ()
intra cmp = runFixT @(IntraT (IntraAnalysisT ActorCmp m)) (runAroundT symbolicStore . eval @ActorVlu) cmp
          & runAlloc @Ide @K @(EnvAdr K) EnvAdr
          & runAlloc @Exp @K @(PaiAdrE Exp K) PaiAdr
          & runAlloc @Exp @K @(StrAdrE Exp K) StrAdr
          & runAlloc @Exp @K @(VecAdrE Exp K) VecAdr
          & runWithSymbolicStore 
          & runIntraAnalysis cmp

initialEnv :: Env K
initialEnv = Map.fromList (fmap (\nam -> (nam, PrmAdr nam)) allPrimitives)

inter :: MonadInter m => Exp -> m ()
inter exp = lfp intra (((((ActorExp exp, initialEnv), Map.empty), []), False), Pid exp [])

analyze :: Exp -> ((((), ActorSto), ActorMai), Map ActorCmp (ActorRes))
analyze exp =
      let (((((((), sto), _), _), _), mb), mapping) =
              inter exp
            & runStoreT @ActorSto @(EnvAdr K) @ActorVlu (initialSto allPrimitives PrmAdr)
            & runWithStore @(Map (PaiAdrE Exp K) (PaiDom ActorVlu))
            & runWithStore @(Map (StrAdrE Exp K) (StrDom ActorVlu))
            & runWithStore @(Map (VecAdrE Exp K) (VecDom ActorVlu))
            & runWithMailboxT @ActorVlu
            & runWithMapping @ActorCmp @ActorRes
            -- & runWithJoinToMap @ActorCmp @ActorRes
            & runWithComponentTracking @ActorCmp
            & runWithDependencyTracking @ActorCmp @ActorCmp
            & runWithDependencyTracking @ActorCmp @(EnvAdr K)
            & runWithDependencyTracking @ActorCmp @(PaiAdrE Exp K)
            & runWithDependencyTracking @ActorCmp @(VecAdrE Exp K)
            & runWithDependencyTracking @ActorCmp @(StrAdrE Exp K)
            & runWithDependencyTracking @ActorCmp @ActorRef
            & runWithWorkList @[_]
            & runIdentity
      in ((((), sto), mb), mapping)
