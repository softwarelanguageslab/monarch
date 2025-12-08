{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE LambdaCase #-}
-- | Analysis to analyse the inner actor semantics
module Analysis.SimpleActor.Fixpoint.SequentialModConc(analyze, spanOfCmp, SequentialCmp, SequentialRes, ActorRes(..), MB, escapeRes) where

------------------------------------------------------------
-- Imports
------------------------------------------------------------

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics
import Analysis.Actors.Monad

import Data.Functor.Identity

import Analysis.Monad hiding (eval, spawn, store)
import Syntax.AST hiding (Trace)
import Analysis.Monad.Stack (MonadStack)
import Analysis.Monad.Fix
import Control.Monad.Escape
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store
import Domain.Scheme.Class (Adr)
import qualified RIO.Set as Set
import Data.Tuple.Syntax

import Analysis.SimpleActor.Fixpoint.Common
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Reader
import Control.Monad.Join (MonadBottom)
import qualified Analysis.Monad.Map as MapM
import RIO hiding (exp, trace, join)
import Control.Fixpoint.WorkList (LIFOWorklist)
import Domain.Actor (ARef)
import Syntax (SpanOf(spanOf))
import Domain.Core.PairDomain.TopLifted ()
import qualified Lattice.BottomLiftedLattice as BL

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | A component in the sequential analysis
type SequentialCmp = Key (SequentialT Identity) Cmp
type SequentialRes = Val (SequentialT Identity) ActorVlu

escapeRes :: SequentialRes -> MayEscape (Set ActorError) ActorVlu
escapeRes = \case BL.Bottom -> Escape Set.empty
                  BL.Value (a ::*:: _) -> a

------------------------------------------------------------
-- Monad stack
------------------------------------------------------------

type SequentialT m = MonadStack '[
                       MayEscapeT (Set ActorError),
                       EnvT ActorEnv,
                       DynamicBindingT' (Adr ActorVlu),
                       AllocT Ide K (SchemeAdr Exp K),
                       AllocT Exp K (SchemeAdr Exp K),
                       MetaT,
                       LocalMailboxT ActorVlu MB,
                       ActorLocalT ActorVlu,
                       CtxT K,
                       JoinT,
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
                           ],
                         -- MonadMailbox ActorVlu m,
                         MonadMailbox' ActorRef MB m,
                         MonadSpawn ActorVlu K m,
                         MonadIO m,
                         -- Flow sensitive stores
                         StoreM ActorAdr (StoreVal ActorVlu) m,
                         -- Mailboxes
                         MonadDependencyTracking ActorRef (MailboxDep ActorRef MB) m,
                         MonadSend ActorVlu m
                        )


------------------------------------------------------------
-- Mailbox-sensitive address allocation
------------------------------------------------------------

-- | Address allocation is rendered 'mailbox-sensitive' by consulting
-- the current mailbox contents every time `getCtx` is called. 
instance (CtxM m K, MonadActorLocal ActorVlu m, Monad m) => CtxM (LocalMailboxT ActorVlu MB m) K where
      withCtx f m = do
            ctx <- getCtx
            lowerM (withCtx (const (f ctx))) m
      getCtx = do (AdrCtx callSites maxCallSites _) <- upperM getCtx
                  AdrCtx callSites maxCallSites <$> (ActorCtx <$> getSelf)

------------------------------------------------------------
-- Actor modular requirements
------------------------------------------------------------

-- | Collected results
newtype ActorRes = ActorRes {
            -- | Result for each component in the inner-actor analysis
            cmpRes :: Map SequentialCmp SequentialRes    
      } deriving (Ord, Eq, Show)

type MonadActorModular m = (
    -- Dependencies can be tracked between the stores
    -- of each actor, in order to find which memory is shared.
    MonadActorStoreDependencyTracking m,
    MonadDependencyTracking ActorRef (MailboxDep ActorRef MB) m,
    -- The sequential analysis can trigger new actors to be spawned
    WorkListM m ActorRef,
    -- Global mailboxes
    -- MonadMailbox ActorVlu m,
    MonadMailbox' (ARef ActorVlu) MB m,
    MonadSend ActorVlu m,
    -- Spawning actors
    MonadSpawn ActorVlu K m,
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

spanOfCmp :: SequentialCmp -> Span
spanOfCmp (exp ::*:: _ ::*:: _ ::*:: _ ::*:: _ ::*:: _ ::*:: _) = spanOf exp

-- | Intra-analysis
intra :: forall m . InterAnalysisM m => ActorRef -> SequentialCmp -> m ()
intra _ cmp = do
          runFixT @(SequentialT (IntraAnalysisT SequentialCmp m)) eval cmp
                        & runAlloc VarAdr -- TODO: use the actual context
                        & runAlloc PtrAdr -- problem: current context is infinite
                        & runIntraAnalysis cmp
                        & void


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
                <+> False                 -- whether the component is a meta-component and should be analyzed with higher precision
                <+> mb                    -- initial mailboxes
                <+> ref                   -- current `self`
                <+> initialContext 5      -- address context
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
            & runWithComponentTracking @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @(SchemeAdr Exp K)
            & runWithDependencyTracking @SequentialCmp @ActorRef
            -- & runWithWorklistProfilingT @SequentialCmp
            & runWithWorkList @(LIFOWorklist SequentialCmp)
            & runDebugIntraAnalysis ref
            -- & runIntraAnalysis ref
            -- & runStoreT @ActorSto @(SchemeAdr Exp K) @(StoreVal ActorVlu) sto

      MapM.put (ActorResOut ref) (extractVal res)
  where extractVal (_ ::*:: res) = ActorRes res 
