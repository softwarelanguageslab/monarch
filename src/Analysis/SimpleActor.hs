module Analysis.SimpleActor(ActorCmp, analyze) where

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics

import Data.Map (Map)
import Data.Function ((&))
import Data.Functor.Identity

import Analysis.Monad hiding (eval)
import Syntax.AST
import Analysis.Monad.Stack (MonadStack)
import Analysis.Scheme.Prelude (CPActorValue)
import Analysis.Monad.Fix
import Analysis.Monad.Join
import Control.Monad.Escape
import qualified Analysis.Scheme.Primitives as P
import Data.Set (Set)
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store 
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)
import qualified Data.Map as Map
import Data.Kind (Type, Constraint)

------------------------------------------------------------
-- Shortcuts
------------------------------------------------------------

type K = [Span]
type ActorRef = Pid Exp K
type ActorEnv = Map String (EnvAdr K)
type ActorVlu = CPActorValue EnvAdr (PaiAdrE Exp) (VecAdrE Exp) (StrAdrE Exp) K Exp
type ActorCmp = Key (IntraT Identity) Exp
type ActorRes = Val (IntraT Identity) ActorVlu
type ActorMai = Map ActorRef (Set ActorVlu)
type ActorSto = Map (EnvAdr K) ActorVlu

type family DependsOn (m :: Type -> Type) (cmp :: Type) (ads :: [Type]) :: Constraint where
      DependsOn m cmp '[] = ()
      DependsOn m cmp (adr : ads) = (DependencyTrackingM m cmp adr, DependsOn m cmp ads) 

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
               NonDetT,
               -- JoinT
               CacheT
            ] m

-- TODO: group some constraint into a constraint alias for ModX
type MonadInter m =
      ( MapM ActorCmp ActorRes m,
        WorkListM m ActorCmp,
        ComponentTrackingM m ActorCmp,
        DependsOn m ActorCmp '[ ActorCmp , EnvAdr K, Pid Exp K, PaiAdrE Exp K, VecAdrE Exp K, StrAdrE Exp K ], 
        StoreM m (EnvAdr K) ActorVlu,
        StoreM m (PaiAdrE Exp K) (PaiDom ActorVlu),
        StoreM m (VecAdrE Exp K) (VecDom ActorVlu),
        StoreM m (StrAdrE Exp K) (StrDom ActorVlu),
        MonadMailbox ActorVlu m )

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

intra :: forall m . MonadInter m
 => ActorCmp -> m ()
intra cmp = runFixT @(IntraT (IntraAnalysisT ActorCmp m)) (eval @ActorVlu) cmp
          & runAlloc @Ide @K @(EnvAdr K) EnvAdr
          & runAlloc @Exp @K @(PaiAdrE Exp K) PaiAdr
          & runAlloc @Exp @K @(StrAdrE Exp K) StrAdr
          & runAlloc @Exp @K @(VecAdrE Exp K) VecAdr
          & runIntraAnalysis cmp

initialEnv :: Env K
initialEnv = P.initialEnv PrmAdr

inter :: MonadInter m => Exp -> m ()
inter exp = add (((((exp, initialEnv), Map.empty), []), False), Pid exp []) >> iterateWL intra

analyze :: Exp -> ((((), ActorSto), ActorMai), Map ActorCmp ActorRes)
analyze exp =
      let (((((((), sto), _), _), _), mb), mapping) =
              inter exp
            & runStoreT @ActorSto @(EnvAdr K) @ActorVlu (P.initialSto initialEnv)
            & runWithStore @(Map (PaiAdrE Exp K) (PaiDom ActorVlu))
            & runWithStore @(Map (StrAdrE Exp K) (StrDom ActorVlu))
            & runWithStore @(Map (VecAdrE Exp K) (VecDom ActorVlu))
            & runWithMailboxT @ActorVlu
            & runWithMapping @ActorCmp @ActorRes
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

