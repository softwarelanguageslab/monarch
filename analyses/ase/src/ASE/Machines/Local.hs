{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
-- | A small-step machine where all components are local to the machine's state, this ensures the most precision 
-- but is also the slowest as it results in an exponentional number of program states.
--
-- In terms of implementation, it impleme,nts the @MachineStep@ type class so that monadic computations from 
-- the semantics can be transformed to small step states.
module ASE.Machines.Local where 

import ASE.Machine 
import ASE.Semantics
import Analysis.Monad.Stack
import ASE.Domain.SymbolicVariable (SymbolicVariable(..))
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
import RIO
import qualified RIO.Set as Set
import qualified RIO.Map as Map
import Syntax.AST
import Solver
import Symbolic.AST (emptyPC)

-- | For convenience, turns a type that has "MayEscape" it, into a type without one. 
-- This is particularly useful for turning a "Val StackT" into "Key StackT" which 
-- is almost exactly the same except for the environment reader component which 
-- is added easily as it is the final element in the monadic stack.
type family Unescape (k :: Type) :: Type where  
   Unescape (MayEscape e v) = v
   Unescape (a, b) = (Unescape a, Unescape b)
   Unescape t = t

-- | Store that always uses a map for its backing storage
type StoreT' adr v = StoreT (Map adr v) adr v

-- | The local machine's monadic stack
type StackT m = MonadStack '[
      MayEscapeT (Set DomainError),
      ContinuationT K,
      FormulaT SymbolicVariable V,
      AbstractCountT SymbolicVariable,
      -- Allocation
      AllocT Span K (KAdr K),
      AllocT Span K (FAdr K),
      AllocT Span K SymbolicVariable,
      AllocT Span K (VAdr K),
      -- Context
      SmallstepContextT K, 
      -- Store
      StoreT' (KAdr K) (Set (KKont K)), 
      StoreT' (FAdr K) (Set (FKont K)),
      StoreT' (VAdr K) V,
      -- Model
      ModelT SymbolicVariable V,
      -- Random input
      InputT (Abstract V),
      -- Environment
      EnvT (Env K),
      CacheT, 
      NonDetT
   ] m

type State m = Unescape (Val (StackT m) (Ctrl V K))

initialContext :: K 
initialContext = []


-- |  The initial state of the local machine
initialState :: Configuration K V -> State m
initialState cfg =  Ev (e0 cfg) (ρ0 cfg)
                <+> initialContinuationStack -- continuation 
                <+> emptyPC                  -- formula 
                <+> Map.empty                -- abstract count
                <+> initialContext           -- context
                <+> Map.empty                -- continuation store
                <+> Map.empty                -- failure continuation store 
                <+> (σ0 cfg)                 -- value store 
                <+> Map.empty                -- model 
                <+> Random.initialSeq        -- infinite random sequence

-- | Run a single step of the local machine and produce a local machine state
runLocalMachine :: Monad m => (Ctrl V K -> StackT m (Ctrl V K)) -> State m -> m (Set (State m))
runLocalMachine m k = Cache.run m k' 
                    -- Run the allocators
                    & runAlloc KAdr 
                    & runAlloc FAdr
                    & runAlloc (const . SymbolicVariable)
                    & runAlloc VAdr 
                    -- Run the semantics non-deterministically
                    & runNonDetT 
                    -- Filter out all escaping values and replace them 
                    -- by empty list, convert the resulting list to a set 
                    -- afterwards.
                    & fmap (Set.fromList . mapMaybe (isEscape . unnest))
   where k' = (k, Map.empty)
         isEscape :: HList (Unnest (Val (StackT m) (Ctrl V K))) -> Maybe (State m)
         isEscape (Value v :+: rest) = Just $ uncons $ v :+: rest 
         isEscape (MayBoth v _ :+: rest) = Just $ uncons $ v :+: rest
         isEscape _ = Nothing
