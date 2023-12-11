module Solver(runCachedSolver, CachedSolver, FormulaSolver(..)) where

import Symbolic.AST

import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State

class Monad m => FormulaSolver m where 
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
   solve :: Formula -> m SolverResult
   -- | Returns true whenever the formula is feasible (sat or unknown)
   isFeasible :: Formula -> m Bool
   isFeasible formula = do 
      result <- solve formula
      return (isSat result || isUnknown result)

   

--------------------------------------------------
-- Caching Monad
--------------------------------------------------

-- | A cache for already solved SMT formulae
newtype SolverState    = SolverState { getCache :: Map Formula SolverResult }

-- | Construct the initial contents of the cache
initialState :: SolverState
initialState = SolverState {
      getCache = Map.empty
   }

-- | The solver monad
newtype CachedSolver m a = CachedSolver { getSolver ::  StateT SolverState m a }
                     deriving (Applicative, Functor, Monad, MonadTrans, MonadState SolverState)

-- | Lookup the given value in the cache
lookupCache :: Monad m => Formula -> CachedSolver m (Maybe SolverResult)
lookupCache formula = gets (Map.lookup formula . getCache)

-- | Put the given result in the cache
putCache :: forall m . Monad m => Formula -> SolverResult -> CachedSolver m SolverResult
putCache formula solution =
   modify (SolverState . Map.insert formula solution . getCache) >> return solution

-- | Run the solver monad
runCachedSolver :: Monad m => CachedSolver m a -> m a
runCachedSolver = flip evalStateT initialState . getSolver

--------------------------------------------------
-- Cached Solving
--------------------------------------------------

instance (FormulaSolver m) => FormulaSolver (CachedSolver m) where 
   -- setup is simply forwarded to the underlying solver
   setup = CachedSolver . lift . setup
   -- to solve a formula it is first searched for in the 
   -- cache, if found the previous result is returned
   -- otherwise it is passed to the underlying solver
   solve formula = do
      cacheHit <- lookupCache formula
      maybe (lift (solve formula) >>= putCache formula) return cacheHit
