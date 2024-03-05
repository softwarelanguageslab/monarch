{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances, FunctionalDependencies #-}
module Analysis.Symbolic.Monad(SymbolicM, MonadPathCondition(..), SymbolicValue, runFormulaT) where

import Solver (FormulaSolver, isFeasible)
import Symbolic.AST
import Analysis.Scheme.Monad (SchemeM)
import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.State (StateT, MonadState, modify, gets, get, put, (>=>), runStateT)
import Domain
import Domain.Symbolic
import Lattice (JoinLattice(..), Joinable(..))

import qualified Data.Set as Set
import Data.Set (Set)
import Data.Bifunctor (second)

-- | Monad that keeps track of a path condition
class (Monad m) => MonadPathCondition m v | m -> v where
   -- | Extend the path condition with the given assertion
   extendPc :: v -> m ()
   -- | Get the current path condition
   getPc :: m PC
   -- | Generate a fresh identifier number
   fresh :: m Int
   

-- | Choose between the two branches non-deterministically
choice :: (MonadPathCondition m v, MonadJoin m, SymbolicValue v, FormulaSolver m, JoinLattice b) => m v -> m b -> m b -> m b
choice mv mcsq malt = mjoin t f
   where t = mv >>= (\v -> if isTrue  v then extendPc (assertTrue v)  >> ifFeasible mcsq else mzero)
         f = mv >>= (\v -> if isFalse v then extendPc (assertFalse v) >> ifFeasible malt else mzero)

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


-- | The state of the path condition monad consists 
-- of the path condition itself and a counter that is 
-- used for generating fresh identifiers
data SymbolicState = SymbolicState {
   freshIdentifier :: Int, 
   pc :: PC
} deriving (Ord, Eq)

-- | Joinable instance for the SymbolicState
instance Joinable SymbolicState where  
   join s1 s2 = SymbolicState {
      freshIdentifier = max (freshIdentifier s1) (freshIdentifier s2),
      pc = join (pc s1) (pc s2)
   }
instance JoinLattice SymbolicState where
   bottom = SymbolicState { freshIdentifier = 0, pc = bottom }
   

-- | Create an initial SymbolicState
emptyFormulaState :: SymbolicState
emptyFormulaState = SymbolicState { freshIdentifier = 0, pc = Set.singleton Empty }

-- | The path condition is an unordered conjunction of formulas
type PC = Set Formula

-- | The FormulaT monad keeps track of the path condition 
-- and implements the `MonadPathCondition` monad.
newtype FormulaT m v a = FormulaT { runFormulaT' :: StateT SymbolicState m a }
                           deriving (Monad, Applicative, Functor, MonadState SymbolicState)

instance (Monad m) => MonadLayer (FormulaT m v) where
   type Lower (FormulaT m v) = m
   lowerM f (FormulaT m) = FormulaT $ lowerM f m
   upperM = FormulaT . upperM

instance (MonadJoin m) => MonadJoin (FormulaT m v) where
   mzero = FormulaT mzero
   mjoin (FormulaT ma) (FormulaT mb) = FormulaT $ mjoin ma mb

instance {-# OVERLAPPING #-} (MonadJoin m, FormulaSolver m, SymbolicValue v) => MonadPathCondition (FormulaT m v) v where
   extendPc pc'     = modify (\s -> s { pc = Set.map (Conjunction (Atomic $ symbolic pc')) (pc s) })
   getPc = gets pc
   fresh = do 
      next <- gets ((+1) . freshIdentifier)
      modify (\s -> s { freshIdentifier = next })
      return next

instance (Monad m, MonadPathCondition (Lower m) v, MonadLayer m) => MonadPathCondition m v where 
   extendPc = upperM . extendPc
   getPc    = upperM getPc
   fresh    = upperM fresh 

-- | Executes the given action when the path condition is feasible
-- otherwise returns `mzero`
ifFeasible :: (MonadJoin m, FormulaSolver m, MonadPathCondition m v,  JoinLattice a) => m a -> m a
ifFeasible ma = do
   pcs <- fmap Set.toList getPc
   mjoins (map (isFeasible >=> (\b -> if b then ma else mzero)) pcs)

runFormulaT :: Functor m => FormulaT m v a -> m (a, PC)
runFormulaT (FormulaT m) = fmap (second pc) (runStateT m emptyFormulaState)
