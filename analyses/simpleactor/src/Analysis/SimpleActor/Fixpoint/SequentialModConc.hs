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
import Domain.Core.AbstractCount (AbstractCount)
import qualified Analysis.Counting as CountMap
import Lattice.Class (PartialOrder(leq))

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | A component in the sequential analysis
type SequentialCmp = Key (SequentialT Identity) Cmp
type SequentialRes = Val (SequentialT Identity) ActorVlu
type SeqCmpCount   = CountMap' SequentialCmp AbstractCount

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
                       CacheT
                  ] m

type UncachedSequentialT m =
      MonadStack '[
           AbstractCountT MailboxLabel BoundedCount,
           -- AbstractCountT SequentialCmp AbstractCount,
           JoinT
      ] m

-- | SequentialIntraM denotes the remaining constraints needed for running the intra
-- analysis.
type InterAnalysisM m = (MonadSchemeStore m,
                         MapM SequentialCmp SequentialRes m,
                         -- Count how many times the label is reachable according to the analysis.
                         -- Whenever precision of the analysis increases, these counts will also
                         -- be more precise.
                         MapM CountIn (CountMap' MailboxLabel BoundedCount) m,
                         MapM CountOut (CountMap' MailboxLabel BoundedCount) m,
                         -- To accurately track these, abstract counts related to components
                         -- need to be tracked. And if component count > 1 then the label
                         -- count needs to be marked infinite as well. (otherwise the result is unsound)
                         -- MapM CmpCountIn (CountMap' SequentialCmp AbstractCount) m,
                         -- MapM CmpCountOut (CountMap' SequentialCmp AbstractCount) m,
                         WorkListM m SequentialCmp,
                         ComponentTrackingM m SequentialCmp,
                         DependsOn m SequentialCmp '[
                             SequentialCmp ,
                             SchemeAdr Exp K,
                             Pid Exp K,
                             CountIn,
                             CountOut,
                             CmpCountIn
                             -- CmpCountOut
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
      getCtx = do ctx <- upperM getCtx
                  case ctx of
                        (AdrCtx callSites maxCallSites _) ->
                              AdrCtx callSites maxCallSites . ActorCtx <$> getSelf
                        InsensitiveCtx ->
                              return InsensitiveCtx

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
newtype CmpCountIn = CmpCountIn SequentialCmp
                   deriving (Ord, Eq, Show)
newtype CmpCountOut = CmpCountOut SequentialCmp
                    deriving (Ord, Eq, Show)
type LabelCount = CountMap' MailboxLabel BoundedCount

-- | Add flow-sensitive counting of mailbox labels
counting :: (MonadAbstractCount MailboxLabel BoundedCount m,
             -- MonadAbstractCount SequentialCmp AbstractCount m,
             MapM CountIn LabelCount m,
             MapM CountOut LabelCount m,
             -- MapM CmpCountIn SeqCmpCount m,
             -- MapM CmpCountOut SeqCmpCount m,
             MonadBottom m,
             MonadCache m,
             -- MonadIO m,
             Key m Cmp ~ SequentialCmp)
         => SequentialCmp
         -> (Cmp -> AroundT Cmp ActorVlu m ActorVlu)
         -> Cmp -> AroundT Cmp ActorVlu m ActorVlu
counting outerCmp inner cmp = do
      k <- upperM $ key cmp
      counts <- getCounts
      -- cmpCounts <- getCounts

      _ <- MapM.get (CountIn k) -- TODO: this seems to be necessary for a correct result, it could be related to dependency tracking which means that some things are not triggered correctly,
      -- if so this is just a bandaid... 
      outCount <- fromMaybe CountMap.emptyCountMap <$> MapM.get (CountOut outerCmp)

      -- TODO: it should actually be an invariant that the outCount is actually
      -- always smaller or equal, otherwise we are overwriting data.
      -- Normally the semantics of the analysis ensures this, but this does not seem
      -- to be the case here, perhaps due to branching? So for now always keep the biggest
      -- one which should be sound.
      if not (leq (CountingMap counts) outCount)
      then MapM.put (CountOut outerCmp) (CountingMap counts)
      else return ()

      MapM.joinWith (CountIn k) (CountingMap counts)
      -- MapM.joinWith (CmpCountIn k) (CountingMap cmpCounts)

      -- liftIO (putStrLn $ "Analyzing inner " ++ show cmp)
      v <- inner cmp

      countOut <- maybe mbottom return =<< MapM.get (CountOut k)
      -- cmpCountOut <- maybe mbottom return =<< MapM.get (CmpCountOut k)

      putCounts (getCountingMap countOut)
      -- putCounts (getCountingMap cmpCountOut)
      return v


------------------------------------------------------------
-- Sequential analysis
------------------------------------------------------------

spanOfCmp :: SequentialCmp -> Span
spanOfCmp (exp ::*:: _ ::*:: _ ::*:: _ ::*:: _ ::*:: _ ::*:: _ ::*:: _) = spanOf exp

type IntraT m = SequentialT (UncachedSequentialT (IntraAnalysisT SequentialCmp m))

-- | Intra-analysis
intra :: forall m . InterAnalysisM m => ActorRef -> SequentialCmp -> m ()
intra _ cmp = do
      countIn <- fromJust <$> MapM.get (CountIn cmp)
      -- cmpCountIn <- fromJust <$> MapM.get (CmpCountIn cmp)
      -- MapM.put (CmpCountIn cmp) (CountMap.increment cmp cmpCountIn)
      result <- runFixT @(IntraT m)
                 (runAroundT
                    (counting cmp)
                    .
                    (eval @_ @_ @_ @Partition @MB))
                 cmp
       & runAlloc (const . flip VarAdr InsensitiveCtx) -- TODO: use the actual context
       & runAlloc (const . flip PtrAdr InsensitiveCtx) -- problem: current context is infinite
       & runAbstractCountT @MailboxLabel countIn
       -- & runAbstractCountT @SequentialCmp cmpCountIn
       & runJoinT
       & runIntraAnalysis cmp
      case result of
            BL.Bottom -> return ()
            BL.Value ((), count') -> do
                  MapM.put (CountOut cmp)  count'
                  -- MapM.put (CmpCountOut cmp) cmpCount'


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
      -- MapM.put (CmpCountIn initialCmp) CountMap.emptyCountMap
      iterateWL' initialCmp (intra ref)
  where initialCmp = ActorExp exp         -- component to analyze
                <+> environment           -- initial lexical environment
                <+> initialDynEnvironment -- initial dynamic environment 
                <+> False                 -- whether the component is a meta-component and should be analyzed with higher precision
                <+> mb                    -- initial mailbox
                <+> ref                   -- current `self`
                <+> initialContext 0      -- address context
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
            -- & runWithMapping @CmpCountIn @SeqCmpCount
            & runWithMapping @CmpCountOut @SeqCmpCount
            & runWithComponentTracking @SequentialCmp
            & runWithDependencyTracingTracking @SequentialCmp @SequentialCmp
            & runWithDependencyTracingTracking @SequentialCmp @(SchemeAdr Exp K)
            & runWithDependencyTracingTracking @SequentialCmp @ActorRef
            & runWithDependencyTracingTracking @SequentialCmp @CountIn
            & runWithDependencyTracingTracking @SequentialCmp @CountOut
            & runWithDependencyTracingTracking @SequentialCmp @CmpCountIn
            & runWithDependencyTracingTracking @SequentialCmp @CmpCountOut
            -- & runWithWorklistProfilingT @SequentialCmp
            & runWithWorkList @(LIFOWorklist SequentialCmp)
            & runDebugIntraAnalysis ref
            -- & runIntraAnalysis ref
            -- & runStoreT @ActorSto @(SchemeAdr Exp K) @(StoreVal ActorVlu) sto

      MapM.put (ActorResOut ref) (extractVal res)
      MapM.put (CountMax ref) (maxCount res)
  where extractVal (_ ::*:: res ::*:: _ ::*:: _ ::*:: _) = ActorRes res
        maxCount (_ ::*:: _ ::*:: _ ::*:: counter ::*:: _) =
            foldr (Map.unionWith Count.max . getCountingMap) Map.empty $ Map.elems counter
