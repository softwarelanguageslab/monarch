{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
-- | Analysis to analyse the inner actor semantics
module Analysis.SimpleActor.Fixpoint.Sequential(analyze, SequentialCmp, SequentialRes) where

------------------------------------------------------------
-- Imports
------------------------------------------------------------

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics
import Analysis.Actors.Monad

import Data.Functor.Identity

import Analysis.Monad hiding (eval, spawn, store)
import Analysis.Store
import qualified Analysis.Store as Store
import Syntax.AST hiding (Trace)
import Analysis.Monad.Stack (MonadStack)
import Analysis.Monad.Fix
import Control.Monad.Escape
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store
import Domain.Scheme.Class (Adr)
import qualified Data.Map as Map
import Analysis.Symbolic.Monad ( DiscardFormulaT )
import Solver
import Data.Maybe
import qualified RIO.Set as Set
import Data.Tuple.Syntax

import Analysis.SimpleActor.Fixpoint.Common
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Cond (ifM)
import Control.Monad.Reader
import Control.Monad.Join (mbottom, MonadBottom)
import qualified Analysis.Monad.Map as MapM
import RIO hiding (exp, trace, join)
import Control.Fixpoint.WorkList (LIFOWorklist)
import Lattice.Class
import Lattice.Trace
import qualified Data.HashMap.Strict as HashMap
import Control.Monad.Identity (IdentityT)
import Analysis.Monad.Store (TransparentStoreT)


------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | A component in the sequential analysis
type SequentialCmp = Key (SequentialT Identity) Cmp
type SequentialRes = Val (SequentialT Identity) ActorVlu


------------------------------------------------------------
-- Monad stack
------------------------------------------------------------

type SequentialT m = MonadStack '[
                       MayEscapeT (Set ActorError),
                       EnvT ActorEnv,
                       DynamicBindingT' (Adr ActorVlu),
                       AllocT Ide K (SchemeAdr Exp K),
                       AllocT Exp K (SchemeAdr Exp K),
                       CtxT K,
                       MetaT,
                       ActorLocalT ActorVlu,
                       -- Local path conditions
                       DiscardFormulaT (SchemeAdr Exp K) ActorVlu,
                       -- WidenedStoreT ActorSto (SchemeAdr Exp K) ActorVlu,
                       -- WidenedFormulaT (SchemeAdr Exp K) ActorVlu,
                       SetNonDetT,
                       -- JoinT,
                       CacheT,
                       TransparentStoreT ActorSto ActorAdr (StoreVal ActorVlu)
                  ] m

-- | SequentialIntraM denotes the remaining constraints needed for running the intra
-- analysis.
type InterAnalysisM m = (MonadSchemeStore m,
                         MapM SequentialCmp SequentialRes m,
                         WorkListM m SequentialCmp,
                         ComponentTrackingM m SequentialCmp,
                         DependsOn m SequentialCmp '[
                             SequentialCmp ,
                             SchemeAdr Exp K,
                             Pid Exp K,
                             In SequentialCmp ActorSto,
                             Out SequentialCmp ActorSto
                            -- In ActorCmp ActorSto,
                            -- Out ActorCmp ActorSto
                           ],
                            -- In ActorCmp ActorPC,
                            -- Out ActorCmp ActorPC ],
                         -- AbstractCountM (SchemeAdr Exp K) m,
                         MonadMailbox ActorVlu m,
                         FormulaSolver (SchemeAdr Exp K) m,
                         MonadSpawn ActorVlu Ctx m,
                         MonadIO m,
                         -- Flow sensitive stores
                         MapM (In SequentialCmp ActorSto) ActorSto m,
                         MapM (Out SequentialCmp ActorSto) ActorSto m
                        )


------------------------------------------------------------
-- Garbage collection
------------------------------------------------------------

-- | Trace the addresses in a component
traceCmp :: SequentialCmp -> Set ActorAdr
traceCmp (_ ::*:: env ::*:: dyn ::*:: _ ::*:: _ ::*:: _) = Set.unions [trace env, trace dyn]

-- We apply garbage collection in this analysis to remove
-- unreachable addresses from the store, therefore decreasing
-- its abstract count. This is particularly important to
-- identify the cardinality of actor references (or process identifiers, i.e., PIDs).

