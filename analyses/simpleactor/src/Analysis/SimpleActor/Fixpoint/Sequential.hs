{-# LANGUAGE UndecidableInstances #-}
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
import Syntax.AST
import Analysis.Monad.Stack (MonadStack)
import Analysis.Monad.Fix
import Control.Monad.Escape
import Data.Set (Set)
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)
import qualified Data.Map as Map
import Analysis.Symbolic.Monad
    ( FormulaT )
import Solver
import Symbolic.AST ( emptyPC )
import Analysis.Store (CountingMap(..), Store (..))
import Data.Maybe
import Analysis.Context (emptyMcfaContext)
import qualified RIO.Set as Set
import Data.Tuple.Syntax

import Analysis.SimpleActor.Fixpoint.Common
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Cond (ifM)
import Control.Monad.Reader
import Control.Monad.Join (mzero, MonadBottom)
import qualified Analysis.Monad.Map as MapM
import RIO hiding (exp, mzero)
import qualified Debug.Trace as Debug
import Analysis.Store (emptyCountingMap)
import Control.Fixpoint.WorkList (FIFOWorkList, LIFOWorklist)
import Lattice.Class
import qualified Data.HashMap.Strict as HashMap


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
                       DynamicBindingT ActorVlu,
                       AllocT Ide K (EnvAdr K),
                       AllocT Exp K (PaiAdrE Exp K),
                       AllocT Exp K (StrAdrE Exp K),
                       AllocT Exp K (VecAdrE Exp K),
                       MCfaT (Unlist K),
                       MetaT,
                       ActorLocalT ActorVlu,
                       -- Local path conditions
                       FormulaT (EnvAdr K) ActorVlu,
                       -- WidenedStoreT ActorSto (EnvAdr K) ActorVlu,
                       -- WidenedFormulaT (EnvAdr K) ActorVlu,
                       SetNonDetT,
                       -- JoinT,
                       CacheT
                  ] m

-- | SequentialIntraM denotes the remaining constraints needed for running the intra
-- analysis.
type InterAnalysisM m = (MonadSchemeStore m,
                         MapM SequentialCmp SequentialRes m,
                         WorkListM m SequentialCmp,
                         ComponentTrackingM m SequentialCmp,
                         DependsOn m SequentialCmp '[
                             SequentialCmp ,
                             EnvAdr K,
                             Pid Exp K,
                             PaiAdrE Exp K,
                             VecAdrE Exp K,
                             StrAdrE Exp K
                            -- In ActorCmp ActorSto,
                            -- Out ActorCmp ActorSto
                           ],
                            -- In ActorCmp ActorPC,
                            -- Out ActorCmp ActorPC ],
                         AbstractCountM (EnvAdr K) m,
                         MonadMailbox ActorVlu m,
                         FormulaSolver (EnvAdr K) m,
                         MonadSpawn ActorVlu m,
                         MonadIO m)


------------------------------------------------------------
-- Sequential intra analysis monad
------------------------------------------------------------

-- Actors may, just like threads, depend on segments of memory
-- that are shared with other actors. In our model,
-- mutation only occurs whenever a @letrec*@ special form
-- is used, since the semantics of a @letrec@ is a definition
-- followed by a destructive assignment.
--
-- To account for this behavior, an abstract intepreter must
-- track variables that are shared between actors (or threads)
-- so that their potential values could be added to the
-- value set of that actor.
--
-- To do so, we add a @SequentialIntraT@ layer to the monad
-- stack which intercepts calls to the store so that we
-- can track which variables are accessed by the currently analyzed
-- actor. The accessed variables are then added to current's actor
-- initial store,  by reanalyzing any actors that write to the
-- shared location.
-- 
-- This process is finite since the reananlysis only happens once,
-- for each shared address. Subsequent updates to that address
-- will trigger a reanalysis in the opposite direction.


newtype SequentialIntraT m a = SequentialIntraT (ReaderT ActorRef m a)
                deriving (Applicative, Functor, Monad, MonadLayer, MonadCache, MonadReader ActorRef)

