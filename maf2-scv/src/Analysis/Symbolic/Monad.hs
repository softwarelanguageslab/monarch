{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances, FunctionalDependencies #-}
module Analysis.Symbolic.Monad(SymbolicM, MonadPathCondition(..), MonadIntegerPool(..), SymbolicValue, runFormulaT, choice) where

import Solver (FormulaSolver, isFeasible)
import Symbolic.AST
import Analysis.Scheme.Monad (SchemeM)
import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.State.IntPool
import Control.Monad.State (StateT, MonadState, modify, gets, get, put, (>=>), runStateT, evalStateT)
import Domain
import Domain.Symbolic
import Lattice (JoinLattice(..))

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
   where t = mv >>= (\v -> if isTrue  v then extendPc (assertTrue v)  >> ifFeasible mcsq else mzero)
         f = mv >>= (\v -> if isFalse v then extendPc (assertFalse v) >> ifFeasible malt else mzero)

-- | Executes the given action when the path condition is feasible
-- otherwise returns `mzero`
ifFeasible :: (MonadJoin m, FormulaSolver m, MonadPathCondition m v,  JoinLattice a) => m a -> m a
ifFeasible ma = do
   pcs <- fmap Set.toList getPc
   mjoins (map (isFeasible >=> (\b -> if b then ma else mzero)) pcs)

type SymbolicM m v = (SchemeM m v,
                      -- Domain
                      SymbolicValue v,
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
newtype FormulaT m v a = FormulaT { runFormulaT' :: StateT PC m a }
                           deriving (Monad, Applicative, Functor, MonadState PC)

instance (Monad m) => MonadLayer (FormulaT m v) where
   type Lower (FormulaT m v) = m
   lowerM f (FormulaT m) = FormulaT $ lowerM f m
   upperM = FormulaT . upperM

instance (MonadJoin m) => MonadJoin (FormulaT m v) where
   mzero = FormulaT mzero
   mjoin (FormulaT ma) (FormulaT mb) = FormulaT $ mjoin ma mb

instance {-# OVERLAPPING #-} (MonadJoin m, SymbolicValue v) => MonadPathCondition (FormulaT m v) v where
   extendPc pc'     = modify $ Set.map (Conjunction (Atomic $ symbolic pc'))
   getPc = get

instance (Monad m, MonadPathCondition (Lower m) v, MonadLayer m) => MonadPathCondition m v where 
   extendPc = upperM . extendPc
   getPc    = upperM getPc

runFormulaT :: FormulaT m v a -> m (a, PC)
runFormulaT = flip runStateT (Set.singleton Empty) . runFormulaT'
