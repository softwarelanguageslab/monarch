{-# LANGUAGE DataKinds, TypeOperators, UndecidableInstances, TypeApplications, DeriveGeneric #-}
{-# LANGUAGE RankNTypes, ScopedTypeVariables, RecordWildCards #-}
module ASE.Machines.Test where

import ASE.Domain.SymbolicVariable
import ASE.Fixpoint
import ASE.Semantics
import ASE.Syntax
import ASE.Machine
import Analysis.Monad.Stack
import Analysis.Symbolic.Monad (FormulaT, runWithFormulaT)
import Analysis.Monad.Allocation (AllocT, runAlloc)
import Analysis.Monad.Cache (CacheT, Val, CachedVal, run)
import Analysis.Monad.Map (MapM(joinWith), MapT)
import qualified Analysis.Monad.Cache as Cache
import Analysis.Monad.Environment (EnvT)
import Analysis.Monad.Store (StoreT, runStoreT)
import Analysis.Monad.Join (NonDetT, runNonDetT)
import Control.Monad.Join(MonadBottom(mzero))
import Analysis.Monad.WorkList
import Analysis.Monad.DependencyTracking
import Analysis.Monad.ComponentTracking
import Analysis.Monad.IntraAnalysis
import Control.Monad.Escape (MayEscapeT, MayEscape(..))
import Control.Monad.DomainError
import Analysis.Monad.Widen
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)
import Domain.Symbolic.Class
import Data.Kind
import Data.Maybe
import qualified Data.Map as Map
import Data.Random (RandomSeq)
import Data.Tuple.Extra
import Data.TypeLevel.HList
import qualified Data.TypeLevel.HList as HList
import qualified Data.Random as Random
import Lattice.Class (Joinable, BottomLattice, PartialOrder)
import qualified Lattice.Class as L
import RIO hiding (mzero)
import qualified RIO.Set as Set
import Symbolic.AST (emptyPC)
import Syntax.Span
import GHC.IO (unsafePerformIO)
import Domain.Symbolic.Path (joinPC)
import Analysis.Monad (runNonDetT)

------------------------------------------------------------
-- Utilities
------------------------------------------------------------

-- | Store that always uses a map for its backing storage
type StoreT' adr v = StoreT (Map adr v) adr v

-- Enumeration of all relevant stores
-- | Continuation store
type KSto = Map (KAdr K) (Set (KKont K))
-- | Failure continuation store
type FSto = Map (FAdr K) (Set (FKont K))
-- | Value store
type VSto = Map (VAdr K) V
-- | Pair store
type PSto = Map (PAdr K) (PaiDom V)
-- | String store
type SSto = Map (SAdr K) (StrDom V)
-- | Vector store
type CSto = Map (CAdr K) (VecDom V)

------------------------------------------------------------
-- Stack
------------------------------------------------------------

type FlowT m = MonadStack '[
         -- Symbolic execution
         FormulaT SymbolicVariable V,
         AbstractCountT SymbolicVariable,
         -- Store
         StoreT' (KAdr K) (Set (KKont K)),
         StoreT' (FAdr K) (Set (FKont K)),
         StoreT' (VAdr K) V,
         StoreT' (PAdr K) (PaiDom V),
         StoreT' (SAdr K) (StrDom V),
         StoreT' (CAdr K) (VecDom V),
         -- Model
         ModelT SymbolicVariable V,
         -- Random input
         InputT (Abstract V),
         CacheT,
         -- Non-determinism
         NonDetT
   ] m

-- | The monadic stack for the flow sensitive configuration of the machine
type StackT m = MonadStack '[
         MayEscapeT (Set DomainError),
         ContinuationT K,
         -- Allocation
         AllocT Span K (KAdr K),
         AllocT Span K (FAdr K),
         AllocT Span PC SymbolicVariable,
         AllocT Span K (VAdr K),
         AllocT Exp  K (PAdr K),
         AllocT Exp  K (SAdr K),
         AllocT Exp  K (CAdr K),
         -- Context
         SmallstepContextT K,
         SmallstepContextT PC,
         -- Environment
         EnvT (Env K),
         CacheT,
         ----------------------------------------
         -- Copy of @FlowT@ due to Haskell limitations
         ----------------------------------------
         -- Symbolic execution
         FormulaT SymbolicVariable V,
         AbstractCountT SymbolicVariable,
         -- Store
         StoreT' (KAdr K) (Set (KKont K)),
         StoreT' (FAdr K) (Set (FKont K)),
         StoreT' (VAdr K) V,
         StoreT' (PAdr K) (PaiDom V),
         StoreT' (SAdr K) (StrDom V),
         StoreT' (CAdr K) (VecDom V),
         -- Model
         ModelT SymbolicVariable V,
         -- Random input
         InputT (Abstract V),
         CacheT,
         -- Non-determinism
         NonDetT
      ] m

------------------------------------------------------------
-- States
------------------------------------------------------------