instance (MonadDependencyTriggerTracking ActorRef a m, MapM ActorRef (CountingMap a v) m, WorkListM m ActorRef, MonadBottom m, DependencyTrackingM ActorRef a m, StoreM a v m) => StoreM a v (SequentialIntraT m) where
  storeSize = upperM (storeSize @a @v)
  lookupAdr adr = SequentialIntraT ask >>= register adr >>
        ifM (hasAdr adr)
       {- then -} (upperM $ lookupAdr adr)
       {- else -} -- Trigger contributions of the address and register our interest
           (triggers (traceShowId adr) >>= adds >> mzero)
  writeAdr adr vlu = do
    cmp <- ask
    -- write the value to the input stores of all dependent actors,
    -- except ourselves, MapM ensures that dependent actors only get reanalyzed whenever
    -- the store changes.
    deps <- Set.filter (/= cmp) <$> dependent adr
    mapM_ (\cmp' -> MapM.get cmp' >>= maybe (MapM.put cmp' $ extendSto adr vlu emptySto) (MapM.joinWith cmp' . extendSto adr vlu)) deps
    -- track that we triggered the write 
    trackTrigger adr cmp
    -- and write as usual
    upperM $ writeAdr adr vlu

  updateWith fs fw a = do
    -- same as in @writeAdr@ in terms of writing behavior and dependency trigger tracking
    cmp <- ask
    deps <- Set.filter (/= cmp) <$> dependent a
    mapM_ (\cmp' -> MapM.get cmp' >>= (MapM.joinWith cmp' . updateStoWith fs fw a) . fromMaybe emptySto) deps
    trackTrigger a cmp
    upperM (updateWith fs fw a)

  hasAdr = upperM . (hasAdr @a)




-- | Run the @SequentiaIntraT@ monad transformer
runSequentialIntraT :: ActorRef -> SequentialIntraT m a -> m a
runSequentialIntraT ref (SequentialIntraT m) = runReaderT m ref

------------------------------------------------------------
-- Inter-actor stores
------------------------------------------------------------

-- | Write the relevant addresses to the input store
-- of an actor when one is spawned
instance (Monad m, StoreM ActorVarAdr ActorVlu m, StoreM' VarSto ActorVarAdr ActorVlu m, MapM ActorRef ActorSto m, MonadSpawn ActorVlu m) => MonadSpawn ActorVlu (SequentialIntraT m) where
   spawn expr env = do
      pid <- upperM (spawn expr env)
      sto <- currentStore @VarSto
      MapM.joinWith pid (CountingMap $ Map.restrictKeys (store sto) (Set.fromList $ map snd $ HashMap.toList env)) 
      return pid

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
    FormulaSolver (EnvAdr K) m,
    -- Spawning actors
    MonadSpawn ActorVlu m,
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


-- | Intra-analysis
intra :: forall m . InterAnalysisM m => SequentialCmp -> m ()
intra cmp = runFixT @(SequentialT (IntraAnalysisT SequentialCmp m)) (eval @ActorVlu) cmp
          & runAlloc @Ide @K @(EnvAdr K) EnvAdr
          & runAlloc @Exp @K @(PaiAdrE Exp K) PaiAdr
          & runAlloc @Exp @K @(StrAdrE Exp K) StrAdr
          & runAlloc @Exp @K @(VecAdrE Exp K) VecAdr
          & runIntraAnalysis cmp


-- | Inter-analysis
inter :: InterAnalysisM m
      => Exp         -- ^ the actor expression to analyze
      -> ActorEnv    -- ^ the environment of variables captured by the actor expression
      -> ActorRef    -- ^ the current actor reference
      -> m ()
inter exp environment ref = iterateWL' initialCmp intra
  where initialCmp = ActorExp exp <+> environment <+> Map.empty <+> emptyMcfaContext 0 <+> False <+> ref <+> emptyPC



-- | Analyze a single actor until a fix point is reached
analyze :: forall m  . MonadActorModular m
        => ActorExp             -- ^ the program of the actor
        -> ActorEnv             -- ^ contains only the captured variables of the actor
        -> ActorRef             -- ^ the current actor reference
        -> m ()
analyze exp env ref = do
      -- retrieve store associated with this actor
      sto <- fromMaybe (initialSto allPrimitives PrmAdr) <$> MapM.get ref
      vsto <- fromMaybe emptyCountingMap <$> MapM.get ref
      ssto <- fromMaybe emptyCountingMap <$> MapM.get ref
      psto <- fromMaybe emptyCountingMap <$> MapM.get ref

      res  <- inter exp env ref
            & runWithMapping @SequentialCmp @SequentialRes
            & runWithComponentTracking @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @(EnvAdr K)
            & runWithDependencyTracking @SequentialCmp @(PaiAdrE Exp K)
            & runWithDependencyTracking @SequentialCmp @(VecAdrE Exp K)
            & runWithDependencyTracking @SequentialCmp @(StrAdrE Exp K)
            & runWithDependencyTracking @SequentialCmp @ActorRef
            & runWithWorkList @(LIFOWorklist SequentialCmp)
            & runSequentialIntraT ref
            & runStoreT @(CountingMap (PaiAdrE Exp K) (PaiDom ActorVlu)) @ActorPaiAdr psto
            & runStoreT @(CountingMap (StrAdrE Exp K) (StrDom ActorVlu)) @ActorStrAdr ssto
            & runStoreT @(CountingMap (VecAdrE Exp K) (VecDom ActorVlu)) @ActorVecAdr vsto
            & runStoreT @ActorSto @(EnvAdr K) @ActorVlu sto

      MapM.put (ActorResOut ref) (extractVal res)

      -- TODO: write the stores and other mappings so that they can be inspected at the end
      -- of the analysis.
      return ()
  where extractVal (_ ::*:: res ::*:: _ ::*:: _ ::*:: _ ::*::_) = res
