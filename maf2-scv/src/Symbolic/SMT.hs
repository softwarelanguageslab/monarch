-- | Solver + translation for Symbolic.AST formulas.
module Symbolic.SMT(runSolver, SolverResult(..)) where

import Data.Map (Map)
import qualified Data.Map as Map

import Symbolic.AST

import Control.Monad.State
import Control.Monad ((>=>))

-- | The result of solving an SMT formula.
data SolverResult = Sat
                  | Unsat
                  | Unknown

-- | A cache for already solved SMT formulae
newtype Cache    = Cache { getCache :: Map Formula SolverResult }

-- | Construct the initial contents of the cache
initialCache :: Cache
initialCache = Cache Map.empty

-- | The solver monad
newtype Solver a = Solver { getSolver ::  StateT Cache IO a }
                     deriving (Applicative, Functor, Monad, MonadState Cache)

-- | Lookup the given value in the cache
lookupCache :: Formula -> Solver (Maybe SolverResult)
lookupCache formula = gets (Map.lookup formula . getCache)

-- | Run the solver monad
runSolver :: Solver a -> IO a
runSolver = flip evalStateT initialCache . getSolver

-- | Translate a formula to a string compatible
-- with the SMTLib format.
translate :: Formula -> String
translate  = undefined

solve :: String -> Solver SolverResult
solve query = undefined

-- | Checks whether the given formula is satisfiable
checkSat :: Formula -> Solver SolverResult
checkSat formula = do
   let query = translate formula
   cacheHit <- lookupCache formula
   maybe (solve query) return cacheHit
