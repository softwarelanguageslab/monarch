module Analysis.SimpleActor where

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics

import Data.Map (Map)
import Data.Function ((&))
import Data.Functor.Identity

import Domain.SimpleActor.Class
import Domain.SimpleActor.Modular
import Syntax.AST
import Syntax.Span
import Analysis.Monad (runJoinT, runStoreT, runIntraAnalysis)
import Analysis.Monad.Stack (MonadStack)
import Control.Monad (void)
import Analysis.Monad.Cache
import Analysis.Scheme.Prelude (IntraAnalysisT)
import Analysis.Monad.Environment (EnvT)
import Analysis.Monad.Allocation (AllocM, AllocT, runAlloc)
import Analysis.Monad.Map (MapM, runWithMapping)
import Analysis.Monad.Join (JoinT)
import Analysis.Monad.WorkList (WorkListM)
import Analysis.Monad.Store (StoreM)
import Analysis.Monad.DependencyTracking (DependencyTrackingM, runWithDependencyTracking)
import Analysis.Monad.ComponentTracking (ComponentTrackingM, runWithComponentTracking)
import Analysis.Monad.WorkList (WorkListM, iterateWL, add, runWithWorkList)
import Analysis.Monad.Context (CtxT)
import Analysis.Monad.Fix
import Control.Monad.Escape
import Data.Set (Set)
import qualified Data.Map as Map
import Debug.Trace

type ActorRef = Span
type ActorEnv = Map String ActorAdr
type ActorVlu = SimpleActorValue
type ActorCmp = Key (IntraT Identity) Exp
type ActorRes = Val (IntraT Identity) ActorVlu
type ActorMai = Map ActorRef (Set ActorVlu)
type ActorSto = Map ActorAdr ActorVlu

type IntraT m = MonadStack '[
               MayEscapeT (Set ActorError),
               EnvT ActorEnv,
               AllocT Ide () ActorAdr,
               CtxT (),
               ActorLocalT SimpleActorValue,
               JoinT,
               CacheT
            ] m

-- TODO: group some constraint into a constraint alias for ModX
type MonadInter m = 
      ( MapM ActorCmp ActorRes m, 
        WorkListM m ActorCmp, 
        ComponentTrackingM m ActorCmp,
        DependencyTrackingM m ActorCmp ActorCmp, 
        DependencyTrackingM m ActorCmp ActorAdr, 
        DependencyTrackingM m ActorCmp Span, 
        StoreM m ActorAdr ActorVlu,
        MonadMailbox ActorVlu m )

emptyEnvironment :: Map String ActorAdr 
emptyEnvironment = Map.empty

------------------------------------------------------------
-- Initial store & environment
------------------------------------------------------------

initialEnv :: Map String ActorAdr
initialEnv  = Map.fromList $ map (\(nam, _) -> (nam, PrmAdr nam)) (Map.toList allPrimitives)

initialSto :: Map ActorAdr ActorVlu
initialSto = Map.fromList $ map (\(nam, _) -> (,primitive nam) $ PrmAdr nam) (Map.toList allPrimitives)

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

intra :: forall m . MonadInter m => ActorCmp -> m ()
intra cmp = trace (show cmp) $ runFixT @(IntraT (IntraAnalysisT ActorCmp m)) (eval @SimpleActorValue) cmp
          & runAlloc @Ide @() @ActorAdr (const . VarAdr)
          & runIntraAnalysis cmp

inter :: MonadInter m => Exp -> m ()
inter exp = add (((exp, initialEnv), ()), spanOf exp) >> iterateWL intra

analyze :: Exp -> ((((), ActorSto), ActorMai), Map ActorCmp ActorRes)
analyze exp = inter exp
            & runStoreT @ActorSto @ActorAdr @ActorVlu initialSto
            & runWithMailboxT @ActorVlu
            & runWithMapping @ActorCmp @ActorRes
            & runWithComponentTracking @ActorCmp
            & runWithDependencyTracking @ActorCmp @ActorCmp
            & runWithDependencyTracking @ActorCmp @ActorAdr 
            & runWithDependencyTracking @ActorCmp @ActorRef
            & runWithWorkList @[_]
            & runIdentity

