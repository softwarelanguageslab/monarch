{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances, FunctionalDependencies #-}
module Analysis.Symbolic.Monad(SymbolicM, MonadPathCondition(..), MonadIntegerPool(..), SymbolicValue, FormulaT, runFormulaT, runWithFormulaT, choice, choices) where

import Solver (FormulaSolver, isFeasible)
import Symbolic.AST
import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.State.IntPool
import Control.Monad.State (StateT(..), MonadState (put), modify, get, (>=>), runStateT)
import Domain
import Domain.Symbolic
import qualified Domain.Symbolic.Path as Path
import Lattice (Joinable(..))

import qualified Data.Set as Set
import Control.Monad (zipWithM)
import Analysis.Monad (MonadCache)
import Debug.Trace (trace, traceShow)

-- | Monad that keeps track of a path condition
class (Monad m) => MonadPathCondition i m v | m -> v i where
   -- | Extend the path condition with the given assertion
   extendPc :: v -> m ()
   -- | Get the current path condition
   getPc :: m (PC i)
   -- | Integrate the given path condition in the current one
   integrate :: PC i -> m ()

-- | Choose between the two branches non-deterministically
choice :: (MonadPathCondition i m v, MonadJoin m, SymbolicValue v i, BoolDomain v, FormulaSolver i m, Joinable b) => m v -> m b -> m b -> m b
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
            | isTrue  v = extendPc (assertTrue v)  >> ifFeasible mcsq
            | otherwise = mzero
         checkFalse v
            | isFalse v && Prelude.not (isTrue v) = extendPc (assertFalse v) >> malt
            | isFalse v = extendPc (assertFalse v)  >> ifFeasible malt
            | otherwise = mzero

-- | Same as `conds` but keeps track of path conditions
choices :: (MonadPathCondition i m v, MonadJoin m, SymbolicValue v i, BoolDomain v, FormulaSolver i m, Joinable b)
        => [(m v, m b)] -> m b -> m b
choices clauses els =
   foldr (uncurry choice) els clauses

-- | Executes the given action when the path condition is feasible
-- otherwise returns `mzero`
ifFeasible :: (MonadJoin m, FormulaSolver i m, MonadPathCondition i m v,  Joinable a) => m a -> m a
ifFeasible ma = do
   pcs <- fmap Set.toList getPc
   mjoins (map (isFeasible >=> (\b -> if b then ma else mzero)) pcs)


type SymbolicM i m v = (-- Domain
                        SymbolicValue v i,
                        -- Symbolic execution
                        MonadPathCondition i m v,
                        -- Solving
                        FormulaSolver i m)

--------------------------------------------------------------------------
-- Instances
--------------------------------------------------------------------------

-- MonadPathCondition

-- | The FormulaT monad keeps track of the path condition 
-- and implements the `MonadPathCondition` monad.
newtype FormulaT i v m a = FormulaT { runFormulaT' :: StateT (PC i) m a }
                           deriving (Monad, Applicative, Functor, MonadState (PC i), MonadLayer, MonadTrans, MonadJoinable, MonadCache)

instance {-# OVERLAPPING #-} (MonadJoin m, Show i, FormulaSolver i m, SymbolicValue v i) => MonadPathCondition i (FormulaT i v m) v where
   extendPc pc'     = traceShow (symbolic pc') $ modify $ Set.map (Conjunction (Atomic $ symbolic pc'))
   getPc = get
   integrate p1 = (get >>= zipWithM Path.join (Set.toList p1) . Set.toList) >>= put . Set.fromList


instance (MonadPathCondition i m v, Monad (t m), MonadLayer t) => MonadPathCondition i (t m) v where
   extendPc  = upperM . extendPc
   getPc     = upperM getPc
   integrate = upperM . integrate


-- | Run FormulaT with  the given initial set of path conditions.
-- Note that `pc` should be non-empty set which is at least the singleton set, 
-- since there is always one paths in the program that must have a path condition.
runWithFormulaT :: PC i -> FormulaT i v m a -> m (a, PC i)
runWithFormulaT pc = flip runStateT pc . runFormulaT'

runFormulaT :: FormulaT i v m a -> m (a, PC i)
runFormulaT = flip runStateT (Set.singleton Empty) . runFormulaT'
