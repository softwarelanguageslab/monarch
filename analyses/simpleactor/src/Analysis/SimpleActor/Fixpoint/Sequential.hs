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
import Analysis.Store (countingStoreValues)


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
gc :: forall m e .
      (MonadCache m,
       MonadBottom m,
       Show (Key m e),
       Show e,
       MapM (In (Key m e) ActorSto) ActorSto m,
       MapM (Out (Key m e) ActorSto) ActorSto m,
       MonadIO m,
       StoreM' ActorSto ActorAdr (StoreVal ActorVlu) m)
   => (e -> AroundT e ActorVlu m ActorVlu) -- ^ the next arrow to execute after garbage collection
   -> (Key m e -> Set ActorAdr) -- ^ specifies how to trace a the addresses in a component
   -> (e -> AroundT e ActorVlu m ActorVlu)
gc next traceKey e = do
  liftIO (putStrLn $ "putting" ++ show e)
  -- the component that we are calling
  cmp <- upperM $ key e
  -- compute the set of addresses referenced by the current monadic context
  let adrs = traceKey cmp
  liftIO (putStrLn $ "addrs: " ++ show adrs)
  -- compute the set of transitively reachable addresses
  sto <- currentStore
  liftIO (putStrLn $ "sto: " ++ show sto)
  let adrs' = traceStore adrs (Map.map fst $ Store.store sto)
  -- restrict the store to those addresses going forward
  let rsto = restrictSto @ActorSto adrs' sto
  liftIO (putStrLn $ "addrs': " ++ show adrs')
  liftIO (putStrLn $ "rsto: " ++ show rsto)
  MapM.joinWith @(In (Key m e) ActorSto) (In cmp) rsto
  -- compute the value and add its contributions to the original store
  v <- next e
  sto' <- maybe mbottom return =<< MapM.get @(Out (Key m e) ActorSto) (Out cmp)
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
    -- Global store for shared variables
    StoreM ActorAdr (StoreVal ActorVlu) m,
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
              BottomLattice s,
              Show s, Show cmp,
              MapM (In cmp s) s m,
              MapM (Out cmp s) s m,
              MonadIO m)
          => (cmp -> m a) -- ^ original arrow
          -> (cmp -> m a)
flowStore next cmp = do
  sto <- fromMaybe bottom <$> MapM.get @(In cmp s) (In cmp)
  liftIO . print =<< MapM.getAll @(In cmp s)
  putStore sto
  v <- next cmp
  sto' <- currentStore @s
  MapM.put @(Out cmp s) (Out cmp) sto'
  return v


-- | Intra-analysis
intra :: forall m . InterAnalysisM m => ActorRef -> SequentialCmp -> m ()
intra ref cmp = do
          liftIO (putStrLn $ "Analyzing " ++ show cmp)
          flowStore @SequentialCmp @ActorSto @ActorAdr (runFixT @(SequentialT (IntraAnalysisT SequentialCmp m)) eval'') cmp
                  & runAlloc VarAdr
                  & runAlloc PtrAdr
                  & evalWithTransparentStoreT
                  & runIntraAnalysis cmp
      where -- eval'' :: Cmp -> FixT Cmp ActorVlu (SequentialT (IntraAnalysisT SequentialCmp m)) ActorVlu
            eval'' = runAroundT @_ @Cmp (`gc` traceCmp) . eval

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
      mapM_ (uncurry writeAdr) (Map.toList $ contributions res)
  where extractVal (_ ::*:: res ::*:: _ ::*:: _) = res
        extractSto (_ ::*:: _ ::*:: _ ::*:: outStore) = countingStoreValues <$> outStore
        contributions res = joinMap snd (Map.toList $ extractSto res)