-- | Garbage collection arrow that gets added around the evaluation function,
-- and which gets applied whenever the open recursive function is used (i.e., when crossing
-- component boundaries)
gc :: (MonadCache m,
       StoreM' ActorSto ActorAdr ActorVlu m)
   => (e -> m ActorVlu) -- ^ the next arrow to execute after garbage collection
   -> (Key m e -> Set ActorAdr) -- ^ specifies how to trace a the addresses in a component
   -> (e -> m ActorVlu)
gc next traceKey e = do
  -- compute the set of addresses referenced by the current monadic context
  adrs <- traceKey <$> key e
  -- compute the set of transitively reachable addresses
  sto <- currentStore
  let adrs' = traceStore adrs (Map.map fst $ Store.store sto)
  -- restrict the store to those addresses going forward
  putStore (restrictSto @ActorSto adrs' sto)
  -- compute the value and add its contributions to the original store
  v <- next e
  sto' <- currentStore
  -- TODO: this breaks strong updates because the store before
  -- the call is joined with the store after the call completely
  -- negating any strong updates. However, since this analysis
  -- does not perform strong updates this is not such a big
  -- problem but we might want to change this in the future. 
  putStore (join sto sto')
  return v

------------------------------------------------------------
-- Actor-modular monadic requirements
------------------------------------------------------------

type MonadActorModular m = (
    -- Every actor has its own local store
    MonadActorStore m,
    -- Dependencies can be tracked between the stores
    -- of each actor, in order to find which memory is shared.
    MonadActorStoreDependencyTracking m,
    -- The sequential analysis can trigger new actors to be spawned
    WorkListM m ActorRef,
    -- Global mailboxes
    MonadMailbox ActorVlu m,
    -- Formula solving should be global since it requires IO
    FormulaSolver (SchemeAdr Exp K) m,
    -- Spawning actors
    MonadSpawn ActorVlu Ctx m,
    -- Keep track of results for each function call within
    -- the actor.
    MapM ActorResOut (Map SequentialCmp SequentialRes) m,
    -- Other constraints
    MonadBottom m,
    MonadIO m
  )


------------------------------------------------------------
-- Sequential analysis
------------------------------------------------------------

-- | Keeps track of flow sensitive stores: it sets up the flow
-- sensitive at the start of the analysis and then (at the In adr)
-- and then saves it at its Out address.
flowStore :: forall cmp s adr v m a . (
              StoreM' s adr v m,            
              MapM (In cmp s) s m,
              MapM (Out cmp s) s m)
          => (cmp -> m a) -- ^ original arrow
          -> (cmp -> m a)
flowStore next cmp = do
  sto <- fromJust <$> MapM.get @(In cmp s) (In cmp)
  putStore sto
  v <- next cmp
  sto' <- currentStore @s
  MapM.put @(Out cmp s) (Out cmp) sto'
  return v


-- | Intra-analysis
intra :: forall m . InterAnalysisM m => ActorRef -> SequentialCmp -> m ()
intra ref cmp = flowStore @SequentialCmp @ActorSto @ActorAdr (runFixT @(SequentialT (IntraAnalysisT SequentialCmp m)) (gc (eval @ActorVlu) traceCmp)) cmp
          & runAlloc VarAdr
          & runAlloc PtrAdr
          & evalWithTransparentStoreT
          & runIntraAnalysis cmp




-- | Inter-analysis
inter :: InterAnalysisM m
      => Exp         -- ^ the actor expression to analyze
      -> ActorEnv    -- ^ the environment of variables captured by the actor expression
      -> ActorRef    -- ^ the current actor reference
      -> m ()
inter exp environment ref = iterateWL' initialCmp (intra ref)
  where initialCmp = ActorExp exp         -- component to analyze
                <+> environment           -- initial lexical environment
                <+> initialDynEnvironment -- initial dynamic environment 
                <+> Ctx ref               -- context 
                <+> False                 -- whether the component is a meta-component and should be analyzed with higher precision
                <+> ref                   -- current `self`
                -- <+> emptyPC



-- | Analyze a single actor until a fix point is reached
analyze :: forall m  . MonadActorModular m
        => ActorExp             -- ^ the program of the actor
        -> ActorEnv             -- ^ contains only the captured variables of the actor
        -> ActorRef             -- ^ the current actor reference
        -> m ()
analyze exp env ref = do
      -- retrieve store associated with this actor
      sto <- fromMaybe (VarVal <$> initialSto allPrimitives PrrAdr) <$> MapM.get ref
      res  <- inter exp env ref
            & runWithMapping @SequentialCmp @SequentialRes
            & runWithMapping @(In SequentialCmp ActorSto)  @ActorSto
            & runWithMapping @(Out SequentialCmp ActorSto) @ActorSto
            & runWithComponentTracking @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @(SchemeAdr Exp K)
            & runWithDependencyTracking @SequentialCmp @ActorRef
            & runWithDependencyTracking @SequentialCmp @(In SequentialCmp ActorSto) 
            & runWithDependencyTracking @SequentialCmp @(Out SequentialCmp ActorSto) 
            & runWithWorkList @(LIFOWorklist SequentialCmp)
            & runIntraAnalysis ref
            -- & runStoreT @ActorSto @(SchemeAdr Exp K) @(StoreVal ActorVlu) sto

      MapM.put (ActorResOut ref) (extractVal res)

      return ()
  where extractVal (_ ::*:: res ::*:: _ ::*:: _) = res
