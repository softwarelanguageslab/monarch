{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE Strict #-}
-- | A small-step machine where all components are local to the machine's state, this ensures the most precision 
-- but is also the slowest as it results in an exponentional number of program states.
--
-- In terms of implementation, it impleme,nts the @MachineStep@ type class so that monadic computations from 
-- the semantics can be transformed to small step states.
module ASE.Machines.Local where

import ASE.Machine
import ASE.Monad
import ASE.Semantics
import Analysis.Monad.Stack
import ASE.Domain.SymbolicVariable (SymbolicVariable(..), symbolicVariable, PC)
import Analysis.Symbolic.Monad (FormulaT)
import Analysis.Monad.Store (StoreT)
import qualified Analysis.Monad.Cache as Cache
import Analysis.Monad.Cache (CacheT, MonadCache (Key, Val))
import Analysis.Monad (EnvT, NonDetT, CtxT, AllocT, runNonDetT, runAlloc)
import Control.Monad.Escape (MayEscapeT, MayEscape(Value, MayBoth), MonadEscape(..))
import Control.Monad.DomainError
import Control.Monad.Join (MonadJoinable, MonadBottom)
import Control.Monad.Identity
import Control.Monad.Layer (MonadLayer)
import qualified Control.Monad.Join
import Data.Kind
import qualified Data.Random as Random
import Data.Tuple.Extra
import Data.TypeLevel.HList
import Data.Maybe
import Domain.Symbolic.Class (Abstract)
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)
import RIO
import qualified RIO.Set as Set
import qualified RIO.Map as Map
import Syntax.AST
import Solver
import Symbolic.AST (emptyPC)

-- | Store that always uses a map for its backing storage
type StoreT' adr v = StoreT (Map adr v) adr v

-- | The local machine's monadic stack
type StackT m = MonadStack '[
      MayEscapeT (Set DomainError),
      StoreContinuationStackT (KAdr K) (KFrame K),
      StoreContinuationStackT (FAdr K) FFrame,
      FormulaT SymbolicVariable V,
      AbstractCountT SymbolicVariable,
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
      -- Store
      StoreT' (KAdr K) (Set (KKont K)),
      StoreT' (FAdr K) (Set (FKont K)),
      StoreT' (VAdr K) V,
      StoreT' (PAdr K) (PaiDom V),
      StoreT' (SAdr K) (StrDom V),
      StoreT' (CAdr K) (VecDom V),
      -- Model
      ModelT SymbolicVariable V,
      VisitedT PC,
      -- Random input
      InputT (Abstract V),
      -- Environment
      EnvT (Env K),
      CacheT,
      NonDetT
   ] m

type State = Unescape (Val (StackT Identity) (Ctrl V K))

initialContext :: K
initialContext = []

-- |  The initial state of the local machine
initialState :: Configuration K V -> State
initialState cfg =  Ev (e0 cfg) (ρ0 cfg)
                <+> initialContinuationStack -- continuation (regular)
                <+> initialContinuationStack -- continuation (failures)
                <+> emptyPC                  -- formula 
                <+> Map.empty                -- abstract count
                <+> initialContext           -- context
                <+> emptyPC                  -- model context
                <+> Map.empty                -- continuation store
                <+> Map.empty                -- failure continuation store 
                <+> σ0 cfg                   -- value store 
                <+> initialHeapSto           -- pair store 
                <+> Map.empty                -- string store
                <+> Map.empty                -- vector store
                <+> Map.empty                -- model 
                <+> emptyVisited
                <+> Random.initialSeq        -- infinite random sequence

-- | Run a single step of the local machine and produce a local machine state
runLocalMachine :: Monad m => (Ctrl V K -> StackT m (Ctrl V K)) -> State -> m (Set State)
runLocalMachine m k = Cache.run m k'
                    -- Run the allocators
                    & runAlloc KAdr
                    & runAlloc FAdr
                    & runAlloc symbolicVariable
                    & runAlloc VAdr
                    & runAlloc PAdr
                    & runAlloc SAdr
                    & runAlloc CAdr
                    -- Run the semantics non-deterministically
                    & runNonDetT
                    -- Filter out all escaping values and replace them 
                    -- by empty list, convert the resulting list to a set 
                    -- afterwards.
                    & fmap (Set.fromList . mapMaybe (isEscape . unnest))
   where k' = (k, Map.empty)
         isEscape :: HList (Unnest (Val (StackT m) (Ctrl V K))) -> Maybe State
         isEscape (Value v :+: rest) = Just $ uncons $ v :+: rest
         isEscape (MayBoth v _ :+: rest) = Just $ uncons $ v :+: rest
         isEscape _ = Nothing
