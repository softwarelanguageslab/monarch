{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances, FunctionalDependencies #-}
module Analysis.Symbolic.Monad(SymbolicM, MonadPathCondition(..), MonadIntegerPool(..), SymbolicValue, runFormulaT, choice, choices) where

import Solver (FormulaSolver, isFeasible)
import Symbolic.AST
import Analysis.Scheme.Monad (SchemeM)
import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.State.IntPool
import Control.Monad.State (StateT(..), MonadState, modify, gets, get, put, (>=>), runStateT, evalStateT)
import Domain
import Domain.Symbolic
import Lattice (JoinLattice(..))
import Control.Monad.Trans.Class

import qualified Data.Set as Set
import Data.Set (Set)

-- | Monad that keeps track of a path condition
class (Monad m) => MonadPathCondition m v | m -> v where
   -- | Extend the path condition with the given assertion
   extendPc :: v -> m ()
   -- | Get the current path condition
   getPc :: m PC

-- | Choose between the two branches non-deterministically
choice :: (MonadPathCondition m v, MonadJoin m, SymbolicValue v, FormulaSolver m, JoinLattice b) => m v -> m b -> m b -> m b
choice mv mcsq malt = mjoin t f
   where t = mv >>= checkTrue
         f = mv >>= checkFalse
         -- Below you find a way of checking whether the condition is true or false 
         -- depending on the abstract value and the current path condition.
         --
         -- This might seem a bit convoluted at first but the distinction between the different
         -- cases is rather important. We discuss the `checkTrue` case in detail, the `checkFalse`
         -- case is symmetric.
         -- 
         -- (1) the first case checks whether the condition is true and whether it is possible
         -- that (according to the abstract values) it is false too. If not, this case will 
         -- only extend the path condition and execute the consequent. The path condition
         -- **must** be extended with the condition (even though it might be trivial)
         -- for checking path sensitive or relational constraints in the future. 
         -- (2) the second check handles the case where the abstract domain provides
         -- insufficient information about the truth value of the condition. Here,
         -- a symbolic solver is invoked to check whether the path leading up to the 
         -- current program state is feasible in combination with the current condition.
         -- (3) otherwise the condition was not true and the consequent does not need to be
         --  executed.
         checkTrue v  
            | isTrue  v && Prelude.not (isFalse v) = extendPc (assertTrue v) >> mcsq
            | isTrue  v = extendPc (assertTrue v)  >> ifFeasible mcsq
            | otherwise = mzero
         checkFalse v 
            | isFalse v && Prelude.not (isTrue v) = extendPc (assertFalse v) >> malt
            | isFalse v = extendPc (assertFalse v)  >> ifFeasible mcsq
            | otherwise = mzero

-- | Same as `conds` but keeps track of path conditions
choices :: (MonadPathCondition m v, MonadJoin m, SymbolicValue v, FormulaSolver m, JoinLattice b)
        => [(m v, m b)] -> m b -> m b
choices clauses els = 
   foldr (uncurry choice) els clauses

-- | Executes the given action when the path condition is feasible
-- otherwise returns `mzero`
ifFeasible :: (MonadJoin m, FormulaSolver m, MonadPathCondition m v,  JoinLattice a) => m a -> m a
ifFeasible ma = do
   pcs <- fmap Set.toList getPc
   mjoins (map (isFeasible >=> (\b -> if b then ma else mzero)) pcs)

type SymbolicM m v = (SchemeM m v,
                      -- Domain
                      SymbolicValue v,
                      ActorDomain v, 
                      -- Symbolic execution
                      MonadPathCondition m v,
                      MonadIntegerPool m,
                      -- Solving
                      FormulaSolver m)

--------------------------------------------------------------------------
-- Instances
--------------------------------------------------------------------------

-- MonadPathCondition

-- | The path condition is an unordered conjunction of formulas
type PC = Set Formula

-- | The FormulaT monad keeps track of the path condition 
-- and implements the `MonadPathCondition` monad.
newtype FormulaT v m a = FormulaT { runFormulaT' :: StateT PC m a }
                           deriving (Monad, Applicative, Functor, MonadState PC, MonadLayer, MonadTrans)

instance (MonadJoin m) => MonadJoin (FormulaT v m) where
   mzero = FormulaT mzero
   mjoin (FormulaT ma) (FormulaT mb) = FormulaT $ mjoin ma mb

instance {-# OVERLAPPING #-} (MonadJoin m, SymbolicValue v) => MonadPathCondition (FormulaT v m) v where
   extendPc pc'     = modify $ Set.map (Conjunction (Atomic $ symbolic pc'))
   getPc = get

instance (MonadPathCondition m v, MonadLayer t) => MonadPathCondition (t m) v where 
   extendPc = upperM . extendPc
   getPc    = upperM getPc

runFormulaT :: FormulaT v m a -> m (a, PC)
runFormulaT = flip runStateT (Set.singleton Empty) . runFormulaT'