-- | A small-step state, without its widened components
newtype StepState   = StepState { stepState :: StepState' }
                  deriving (Ord, Eq, Show, Generic)
instance NFData StepState
type StepState' = Unescape (Val (StackT Identity) (Ctrl V K))
-- | Internal type of widened values
type FlowState a    = Val (FlowT Identity) a
-- | Widened values as a type-level list
type FlowList       = Tail (Unnest (FlowState ()))

-- | The initial step state
initialStepState :: Configuration K V -> StepState 
initialStepState cfg =  StepState $ 
                        Ev (e0 cfg) (ρ0 cfg)
                    <+> initialContinuationStack -- continuation 
                    <+> []                       -- context
                    <+> emptyPC                  -- model context

-- | The initial contents of widened state components 
initialState :: StepState -> Configuration K V -> State StepState FlowList
initialState step cfg@Configuration { .. } =  
                          (init emptyPC)           -- path constraint
                      :+: (init Map.empty)         -- count mapping
                      :+: (init Map.empty)         -- continuation stores 
                      :+: (init Map.empty)         -- failure continuation stores 
                      :+: (init σ0)                -- value stores (including primitives)
                      :+: (init initialHeapSto)    -- pair stores 
                      :+: (init Map.empty)         -- string stores
                      :+: (init Map.empty)         -- vector stores
                      :+: (init Map.empty)         -- model
                      :+: (init Random.initialSeq) -- infinite random sequence
                      :+: nil
   where s0   = step
         init :: a -> Map StepState a
         init = Map.singleton s0

------------------------------------------------------------
-- Running
------------------------------------------------------------

-- | Run the evaluation function a single @StepState)
runStep :: forall m . (GetAll StepState FlowList, PutAll StepState FlowList, AllMapM StepState FlowList m, Monad m)
        => (Ctrl V K -> StackT m (Ctrl V K)) 
        -> StepState 
        -> m (Set StepState)
runStep f step@StepState { .. } = (fromMaybe (error "initial state should be present")) <$> getAll step >>= inter
  where intra = ( Cache.run f stepState'
                 & runAlloc KAdr
                 & runAlloc FAdr
                 & runAlloc symbolicVariable
                 & runAlloc VAdr
                 & runAlloc PAdr
                 & runAlloc SAdr
                 & runAlloc CAdr ) >>= (isEscape . unnest)
        inter :: HList FlowList -> m (Set StepState)
        inter st = (Cache.run @(FlowT m) (const intra) (uncons (() :+: st)) >>= putWidened . unnest)
                 & runNonDetT
                 & fmap setFromList
        setFromList [] = traceShow ("no successors for " ++ show step) Set.empty 
        setFromList xs = Set.fromList xs
        stepState' = (stepState, Map.empty)
        putWidened :: forall m . (PutAll StepState FlowList, AllMapM StepState FlowList m) => HList (StepState ': FlowList) -> m StepState 
        putWidened (step' :+: st') = joinWithAll step' st' >> return step'
        isEscape :: forall m . MonadBottom m => HList (Unnest (Val (StackT m) (Ctrl V K))) -> m StepState
        isEscape (Value v :+: rest) = return $ StepState $ uncons $ v :+: rest
        isEscape (MayBoth v _ :+: rest) = return $ StepState $ uncons $ v :+: rest
        isEscape (Escape e :+: rest) = {- traceShow ("bottom " ++ show e ++ " for " ++ show step) $ -} mzero

-- | Standard @collect@ function for flow sensitive analysis
run ::  forall m . (GetAll StepState FlowList, PutAll StepState FlowList, AllMapM StepState FlowList m, Monad m)
        => (Ctrl V K -> StackT m (Ctrl V K)) 
        -> Set StepState 
        -> m (Set StepState)
run f = foldMapM (runStep f)

------------------------------------------------------------
-- Effect-driven fixpoint related
------------------------------------------------------------

type AnalysisT m = StackT (MonadStack '[
                              IntraAnalysisT StepState, 
                              DependencyTrackingT StepState StepState,
                              ComponentTrackingT StepState, 
                              WorkListT (Set StepState)
                           ] (WidenedT StepState FlowList m))
type FlowOutput = State StepState FlowList

status :: (MonadIO m, ComponentTrackingM m StepState) => a -> m a
status a =  do
   seen <- components
   -- liftIO $ putStrLn $ "seen set size : " ++ show (Set.size seen)
   return a

analyze :: forall m . (MonadIO m, Monad m) => (Ctrl V K -> AnalysisT m (Ctrl V K)) -> Configuration K V -> m (Set StepState, FlowOutput)
analyze f cfg = iterateWLDebug step0 (\st -> (runStep f st >>= mapM_ spawn >>= status)
                                        & runIntraAnalysis st)
              & runWithDependencyTracking 
              & execWithComponentTracking 
              & runWithWorkList 
              & runWidenedT @StepState @FlowList state0 
   where step0  = initialStepState cfg
         state0 = initialState step0 cfg
