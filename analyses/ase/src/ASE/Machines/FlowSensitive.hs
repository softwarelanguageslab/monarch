{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE RecordWildCards #-}
module ASE.Machines.FlowSensitive where

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
import Data.Maybe
import qualified Data.Map as Map
import Data.Random (RandomSeq)
import Data.Tuple.Extra
import Data.TypeLevel.HList
import qualified Data.Random as Random
import Lattice.Class (Joinable, BottomLattice, PartialOrder)
import qualified Lattice.Class as L
import RIO
import qualified RIO.Set as Set
import Symbolic.AST (emptyPC)
import Syntax.Span
import GHC.IO (unsafePerformIO)
import Domain.Symbolic.Path (joinPC)


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

-- | Mapping between a step state and some part of 
-- its state.
type Flow s = Map StepState s

------------------------------------------------------------
-- Monadic stack
------------------------------------------------------------

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
         -- Non-determinism
         NonDetT
      ] m

------------------------------------------------------------
-- State space 
------------------------------------------------------------

-- | Small-step state without the widening for per state.
type StepState = Unescape (Val (StackT Identity) (Ctrl V K))

-- | The initial step-state
initialStepState :: Configuration K V -> StepState 
initialStepState cfg =  Ev (e0 cfg) (ρ0 cfg)
                    <+> initialContinuationStack -- continuation 
                    <+> []                       -- context
                    <+> emptyPC                  -- model context

-- | The entire state including the parts that are widened 
-- per state (i.e., per StepState)
data State = State {
      -- | Small-step state
      stepStates :: Set StepState,
      -- Stores
      kflow      :: Flow KSto,
      fflow      :: Flow FSto,
      vflow      :: Flow VSto,
      pflow      :: Flow PSto,
      sflow      :: Flow SSto,
      cflow      :: Flow CSto,
      -- | Path constraint per small-step state
      φflow      :: Flow PC,
      countflow  :: Flow SymbolicCountMap,
      modelFlow  :: Flow (Map SymbolicVariable (Abstract V)),
      inputFlow  :: Flow RandomSeq
   } deriving (Ord, Eq, Show)

-- | State has a bottom, i.e., the bottom of its constituents
instance BottomLattice State where
   bottom = State L.bottom
                  L.bottom
                  L.bottom
                  L.bottom
                  L.bottom
                  L.bottom
                  L.bottom
                  L.bottom
                  L.bottom
                  L.bottom
                  L.bottom

