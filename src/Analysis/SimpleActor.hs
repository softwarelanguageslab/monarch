module Analysis.SimpleActor where

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics

import Data.Map (Map)
import Data.Function ((&))
import Data.Functor.Identity

import Analysis.Monad hiding (eval)
import Syntax.AST
import Analysis.Monad.Stack (MonadStack)
import Analysis.Scheme.Prelude (CPActorValue, PaiAdr(..), EnvAdr(..), VecAdr(..), StrAdr(..))
import Analysis.Monad.ComponentTracking (ComponentTrackingM, runWithComponentTracking)
import Analysis.Monad.Fix
import Control.Monad.Escape
import qualified Analysis.Scheme.Primitives as P
import Data.Set (Set)
import Debug.Trace
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store 
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)

type K = ()
type ActorRef = Pid Exp K
type ActorEnv = Map String (EnvAdr K)
type ActorVlu = CPActorValue EnvAdr (PaiAdrE Exp) (VecAdrE Exp) (StrAdrE Exp) K Exp
type ActorCmp = Key (IntraT Identity) Exp
type ActorRes = Val (IntraT Identity) ActorVlu
type ActorMai = Map ActorRef (Set ActorVlu)
type ActorSto = Map (EnvAdr K) ActorVlu

type IntraT m = MonadStack '[
               MayEscapeT (Set ActorError),
               EnvT ActorEnv,
               AllocT Ide () (EnvAdr K),
               AllocT Exp () (PaiAdrE Exp K),
               AllocT Exp () (StrAdrE Exp K),
               AllocT Exp () (VecAdrE Exp K),
               CtxT (),
               ActorLocalT ActorVlu,
               JoinT,
               CacheT
            ] m

-- TODO: group some constraint into a constraint alias for ModX
type MonadInter m =
      ( MapM ActorCmp ActorRes m,
        WorkListM m ActorCmp,
        ComponentTrackingM m ActorCmp,
        DependencyTrackingM m ActorCmp ActorCmp,
        DependencyTrackingM m ActorCmp (EnvAdr K),
        DependencyTrackingM m ActorCmp (Pid Exp K),
        DependencyTrackingM m ActorCmp (PaiAdrE Exp K),
        DependencyTrackingM m ActorCmp (VecAdrE Exp K),
        DependencyTrackingM m ActorCmp (StrAdrE Exp K),
        StoreM m (EnvAdr K) ActorVlu,
        StoreM m (PaiAdrE Exp K) (PaiDom ActorVlu),
        StoreM m (VecAdrE Exp K) (VecDom ActorVlu),
        StoreM m (StrAdrE Exp K) (StrDom ActorVlu),
        MonadMailbox ActorVlu m )

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

intra :: forall m . MonadInter m => ActorCmp -> m ()
intra cmp = trace (show cmp) $ runFixT @(IntraT (IntraAnalysisT ActorCmp m)) (eval @ActorVlu) cmp
          & runAlloc @Ide @() @(EnvAdr K) EnvAdr
          & runAlloc @Exp @() @(PaiAdrE Exp K) PaiAdr
          & runAlloc @Exp @() @(StrAdrE Exp K) StrAdr
          & runAlloc @Exp @() @(VecAdrE Exp K) VecAdr
          & runIntraAnalysis cmp

initialEnv :: Env K
initialEnv = P.initialEnv PrmAdr

inter :: MonadInter m => Exp -> m ()
inter exp = add (((exp, initialEnv), ()), Pid exp ()) >> iterateWL intra

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

