{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances #-}
module Analysis.Symbolic.Monad(SymbolicM, MonadPathCondition(..), SymbolicValue, runFormulaT) where

import Solver (FormulaSolver, isFeasible)
import Symbolic.AST
import Analysis.Scheme.Monad (SchemeM)
import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.State (StateT, MonadState, modify, gets, (>=>), runStateT)
import Domain
import Domain.Symbolic
import Data.Set (Set)

import qualified Data.Set as Set


-- | Monad that keeps track of a path condition
class (Monad m, SymbolicValue v) => MonadPathCondition m v where
   -- | Extend the path condition with the given assertion
   extendPc :: v -> m ()
   -- | Choose between the two branches non-deterministically
   choice :: (JoinLattice b) => m v -> m b -> m b -> m b

-- | Executes the given action when the path condition is feasible
-- otherwise returns `mzero`


type SymbolicM m v = (SchemeM m v,
                      -- Domain
                      SymbolicValue v,
                      -- Symbolic execution
                      MonadPathCondition m v,
                      -- Solving
                      FormulaSolver m)

--------------------------------------------------------------------------
-- Instances
--------------------------------------------------------------------------

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

instance (MonadJoin m, FormulaSolver m, SymbolicValue v) => MonadPathCondition (FormulaT m v) v where
   extendPc pc     = modify (Set.map (Conjunction (Atomic $ symbolic pc)))
   choice mv mcsq malt = mjoin t f
      where t = mv >>= (\v -> if isTrue  v then extendPc (assertTrue v)  >> ifFeasible mcsq else mzero)
            f = mv >>= (\v -> if isFalse v then extendPc (assertFalse v) >> ifFeasible malt else mzero)

ifFeasible :: (MonadJoin m, FormulaSolver m, JoinLattice a) => FormulaT m v a -> FormulaT m v a
ifFeasible ma = do
   pcs <- gets Set.toList
   mjoins (map (upperM . isFeasible >=> (\b -> if b then ma else mzero)) pcs)

runFormulaT :: FormulaT m v a -> m (a, PC)
runFormulaT (FormulaT m) = runStateT m (Set.singleton Empty)
