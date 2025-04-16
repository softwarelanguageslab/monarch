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
import Domain.Scheme.Class (PaiDom, VecDom, StrDom, Adr)
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
import Control.Monad.Join (mbottom, MonadBottom)
import qualified Analysis.Monad.Map as MapM
import RIO hiding (exp)
import qualified Debug.Trace as Debug
import Analysis.Store (emptyCountingMap)
import Control.Fixpoint.WorkList (FIFOWorkList, LIFOWorklist)
import Lattice.Class
import qualified Data.HashMap.Strict as HashMap
import Analysis.SimpleActor.Fixpoint.Common (initialDynEnvironment)
import Analysis.Symbolic.Monad (DiscardFormulaT)


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
                             SchemeAdr Exp K,
                             Pid Exp K
                            -- In ActorCmp ActorSto,
                            -- Out ActorCmp ActorSto
                           ],
                            -- In ActorCmp ActorPC,
                            -- Out ActorCmp ActorPC ],
                         AbstractCountM (SchemeAdr Exp K) m,
                         MonadMailbox ActorVlu m,
                         FormulaSolver (SchemeAdr Exp K) m,
                         MonadSpawn ActorVlu Ctx m,
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

instance (MonadDependencyTriggerTracking ActorRef a m, MapM ActorRef (CountingMap a v) m, WorkListM m ActorRef, MonadIO m, MonadBottom m, DependencyTrackingM ActorRef a m, StoreM a v m) => StoreM a v (SequentialIntraT m) where
  storeSize = upperM (storeSize @a @v)
  lookupAdr adr = SequentialIntraT ask >>= register adr >>
        ifM (hasAdr adr)
       {- then -} (upperM $ lookupAdr adr)
       {- else -} -- Trigger contributions of the address and register our interest
           -- TODO[important]: we filter out contributions that we made ourselves, but this excludes us from creating self sends (in the abstract or concrete)
           -- since the data of the self send will never be included in the input store.
           (asks (Set.filter . (/=)) <*> triggers adr >>= adds >> mbottom)
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
instance (Monad m, StoreM ActorVarAdr (StoreVal ActorVlu) m, StoreM' ActorSto ActorVarAdr (StoreVal ActorVlu) m, MapM ActorRef ActorSto m, MonadSpawn ActorVlu Ctx m) => MonadSpawn ActorVlu Ctx (SequentialIntraT m) where
   spawn expr env ctx = do
      pid <- upperM (spawn expr env ctx)
      sto <- currentStore @ActorSto
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


-- | Intra-analysis
intra :: forall m . InterAnalysisM m => SequentialCmp -> m ()
intra cmp = runFixT @(SequentialT (IntraAnalysisT SequentialCmp m)) (eval @ActorVlu) cmp
          & runAlloc VarAdr
          & runAlloc PtrAdr
          & runIntraAnalysis cmp


-- | Inter-analysis
inter :: InterAnalysisM m
      => Exp         -- ^ the actor expression to analyze
      -> ActorEnv    -- ^ the environment of variables captured by the actor expression
      -> ActorRef    -- ^ the current actor reference
      -> m ()
inter exp environment ref = iterateWL' initialCmp intra
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
            & runWithComponentTracking @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @(SchemeAdr Exp K)
            & runWithDependencyTracking @SequentialCmp @ActorRef
            & runWithWorkList @(LIFOWorklist SequentialCmp)
            & runSequentialIntraT ref
            & runStoreT @ActorSto @(SchemeAdr Exp K) @(StoreVal ActorVlu) sto

      MapM.put (ActorResOut ref) (extractVal res)

      return ()
  where extractVal (_ ::*:: res ::*:: _) = res
