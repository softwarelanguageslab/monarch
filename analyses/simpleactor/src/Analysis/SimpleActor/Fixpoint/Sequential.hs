{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
-- | Analysis to analyse the inner actor semantics
module Analysis.SimpleActor.Fixpoint.Sequential(analyze, SequentialCmp, SequentialRes, ActorRes(..), MB) where

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
import Control.Monad.Join (mbottom, MonadBottom, MonadJoinable)
import qualified Analysis.Monad.Map as MapM
import RIO hiding (exp, trace, join)
import Control.Fixpoint.WorkList (LIFOWorklist)
import Lattice.Class
import Lattice.Trace
import qualified Data.HashMap.Strict as HashMap
import Control.Monad.Identity (IdentityT)
import Analysis.Monad.Store (TransparentStoreT)
import Domain.Actor (arefs', ActorDomain, ARef)
import Analysis.Monad.AbstractCount
import Analysis.Actors.Monad (MonadMailbox')


------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | A component in the sequential analysis
type SequentialCmp = Key (SequentialT Identity) Cmp
type SequentialRes = Val (SequentialT Identity) ActorVlu


-- TODO: move to 'Common'
-- | The type of mailbox abstraction
type MB = Set ActorVlu
     
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
                       -- Local path conditions
                       DiscardFormulaT (SchemeAdr Exp K) ActorVlu,
                       -- WidenedStoreT ActorSto (SchemeAdr Exp K) ActorVlu,
                       -- WidenedFormulaT (SchemeAdr Exp K) ActorVlu,
                       CountSpawnT,
                       LocalMailboxT ActorVlu MB,
                       ActorLocalT ActorVlu,
                       SetNonDetT,
                       -- JoinT,
                       CacheT,
                       TransparentStoreT ActorSto ActorAdr (StoreVal ActorVlu),
                       AbstractCountT ActorRef
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
                             Out SequentialCmp ActorSto,
                             In SequentialCmp ActorCou,
                             Out SequentialCmp ActorCou
                           ],
                            -- In ActorCmp ActorPC,
                            -- Out ActorCmp ActorPC ],
                         MonadMailbox ActorVlu m,
                         FormulaSolver (SchemeAdr Exp K) m,
                         MonadSpawn ActorVlu Ctx m,
                         MonadIO m,
                         -- Flow sensitive stores
                         MapM (In SequentialCmp ActorSto) ActorSto m,
                         MapM (Out SequentialCmp ActorSto) ActorSto m,
                         MapM (In SequentialCmp ActorCou) ActorCou m,
                         MapM (Out SequentialCmp ActorCou) ActorCou m
                        )

------------------------------------------------------------
-- Abstract counting of actor references
------------------------------------------------------------

-- | Layer to track the counts of abstract actor references
newtype CountSpawnT m a = CountSpawnT (IdentityT m a)
                        deriving (MonadJoinable, MonadBottom, Applicative, Functor, Monad, MonadCache, MonadLayer)

instance  (MonadAbstractCount ActorRef m, MonadSpawn ActorVlu Ctx m) => MonadSpawn ActorVlu Ctx (CountSpawnT m) where
      spawn expr env ctx = upperM (spawn expr env ctx) >>= (\ref -> countIncrement ref $> ref)

------------------------------------------------------------
-- Garbage collection
------------------------------------------------------------

-- | Trace the addresses in a component
traceCmp :: SequentialCmp -> Set ActorAdr
traceCmp (_ ::*:: env ::*:: dyn ::*:: _ ::*:: _ ::*:: mb ::*:: _) = Set.unions [trace env, trace dyn, trace mb]

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
       -- FLow sensitive store
       MapM (In (Key m e) ActorSto) ActorSto m,
       MapM (Out (Key m e) ActorSto) ActorSto m,
       -- Flow sensitive counting of actor references
       MapM (In (Key m e) ActorCou) ActorCou m,
       MapM (Out (Key m e) ActorCou) ActorCou m,
       MonadAbstractCount ActorRef m,
       -- Store retrieval and updates
       StoreM' ActorSto ActorAdr (StoreVal ActorVlu) m)
   => (e -> AroundT e ActorVlu m ActorVlu) -- ^ the next arrow to execute after garbage collection
   -> (Key m e -> Set ActorAdr) -- ^ specifies how to trace a the addresses in a component
   -> (e -> AroundT e ActorVlu m ActorVlu)
