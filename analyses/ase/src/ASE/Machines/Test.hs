{-# LANGUAGE DataKinds, TypeOperators, UndecidableInstances, TypeApplications #-}
{-# LANGUAGE RankNTypes, ScopedTypeVariables #-}
module ASE.Machines.Test where

import ASE.Domain.SymbolicVariable
import ASE.Fixpoint
import ASE.Semantics
import ASE.Syntax
import ASE.Machine
import Analysis.Monad.Stack
import Analysis.Symbolic.Monad (FormulaT, runWithFormulaT)
import Analysis.Monad.Allocation (AllocT, runAlloc)
import Analysis.Monad.Cache (CacheT, Val, run)
import qualified Analysis.Monad.Cache as Cache
import Analysis.Monad.Environment (EnvT)
import Analysis.Monad.Store (StoreT, runStoreT)
import Analysis.Monad.Join (NonDetT, runNonDetT)
import Control.Monad.Escape (MayEscapeT, MayEscape(..))
import Control.Monad.DomainError
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
import RIO
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

type family WidenPerState (h :: [Type]) where
   WidenPerState (t ': ts) = t ': FMap (Map StepState) ts

------------------------------------------------------------
-- States
------------------------------------------------------------

type StepState   = HList (Unnest (Unescape (Val (StackT Identity) (Ctrl V K))))
type StateKey    = Unescape (Val (FlowT Identity) StepState)
type StateKey'   = Unescape (Val (FlowT Identity) (Set StepState))

type StateSingle = HList (Unnest StateKey)
type State       = HList (WidenPerState (Unnest (Unescape (Val (FlowT Identity) (Set StepState)))))

fromTuple :: StateSingle -- ^ a tuple representing the output of a single run
          -> State
fromTuple (st :+: s') = Set.singleton st :+: hlistFMap (Map.singleton st) s'


fromSet :: State           -- ^ the original state 
        -> Set StateKey    -- ^ set of successor states
        -> State           -- ^ the new state including the successor step states
fromSet = undefined

------------------------------------------------------------
-- Running
------------------------------------------------------------

-- | Run the evaluation function a single @StepState)
runStep :: forall m . Monad m => (Ctrl V K -> StackT m (Ctrl V K)) -> State -> StepState -> m State
runStep f (k :+: state) stepState = inter
  where intra = Cache.run f stepState'
               & runAlloc KAdr
               & runAlloc FAdr
               & runAlloc symbolicVariable
               & runAlloc VAdr
               & runAlloc PAdr
               & runAlloc SAdr
               & runAlloc CAdr
        inter = Cache.run @(FlowT m) (const intra) state'
              & runNonDetT
              & undefined
              -- & fmap (fromSet (k :+: state) . Set.fromList)
        stepState' = (HList.uncons stepState, Map.empty)
        state' = HList.uncons (k :+: hlistCoFmap (fromMaybe (error "input state should be defined") . Map.lookup stepState) state)
