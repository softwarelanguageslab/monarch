{-# LANGUAGE DataKinds #-}
module ASE.Machines.FlowSensitive where 

import ASE.Domain.SymbolicVariable
import ASE.Semantics
import ASE.Syntax
import ASE.Machine
import Analysis.Monad.Stack
import Analysis.Symbolic.Monad (FormulaT)
import Analysis.Monad.Allocation (AllocT)
import Analysis.Monad.Cache (CacheT, Val)
import Analysis.Monad.Environment (EnvT)
import Analysis.Monad.Store (StoreT)
import Analysis.Monad.Join (NonDetT, runNonDetT) 
import Control.Monad.Escape (MayEscapeT)
import Control.Monad.DomainError
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)
import Domain.Symbolic.Class
import RIO
import Syntax.Span

-- | Store that always uses a map for its backing storage
type StoreT' adr v = StoreT (Map adr v) adr v


-- | The monadic stack for the flow sensitive configuration of the machine
type StackT m = MonadStack '[
         MayEscapeT (Set DomainError),
         ContinuationT K,
         AbstractCountT SymbolicVariable,
         -- Allocation
         AllocT Span K (KAdr K),
         AllocT Span K (FAdr K),
         AllocT Span K SymbolicVariable,
         AllocT Span K (VAdr K),
         AllocT Exp  K (PAdr K), 
         AllocT Exp  K (SAdr K), 
         AllocT Exp  K (CAdr K),
         -- Context
         SmallstepContextT K, 
         -- Model
         ModelT SymbolicVariable V,
         -- Random input
         InputT (Abstract V),
         -- Environment
         EnvT (Env K),
         CacheT, 
         -- Symbolic execution
         FormulaT SymbolicVariable V,
         -- Store
         StoreT' (KAdr K) (Set (KKont K)), 
         StoreT' (FAdr K) (Set (FKont K)),
         StoreT' (VAdr K) V,
         StoreT' (PAdr K) (PaiDom V), 
         StoreT' (SAdr K) (StrDom V), 
         StoreT' (CAdr K) (VecDom V),
         -- Non-determinism
         NonDetT
      ] m

-- | Small-step state without the widening for per state.
type StepState = Val (StackT Identity) (Ctrl V K)

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

-- | Mapping between a step state and some part of 
-- its state.
type Flow s = Map StepState s

-- | The entire state including the parts that are widened 
-- per state (i.e., per StepState)
data State = State {
      -- | Small-step state
      stepState :: StepState, 
      -- Stores
      kflow     :: Flow KSto, 
      fflow     :: Flow FSto, 
      vflow     :: Flow VSto, 
      pflow     :: Flow PSto, 
      sflow     :: Flow SSto, 
      cflow     :: Flow CSto, 
      -- | Path constraint per small-step state
      φflow     :: Flow PC
   } deriving (Ord, Eq, Show)

-- | Run an evaluation function in a flow-sensitive manner and generate its 
-- successor states.
runFlowSensitive :: (Ctrl V K -> StackT m (Ctrl V K)) -> State -> m State
runFlowSensitive = undefined
