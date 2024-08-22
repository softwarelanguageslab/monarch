module Analysis.SimpleActor where

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics

import Data.Map (Map)
import Data.Function ((&))
import Data.Functor.Identity

import Domain.SimpleActor.Class
import Domain.SimpleActor.Modular
import Syntax.AST
import Analysis.Monad (runJoinT, runWithStore, runIntraAnalysis)
import Analysis.Monad.Stack (MonadStack)
import Control.Monad (void)
import Analysis.Monad.Cache
import Analysis.Scheme.Prelude (IntraAnalysisT)
import Analysis.Monad.Environment (EnvT)
import Analysis.Monad.Allocation (AllocM)
import Analysis.Monad.Map (MapM)
import Analysis.Monad.Join (JoinT)
import Analysis.Monad.WorkList (WorkListM)
import Analysis.Monad.Store (StoreM)
import Analysis.Monad.DependencyTracking (DependencyTrackingM)
import Analysis.Monad.ComponentTracking (ComponentTrackingM)
import Control.Monad.Escape
import Data.Set

type ActorAdr = Ide
type ActorEnv = Map String Ide
type ActorCmp = Key (IntraT Identity) Exp
type ActorRes = Val (IntraT Identity) SimpleActorValue

type IntraT m = MonadStack '[
               MayEscapeT (Set ActorError),
               EnvT ActorEnv,
               ActorLocalT SimpleActorValue,
               JoinT,
               CacheT
            ] m

type MonadInter m = 
      ( AllocM m Ide Ide, 
        MapM ActorCmp ActorRes m, 
        WorkListM m ActorCmp, 
        ComponentTrackingM m ActorCmp,
        DependencyTrackingM m ActorCmp ActorCmp, 
        DependencyTrackingM m ActorCmp ActorAdr, 
        DependencyTrackingM m ActorCmp Span, 
        StoreM m Ide SimpleActorValue, 
        MonadMailbox SimpleActorValue m )

intra :: forall m . MonadInter m => ActorCmp -> m ()
intra cmp = cache @(IntraT (IntraAnalysisT ActorCmp m)) cmp (eval @SimpleActorValue)
          & runIntraAnalysis cmp
