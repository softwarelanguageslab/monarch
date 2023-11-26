-- | Solver + translation for Symbolic.AST formulas.
module Symbolic.SMT(runSolver, checkSat, SolverResult(..)) where

import Data.Map (Map)
import qualified Data.Map as Map

import Symbolic.AST
import Control.Monad.State
import Solver

-- | The result of solving an SMT formula.
data SolverResult = Sat
                  | Unsat
                  | Unknown

--------------------------------------------------
-- Monad
--------------------------------------------------

-- | A cache for already solved SMT formulae
newtype SolverState    = SolverState { getCache :: Map Formula SolverResult }

-- | Construct the initial contents of the cache
initialState :: SolverState
initialState = SolverState {
      getCache = Map.empty
   }

-- | The solver monad
newtype Solver m a = Solver { getSolver ::  StateT SolverState m a }
                     deriving (Applicative, Functor, Monad, MonadTrans, MonadState SolverState)

-- | Lookup the given value in the cache
lookupCache :: Monad m => Formula -> Solver m (Maybe SolverResult)
lookupCache formula = gets (Map.lookup formula . getCache)

-- | Put the given result in the cache
putCache :: forall m . Monad m => Formula -> SolverResult -> Solver m SolverResult
putCache formula solution =
   modify (SolverState . Map.insert formula solution . getCache) >> return solution

-- | Run the solver monad
runSolver :: Monad m => Solver m a -> m a
runSolver = flip evalStateT initialState . getSolver

--------------------------------------------------
-- Solving
--------------------------------------------------

-- | Checks whether the given formula is satisfiable
checkSat :: FormulaSolver m => Formula -> Solver m SolverResult
checkSat formula = do
   let query = translate formula
   cacheHit <- lookupCache formula
   maybe (lift (solve query) >>= putCache formula . parseResult) return cacheHit

--------------------------------------------------
-- Translation
--------------------------------------------------

-- | Translate a formula to a string compatible
-- with the SMTLib format.
translate :: Formula -> String
translate  = undefined

parseResult :: String -> SolverResult
parseResult = undefined
