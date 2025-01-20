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
import ASE.Domain.SymbolicVariable (SymbolicVariable)
import Analysis.Symbolic.Monad (FormulaT)
import Analysis.Monad.Store (StoreT)
import qualified Analysis.Monad.Cache as Cache
import Analysis.Monad.Cache (CacheT, MonadCache (Key, Val))
import Analysis.Monad (EnvT, NonDetT, runNonDetT)
import Control.Monad.Escape (MayEscapeT, MayEscape, MonadEscape(..))
import Control.Monad.DomainError
import Control.Monad.Join (MonadJoinable, MonadBottom)
import Control.Monad.Identity
import Control.Monad.Layer (MonadLayer)
import qualified Control.Monad.Join
import Data.Kind
import Data.TypeLevel.HList
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
      AbstractCountT SymbolicVariable,
      FormulaT SymbolicVariable V,
      -- Store
      StoreT' (KAdr K) (Set (KKont K)), 
      StoreT' (KAdr K) (Set (FKont K)),
      StoreT' (VAdr K) V,
      -- Allocation
      -- Model
      ModelT SymbolicVariable V,
      -- Environment
      EnvT (Env K),
      CacheT, 
      NonDetT
   ] m

type State m = Unescape (Val (StackT m) (Ctrl V K))

initialEnv :: Env K
initialEnv = undefined

initialSto :: Map (VAdr K) V
initialSto = undefined

-- |  The initial state of the local machine
initialState :: Exp -> Env K -> State m
initialState e0 ρ0 = uncons $  Ev e0 ρ0
                           :+: initialContinuationStack -- continuation 
                           :+: Map.empty                -- abstract count
                           :+: emptyPC                  -- formula 
                           :+: Map.empty                -- continuation store
                           :+: Map.empty                -- failure continuation store 
                           :+: initialSto               -- value store 
                           :+: Map.empty                -- model 
                           :+: nil

-- | Run a single step of the local machine and produce a local machine state
runLocalMachine :: Monad m => (Ctrl V K -> (StackT m (Ctrl V K))) -> State m -> m (Set (Val (StackT m) (Ctrl V K)))
runLocalMachine m k = Cache.run m k' & runNonDetT & fmap Set.fromList
   where k' = (k, Map.empty)
