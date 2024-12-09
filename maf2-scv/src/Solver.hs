{-# LANGUAGE UndecidableInstances #-}
module Solver(runCachedSolver, CachedSolver, FormulaSolver(..)) where

import Symbolic.AST

import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State
import Control.Monad.Layer
import Domain.Core.AbstractCount (AbstractCount(..))
import Analysis.Monad.Store (AbstractCountM(..))


class (Monad m) => FormulaSolver i m | m -> i where
   -- | Initialize the solver and sets a checkpoint
   -- after the code passed as part of the setup.
   --
   -- This can be used to initialize certain predicates
   -- and functions a single time and keep them around
   -- for the entire analysis.
   setup :: String -> m ()
   -- | Solve the given SMTLib script. Returns whether
   -- there is some model for the given assertions in the SMTLib 
   -- script by outputting SMTLib compatible output.
   solve :: Map i AbstractCount -> Formula i -> m SolverResult
   -- | Returns true whenever the formula is feasible (sat or unknown)
   isFeasible :: AbstractCountM i m => Formula i -> m Bool
   isFeasible formula = do
      result <- count >>= flip solve formula
      return (isSat result || isUnknown result)
   -- | Returns true whenever the formula is certainly feasible
   isCertainlyFeasible :: AbstractCountM i m => Formula i -> m Bool
   isCertainlyFeasible formula =
      fmap isSat (count >>= flip solve formula)
   -- | Returns true whenever the formule is certainly unfeasible
   isCertainlyUnfeasible :: AbstractCountM i m => Formula i -> m Bool
   isCertainlyUnfeasible formula =
      fmap isUnsat (count >>= flip solve formula)
   -- | Compute and get the current model
   getModel :: m Model

--------------------------------------------------
-- Caching Monad
--------------------------------------------------

-- | A cache for already solved SMT formulae
newtype SolverState i = SolverState { getCache :: Map (Formula i) SolverResult }

-- | Construct the initial contents of the cache
initialState :: SolverState i
initialState = SolverState {
      getCache = Map.empty
   }

-- | The solver monad
newtype CachedSolver i m a = CachedSolver { getSolver ::  StateT (SolverState i) m a }
                     deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer, MonadState (SolverState i))

-- | Lookup the given value in the cache
lookupCache :: (Ord i, Monad m) => Formula i -> CachedSolver i m (Maybe SolverResult)
lookupCache formula = gets (Map.lookup formula . getCache)

-- | Put the given result in the cache
putCache :: forall m i . (Ord i, Monad m) => Formula i -> SolverResult -> CachedSolver i m SolverResult
putCache formula solution =
   modify (SolverState . Map.insert formula solution . getCache) >> return solution

-- | Run the solver monad
runCachedSolver :: Monad m => CachedSolver i m a -> m a
runCachedSolver = flip evalStateT initialState . getSolver

--------------------------------------------------
-- Cached Solving
--------------------------------------------------

instance {-# OVERLAPPING #-} (Ord i, FormulaSolver i m) => FormulaSolver i (CachedSolver i m) where
   -- setup is simply forwarded to the underlying solver
   setup = CachedSolver . lift . setup
   -- to solve a formula it is first searched for in the 
   -- cache, if found the previous result is returned
   -- otherwise it is passed to the underlying solver
   solve count' formula = do
      cacheHit <- lookupCache formula
      maybe (lift (solve count' formula) >>= putCache formula) return cacheHit
   -- cached model retrieval is currently not supported 
   getModel = error "cannot cache the model"

------------------------------------------------------------
-- Layering
------------------------------------------------------------

instance (Monad (t m), MonadLayer t, FormulaSolver i m) => FormulaSolver i (t m) where
   setup = upperM . setup
   solve count' = upperM . solve count'
   getModel = upperM getModel