gc next traceKey e = do
  -- the component that we are calling
  cmp <- upperM $ key e
  -- compute the set of addresses referenced by the current monadic context
  let adrs = traceKey cmp
  -- compute the set of transitively reachable addresses
  sto <- currentStore
  let adrs' = traceStore adrs (Map.map fst $ Store.store sto)
  -- restrict the store to those addresses going forward
  let rsto = restrictSto @ActorSto adrs' sto
  -- retrieve all reachable actor references
  let refs = foldMap (foldMap arefs' . varVals . snd) (Map.toList $ countingStoreValues rsto)
  -- registering the store 
  MapM.joinWith @(In (Key m e) ActorSto) (In cmp) rsto
  -- restrict the counting mapping to only the reachable actor
  -- references.
  cma <- getCounts @ActorRef
  MapM.joinWith @(In (Key m e) ActorCou) (In cmp) (Map.restrictKeys cma refs)
  -- compute the value and add its contributions to the original store
  v <- next e
  -- read the output flow-sensitive store and abstract count for actor references
  sto' <- maybe mbottom return =<< MapM.get @(Out (Key m e) ActorSto) (Out cmp)
  cou' <- maybe mbottom return =<< MapM.get @(Out (Key m e) ActorCou) (Out cmp)

  -- TODO: this breaks strong updates because the store before
  -- the call is joined with the store after the call completely
  -- negating any strong updates. However, since this analysis
  -- does not perform strong updates this is not such a big
  -- problem but we might want to change this in the future. 
  putStore (join sto sto')
  putCounts @ActorRef cou'
  return v

------------------------------------------------------------
-- Actor-modular monadic requirements
------------------------------------------------------------

-- | Collected results
data ActorRes = ActorRes {
            -- | Result for each component in the inner-actor analysis
            cmpRes :: Map SequentialCmp SequentialRes,
            -- | Output counts for each component in the inner-actor analysis
            outCount :: Map SequentialCmp ActorCou
      } deriving (Ord, Eq, Show)

type MonadActorModular m = (
    -- Dependencies can be tracked between the stores
    -- of each actor, in order to find which memory is shared.
    MonadActorStoreDependencyTracking m,
    -- The sequential analysis can trigger new actors to be spawned
    WorkListM m ActorRef,
    -- Global mailboxes
    MonadMailbox ActorVlu m,
    MonadMailbox' (ARef ActorVlu) MB m,
    -- Formula solving should be global since it requires IO
    FormulaSolver (SchemeAdr Exp K) m,
    -- Spawning actors
    MonadSpawn ActorVlu Ctx m,
    -- Keep track of results for each function call within
    -- the actor.
    MapM ActorResOut ActorRes m,
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
              -- FLow sensitive store
              MapM (In cmp s) s m,
              MapM (Out cmp s) s m,
              -- Flow sensitive reference counting for
              -- abstract actor references 
              MapM (In cmp ActorCou) ActorCou m,
              MapM (Out cmp ActorCou) ActorCou m,
              MonadAbstractCount ActorRef m)
          => (cmp -> m a) -- ^ original arrow
          -> (cmp -> m a)
flowStore next cmp = do
  sto <- fromMaybe bottom <$> MapM.get @(In cmp s) (In cmp)
  cou <- fromMaybe bottom <$> MapM.get @(In cmp ActorCou) (In cmp)
  putStore sto
  putCounts cou
  v <- next cmp
  sto' <- currentStore @s
  cou' <- getCounts
  MapM.put @(Out cmp s) (Out cmp) sto'
  MapM.put @(Out cmp ActorCou) (Out cmp) cou'
  return v


-- | Intra-analysis
intra :: forall m . InterAnalysisM m => ActorRef -> SequentialCmp -> m ()
intra ref cmp = do
          flowStore @SequentialCmp @ActorSto @ActorAdr (runFixT @(SequentialT (IntraAnalysisT SequentialCmp m)) eval'') cmp
                  & runAlloc VarAdr
                  & runAlloc PtrAdr
                  & evalWithTransparentStoreT
                  & evalWithAbstractCountT
                  & runIntraAnalysis cmp
      where -- eval'' :: Cmp -> FixT Cmp ActorVlu (SequentialT (IntraAnalysisT SequentialCmp m)) ActorVlu
            eval'' = runAroundT @_ @Cmp (`gc` traceCmp) . eval

-- | Inter-analysis
inter :: InterAnalysisM m
      => Exp         -- ^ the actor expression to analyze
      -> ActorEnv    -- ^ the environment of variables captured by the actor expression
      -> ActorRef    -- ^ the current actor reference
      -> MB          -- ^ the initial mailbox
      -> m ()
inter exp environment ref mb = iterateWL' initialCmp (intra ref)
  where initialCmp = ActorExp exp         -- component to analyze
                <+> environment           -- initial lexical environment
                <+> initialDynEnvironment -- initial dynamic environment 
                <+> Ctx ref               -- context 
                <+> False                 -- whether the component is a meta-component and should be analyzed with higher precision
                <+> mb                    -- initial mailboxes
                <+> ref                   -- current `self`
                -- <+> emptyPC



-- | Analyze a single actor until a fix point is reached
analyze :: forall m  . MonadActorModular m
        => ActorExp             -- ^ the program of the actor
        -> ActorEnv             -- ^ contains only the captured variables of the actor
        -> ActorRef             -- ^ the current actor reference
        -> m ()
analyze exp env ref = do
      -- retrieve the initial mailbox
      mb   <- getMailbox ref
      -- compute the analysis of the actor and all its turns (according to its mailbox)
      res  <- inter exp env ref mb
            & runWithMapping @SequentialCmp @SequentialRes
            & runWithMapping @(In SequentialCmp ActorSto)  @ActorSto
            & runWithMapping @(Out SequentialCmp ActorSto) @ActorSto
            & runWithMapping @(In SequentialCmp ActorCou)  @ActorCou
            & runWithMapping @(Out SequentialCmp ActorCou) @ActorCou
            & runWithComponentTracking @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @(SchemeAdr Exp K)
            & runWithDependencyTracking @SequentialCmp @ActorRef
            & runWithDependencyTracking @SequentialCmp @(In SequentialCmp ActorSto)
            & runWithDependencyTracking @SequentialCmp @(Out SequentialCmp ActorSto)
            & runWithDependencyTracking @SequentialCmp @(In SequentialCmp ActorCou)
            & runWithDependencyTracking @SequentialCmp @(Out SequentialCmp ActorCou)
            & runWithWorkList @(LIFOWorklist SequentialCmp)
            & runIntraAnalysis ref
            -- & runStoreT @ActorSto @(SchemeAdr Exp K) @(StoreVal ActorVlu) sto

      MapM.put (ActorResOut ref) (extractVal res)
      mapM_ (uncurry writeAdr) (Map.toList $ contributions res)
  where extractVal (_ ::*:: res ::*:: _ ::*:: _ ::*:: inCou ::*:: outCou) = ActorRes res (Map.mapKeys outAddress outCou)
        extractSto (_ ::*:: _ ::*:: _ ::*:: outStore ::*:: _ ::*:: _) = countingStoreValues <$> outStore
        contributions res = joinMap snd (Map.toList $ extractSto res)