-- | State is joinable, i.e., the join of its constituents
instance Joinable State where
   join a1 a2 = State (L.join (stepStates a1) (stepStates a2))
                      (L.join (kflow a1) (kflow a2))
                      (L.join (fflow a1) (fflow a2))
                      (L.join (vflow a1) (vflow a2))
                      (L.join (pflow a1) (pflow a2))
                      (L.join (sflow a1) (sflow a2))
                      (L.join (cflow a1) (cflow a2))
                      -- (Map.mapWithKey widenedPC (L.join (φflow a1) (φflow a2)))
                      (L.join (φflow a1) (φflow a2))
                      countflow'
                      (L.join (modelFlow a1) (modelFlow a2))
                      (L.join (inputFlow a1) (inputFlow a2))
      where countflow'  = L.join (countflow a1) (countflow a2)
            widenedPC s = widenPC (fromJust $ Map.lookup s countflow') 


-- | State is compareable, i.e., by comparing its constituents
instance PartialOrder State where
   subsumes a1 a2 =       L.subsumes (stepStates a1) (stepStates a2)
                       && L.subsumes (kflow a1) (kflow a2)
                       && L.subsumes (fflow a1) (fflow a2)
                       && L.subsumes (vflow a1) (vflow a2)
                       && L.subsumes (pflow a1) (pflow a2)
                       && L.subsumes (sflow a1) (sflow a2)
                       && L.subsumes (cflow a1) (cflow a2)
                       && L.subsumes (φflow a1) (φflow a2)
                       && L.subsumes (countflow a1) (countflow a2)
                       && L.subsumes (modelFlow a1) (modelFlow a2)
                       && L.subsumes (inputFlow a1) (inputFlow a2)
                       -- TODO: use subsumesPC from ASE.Machine for subsumption
                       -- checking of path constraints


-- | Returns true if the flow information for the given state 
-- is subsumed by the first argument
subsumesFlow :: StepState -> State -> State -> Bool
subsumesFlow s st st' = L.subsumes (lookup s (kflow st)) (lookup s (kflow st'))
                     && L.subsumes (lookup s (fflow st)) (lookup s (fflow st'))
                     && L.subsumes (lookup s (vflow st)) (lookup s (vflow st'))
                     && L.subsumes (lookup s (sflow st)) (lookup s (sflow st'))
                     && L.subsumes (lookup s (cflow st)) (lookup s (cflow st'))
                     -- && subsumesPC countflow' (lookup s (φflow st)) (lookup s (φflow st'))
                     && L.subsumes (lookup s (φflow st)) (lookup s (φflow st'))
                     && L.subsumes (lookup s (countflow st)) (lookup s (countflow st'))
                     && L.subsumes (lookup s (modelFlow st)) (lookup s (modelFlow st'))
                     && L.subsumes (lookup s (inputFlow st)) (lookup s (inputFlow st'))
   where lookup :: BottomLattice a => StepState -> Flow a -> a 
         lookup s   = fromMaybe L.bottom . Map.lookup s
         countflow' = L.join (lookup s (countflow st)) (lookup s (countflow st'))

type StateTuple = Val (StackT Identity) (Ctrl V K)
              <+> PC
              <+> SymbolicCountMap
              <+> KSto
              <+> FSto
              <+> VSto
              <+> PSto
              <+> SSto
              <+> CSto
              <+> Map SymbolicVariable (Abstract V)
              <+> RandomSeq

-- | Derive a @State@ from its tuple representation 
fromTuple :: State -> StateTuple -> State
fromTuple st@(State {..}) (s ::*:: φ ::*:: count ::*:: ksto ::*:: fsto ::*:: vsto ::*:: psto ::*:: ssto ::*:: csto ::*:: model ::*:: seq) =
      -- generate a successor state identical to the input state but with no step successors if an escape 
      -- value is found. Otherwise use the non-escaping value as successor step-state.
      maybe (st { stepStates = Set.empty })
            (\s' -> State (Set.singleton s') (kflow' s') (fflow' s') (vflow' s') (pflow' s') (sflow' s') (cflow' s') (φflow' s') (countflow' s') (modelFlow' s') (inputFlow' s'))
            (isEscape (unnest s))
   where -- Construct the new flow-sensitive mappings from the successor state @s'@
         kflow' s = Map.singleton s ksto 
         fflow' s = Map.singleton s fsto 
         vflow' s = Map.singleton s vsto 
         pflow' s = Map.singleton s psto 
         sflow' s = Map.singleton s ssto 
         cflow' s = Map.singleton s csto 
         φflow' s = Map.singleton s φ
         countflow' s = Map.singleton s count
         modelFlow' s = Map.singleton s model
         inputFlow' s = Map.singleton s seq
         -- Ignore escapes
         isEscape :: HList (Unnest (Val (StackT Identity) (Ctrl V K))) -> Maybe StepState
         isEscape (Value v :+: rest) = Just $ uncons $ v :+: rest
         isEscape (MayBoth v _ :+: rest) = Just $ uncons $ v :+: rest
         isEscape _ = Nothing


-- | Turn a set of states into a state of sets
fromSet :: State          -- ^ the original state (before stepping)
        -> Set StateTuple -- ^ set of successor states
        -> State
fromSet state = L.join state . foldMap (fromTuple state)

-- | The initial flow sensitive state
initialState :: Configuration K V -> State 
initialState cfg@Configuration { .. } = State (Set.singleton s0)
                                              (init Map.empty) -- continuation stores 
                                              (init Map.empty) -- failure continuation stores 
                                              (init σ0)        -- value stores (including primitives)
                                              (init Map.empty) -- pair stores 
                                              (init Map.empty) -- string stores
                                              (init Map.empty) -- vector stores
                                              (init emptyPC)   -- path constraint
                                              (init Map.empty) -- count mapping
                                              (init Map.empty) -- model
                                              (init Random.initialSeq) -- infinite random sequence
   where s0   = initialStepState cfg
         init :: a -> Flow a
         init = Map.singleton s0

------------------------------------------------------------
-- Step execution
------------------------------------------------------------

-- | Run the evaluation function a single @StepState)
runStep :: Monad m => (Ctrl V K -> StackT m (Ctrl V K)) -> State -> StepState -> m State
runStep f state@State { .. } stepState =
                     Cache.run f stepState'
                   -- Allocation functions
                   & runAlloc KAdr
                   & runAlloc FAdr
                   & runAlloc symbolicVariable
                   & runAlloc VAdr
                   & runAlloc PAdr
                   & runAlloc SAdr
                   & runAlloc CAdr
                   -- Formulas
                   & runWithFormulaT φ
                   & runAbstractCountT count
                   -- Stores
                   & runStoreT ksto
                   & runStoreT fsto
                   & runStoreT vsto
                   & runStoreT psto
                   & runStoreT ssto
                   & runStoreT csto
                   -- Model
                   & runModelT model
                   & runInputT seq
                   -- Non-determinism 
                   & runNonDetT
                   & fmap (fromSet state . Set.fromList)
         -- Add the environment to the @Val@ of the monadic stack 
         -- so that it becomes a suitable key.
   where stepState' = (stepState, Map.empty)
         -- Retrieve the correct stores for the current state
         ksto  = fromJust $ Map.lookup stepState kflow
         fsto  = fromJust $ Map.lookup stepState fflow
         vsto  = fromJust $ Map.lookup stepState vflow
         psto  = fromJust $ Map.lookup stepState pflow
         ssto  = fromJust $ Map.lookup stepState sflow
         csto  = fromJust $ Map.lookup stepState cflow
         -- Retrieve the correct abstract count mapping
         count = fromJust $ Map.lookup stepState countflow
         -- Retrieve the correct path condition
         φ     = fromJust $ Map.lookup stepState φflow
         -- Retrieve the current model
         model = fromJust $ Map.lookup stepState modelFlow
         -- Retrieve the current input sequence
         seq = fromJust $ Map.lookup stepState inputFlow

-- | Run an evaluation function in a flow-sensitive manner and generate its 
-- successor states.
run :: Monad m => (Ctrl V K -> StackT m (Ctrl V K)) -> State -> m State
run f s = foldM (runStep f) s (stepStates s)

------------------------------------------------------------
-- Efficient fixpoint computation
------------------------------------------------------------

instance FixpointValue State where
   isFix = L.subsumes
   filterSubsumption prv nxt = nxt { stepStates = ss' }
      where ss  = stepStates prv 
            ss' = Set.filter (not . select) (stepStates nxt)
            select s = Set.member s ss && subsumesFlow s prv nxt 
   size State {..} = Set.size stepStates
   hasSuccessor State { .. } = Set.empty /= stepStates

