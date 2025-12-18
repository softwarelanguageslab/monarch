{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE LambdaCase #-}
{- HLINT ignore "Use fewer imports" -}
-- | Analysis to analyse the inner actor semantics
module Analysis.SimpleActor.Fixpoint.SequentialModConc(
        analyze
      , spanOfCmp
      , SequentialCmp
      , SequentialRes
      , ActorRes(..)
      , MB
      , escapeRes
      , CountMax) where

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
import Data.Tuple.Syntax

import Analysis.SimpleActor.Fixpoint.Common
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Reader
import Control.Monad.Join (MonadBottom, mbottom)
import qualified Analysis.Monad.Map as MapM
import RIO hiding (exp, trace, join)
import Control.Fixpoint.WorkList (LIFOWorklist)
import Domain.Actor (ARef)
import Syntax (SpanOf(spanOf))
import Domain.Core.PairDomain.TopLifted ()
import Analysis.Monad.Partition (PartitionT)
import qualified Analysis.Partition as Partition
import Analysis.Monad.AbstractCount
import Analysis.Counting (CountMap' (..))
import Domain.Core.Count.BoundedCount
import Data.Maybe (fromJust)
import qualified Lattice.BottomLiftedLattice as BL
import qualified Domain.Core.Count.BoundedCount as Count
import qualified Data.Map as Map

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | A component in the sequential analysis
type SequentialCmp = Key (SequentialT Identity) Cmp
type SequentialRes = Val (SequentialT Identity) ActorVlu

escapeRes :: SequentialRes -> MayEscape (Set ActorError) ActorVlu
escapeRes = \case (a ::*:: _ ::*:: _) -> a

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
                       LocalPartitionedMailboxT Partition ActorVlu MB,
                       ActorLocalT ActorVlu,
                       CtxT K,
                       PartitionT Partition,
                       CacheT,
                       AbstractCountT MailboxLabel BoundedCount, 
                       JoinT
                  ] m

-- | SequentialIntraM denotes the remaining constraints needed for running the intra
-- analysis.
type InterAnalysisM m = (MonadSchemeStore m,
                         MapM SequentialCmp SequentialRes m,
                         MapM CountIn (CountMap' MailboxLabel BoundedCount) m,
                         MapM CountOut (CountMap' MailboxLabel BoundedCount) m,
                         WorkListM m SequentialCmp,
                         ComponentTrackingM m SequentialCmp,
                         DependsOn m SequentialCmp '[
                             SequentialCmp ,
                             SchemeAdr Exp K,
                             Pid Exp K,
                             CountIn,
                             CountOut
                           ],
                         -- MonadMailbox ActorVlu m,
                         MonadMailbox' ActorRef PMB m,
                         MonadSpawn ActorVlu K m,
                         MonadIO m,
                         -- Flow sensitive stores
                         StoreM ActorAdr (StoreVal ActorVlu) m,
                         -- Mailboxes
                         MonadDependencyTracking ActorRef (MailboxDep ActorRef PMB) m,
                         MonadPartitionedMailboxSend Partition ActorRef ActorVlu MB m
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
                  AdrCtx callSites maxCallSites . ActorCtx <$> getSelf

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
    MonadDependencyTracking ActorRef (MailboxDep ActorRef PMB) m,
    -- The sequential analysis can trigger new actors to be spawned
    WorkListM m ActorRef,
    -- Global mailboxes
    -- MonadMailbox ActorVlu m,
    MonadMailbox' (ARef ActorVlu) PMB m,
    MonadPartitionedMailboxSend Partition ActorRef ActorVlu MB m,
    -- Spawning actors
    MonadSpawn ActorVlu K m,
    -- Keep track of results for each function call within
    -- the actor.
    MapM ActorResOut ActorRes m,
    MapM CountMax LabelCounts m,
    -- Global store for shared variables
    StoreM ActorAdr (StoreVal ActorVlu) m,
    -- Other constraints
    MonadBottom m,
    MonadIO m
  )


------------------------------------------------------------
-- Label counting
------------------------------------------------------------

newtype CountIn = CountIn SequentialCmp
                deriving (Ord, Eq, Show)
newtype CountOut = CountOut SequentialCmp
                deriving (Ord, Eq, Show)
newtype CountMax = CountMax ActorRef
                deriving (Ord, Eq, Show)
type LabelCount = CountMap' MailboxLabel BoundedCount

-- | Add flow-sensitive counting of mailbox labels
counting :: (MonadAbstractCount MailboxLabel BoundedCount m,
             MapM CountIn LabelCount m,
             MapM CountOut LabelCount m,
             MonadBottom m,
             MonadCache m,
             Key m Cmp ~ SequentialCmp)
         => (Cmp -> AroundT Cmp ActorVlu m ActorVlu)
         -> Cmp -> AroundT Cmp ActorVlu m ActorVlu
counting inner cmp = do
      k <- upperM $ key cmp
      counts <- getCounts
      MapM.joinWith (CountIn k) (CountingMap counts)
      v <- inner cmp
      countOut <- maybe mbottom return =<< MapM.get (CountOut k)
      putCounts (getCountingMap countOut)
      return v
                       

------------------------------------------------------------
-- Sequential analysis
------------------------------------------------------------

spanOfCmp :: SequentialCmp -> Span
spanOfCmp (exp ::*:: _ ::*:: _ ::*:: _ ::*:: _ ::*:: _ ::*:: _ ::*:: _) = spanOf exp

type IntraT m = SequentialT (IntraAnalysisT SequentialCmp m)

-- | Intra-analysis
intra :: forall m . InterAnalysisM m => ActorRef -> SequentialCmp -> m ()
intra _ cmp = do    
      countIn <- fromJust <$> MapM.get (CountIn cmp)
      result <- runFixT @(IntraT m)
                 (runAroundT
                    counting
                    .
                    (eval @_ @_ @_ @Partition @MB))
                 cmp
       & runAlloc VarAdr -- TODO: use the actual context
       & runAlloc PtrAdr -- problem: current context is infinite
       & runAbstractCountT countIn 
       & runJoinT
       & runIntraAnalysis cmp
      case result of
            BL.Bottom -> return ()
            BL.Value ((), count') -> MapM.put (CountOut cmp)  count'


-- | Inter-analysis
inter :: InterAnalysisM m
      => LabelCounts
      -> Exp         -- ^ the actor expression to analyze
      -> ActorEnv    -- ^ the environment of variables captured by the actor expression
      -> ActorRef    -- ^ the current actor reference
      -> PMB         -- ^ the initial mailbox
      -> m ()
inter labelCounts exp environment ref mb = do
      MapM.put (CountIn initialCmp) (CountingMap labelCounts)
      iterateWL' initialCmp (intra ref)
  where initialCmp = ActorExp exp         -- component to analyze
                <+> environment           -- initial lexical environment
                <+> initialDynEnvironment -- initial dynamic environment 
                <+> False                 -- whether the component is a meta-component and should be analyzed with higher precision
                <+> mb                    -- initial mailbox
                <+> ref                   -- current `self`
                <+> initialContext 5      -- address context
                <+> Partition.empty       -- the empty partition
                -- <+> emptyPC

-- | Analyze a single actor until a fix point is reached
analyze :: forall m  . MonadActorModular m
        => LabelCounts 
        -> ActorExp             -- ^ the program of the actor
        -> ActorEnv             -- ^ contains only the captured variables of the actor
        -> ActorRef             -- ^ the current actor reference
        -> m ()
analyze labelCounts exp env ref = do
      -- retrieve the initial mailbox
      mb   <- getMailbox ref
      -- compute the analysis of the actor and all its turns (according to its mailbox)
      res  <- inter labelCounts exp env ref mb
            & runWithMapping @SequentialCmp @SequentialRes
            & runWithMapping @CountIn @LabelCount
            & runWithMapping @CountOut @LabelCount
            & runWithComponentTracking @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @SequentialCmp
            & runWithDependencyTracking @SequentialCmp @(SchemeAdr Exp K)
            & runWithDependencyTracking @SequentialCmp @ActorRef
            & runWithDependencyTracking @SequentialCmp @CountIn
            & runWithDependencyTracking @SequentialCmp @CountOut
            -- & runWithWorklistProfilingT @SequentialCmp
            & runWithWorkList @(LIFOWorklist SequentialCmp)
            & runDebugIntraAnalysis ref
            -- & runIntraAnalysis ref
            -- & runStoreT @ActorSto @(SchemeAdr Exp K) @(StoreVal ActorVlu) sto

      MapM.put (ActorResOut ref) (extractVal res)
      MapM.put (CountMax ref) (maxCount res)
  where extractVal (_ ::*:: res ::*:: _ ::*:: _) = ActorRes res
        maxCount (_ ::*:: _ ::*:: _ ::*:: counter) =
            foldr (Map.unionWith Count.max . getCountingMap) Map.empty $ Map.elems counter
