{-# LANGUAGE UndecidableInstances #-}
-- | Analysis to analyse the inner actor semantics
module Analysis.SimpleActor.Fixpoint.Sequential(analyze) where


------------------------------------------------------------
-- Imports
------------------------------------------------------------

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics
import Analysis.Actors.Monad

import Data.Map (Map)
import Data.Function ((&))
import Data.Functor.Identity

import Analysis.Monad hiding (eval)
import Syntax.AST
import Analysis.Monad.Stack (MonadStack)
import Analysis.Monad.Fix
import Control.Monad (void)
import Control.Monad.Escape
import Data.Set (Set)
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)
import qualified Data.Map as Map
import Data.Kind (Type, Constraint)
import Domain.SimpleActor
import Analysis.Symbolic.Monad
    ( FormulaT )
import Solver.Z3 (runZ3SolverWithSetup)
import Solver
import Symbolic.AST ( emptyPC, PC )
import qualified Symbolic.SMT as SMT
import Analysis.Store (CountingMap, Store (..))
import Data.Maybe
import Analysis.Context (emptyMcfaContext)
import Control.Monad.State
import qualified RIO.Set as Set
import Data.Tuple.Syntax

import Analysis.SimpleActor.Fixpoint.Common
import Control.Monad.Identity (IdentityT)
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Cond (ifM)
import Control.Monad.Reader
import Control.Monad.Join (mzero, MonadBottom)
import qualified Analysis.Monad.Map as MapM
import Control.Monad ((>=>))

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
                  ] (ActorStoreT Identity)


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


instance (MonadDependencyTriggerTracking ActorRef a m, MapM ActorRef (CountingMap a v) m, WorkListM m ActorRef, MonadBottom m, DependencyTrackingM m ActorRef  a, StoreM a v m) => StoreM a v (SequentialIntraT m) where
  storeSize = upperM (storeSize @a @v)
  lookupAdr adr = ifM (hasAdr adr)
       {- then -} (upperM $ lookupAdr adr)
       {- else -} -- Trigger contributions of the address and register our interest
           (ask >>= register adr >> (triggers adr >>= adds) >> mzero)
  writeAdr adr vlu = do
    cmp <- ask
    -- write the value to the input stores of all dependent actors,
    -- except ourselves, MapM ensures that dependent actors only get reanalyzed whenever
    -- the store changes.
    deps <- Set.filter (/= cmp) <$> dependent adr
    mapM_ (\cmp' -> MapM.get cmp' >>= maybe (MapM.put cmp' $ extendSto adr vlu emptySto) (MapM.joinWith cmp' . updateSto adr vlu)) deps
    -- and write as usual
    upperM $ writeAdr adr vlu

  updateWith fs fw a = do
    -- same as in @writeAdr@
    cmp <- ask
    deps <- Set.filter (/= cmp) <$> dependent a
    mapM_ (\cmp' -> MapM.get cmp' >>= (MapM.joinWith cmp' . updateStoWith fs fw a) . fromMaybe emptySto) deps
    upperM (updateWith fs fw a)

  hasAdr = upperM . (hasAdr @a)


  ------------------------------------------------------------
-- Actor-modular monadic requirements
------------------------------------------------------------

type MonadActorModular m = (
    -- Every actor has its own local store
    MapM ActorRef ActorStos m,
    -- Dependencies can be tracked between the stores
    -- of each actor, in order to find which memory is shared.
    MonadActorStoreDependencyTracking m
  )

------------------------------------------------------------
-- Sequential analysis
------------------------------------------------------------

-- | Analyze a single actor until a fix point is reached
analyze :: ActorExp   -- ^ the program of the actor
        -> ActorEnv   -- ^ contains only the captured variables of the actor
        -> m ActorVlu
analyze = undefined
