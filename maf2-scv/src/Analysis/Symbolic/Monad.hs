{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances, FunctionalDependencies #-}
{-# LANGUAGE TupleSections #-}
module Analysis.Symbolic.Monad(
   -- Type classes
   SymbolicM, 
   MonadPathCondition(..), 
   MonadIntegerPool(..), 
   SymbolicValue,
   -- Tracking path condition
   FormulaT, 
   WidenedFormulaT(..),
   runFormulaT, 
   runWithFormulaT, 
   evalWithFormulaT,
   evalWithWidenedFormulaT,
   choice, 
   choices,
   -- Path condition widening
   pathWideningPerComponent,
   pathWideningPerComponentEval
) where

import Solver (FormulaSolver, isFeasible)
import Symbolic.AST
import qualified Domain.Symbolic.Path as Path
import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.State.IntPool
import Control.Monad.State (StateT(..), MonadState (put), modify, get, (>=>), runStateT)
import Domain
import Domain.Symbolic
import Lattice (Joinable(..))

import qualified Data.Set as Set
import Control.Monad (zipWithM)
import Analysis.Monad (MonadCache(..), AbstractCountM)
import qualified Analysis.Monad.Map as Map
import qualified Analysis.Monad as Cache
import Analysis.Monad.Fix
import Data.Maybe

-- | Monad that keeps track of a path condition
class (Monad m) => MonadPathCondition i m v | m -> v i where
   -- | Extend the path condition with the given assertion
   extendPc :: v -> m ()
   -- | Get the current path condition
   getPc :: m (PC i)
   -- | Change the current path condition to the given one
   putPc :: PC i -> m ()
   -- | Integrate the given path condition in the current one
   integrate :: PC i -> m ()

-- | Choose between the two branches non-deterministically
choice :: (AbstractCountM i m, MonadPathCondition i m v, MonadJoin m, SymbolicValue v i, BoolDomain v, FormulaSolver i m, Joinable b) => m v -> m b -> m b -> m b
choice mv mcsq malt = mv >>= (\v -> mjoin (checkTrue v) (checkFalse v))
   where -- Below you find a way of checking whether the condition is true or false 
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
            | isTrue  v = extendPc (assertTrue v) >> ifFeasible mcsq
            | otherwise = mzero
         checkFalse v
            | isFalse v && Prelude.not (isTrue v) = extendPc (assertFalse v) >> malt
            | isFalse v = extendPc (assertFalse v) >> ifFeasible malt
            | otherwise = mzero

-- | Same as `conds` but keeps track of path conditions
choices :: (AbstractCountM i m, MonadPathCondition i m v, MonadJoin m, SymbolicValue v i, BoolDomain v, FormulaSolver i m, Joinable b)
        => [(m v, m b)] -> m b -> m b
choices clauses els =
   foldr (uncurry choice) els clauses

-- | Executes the given action when the path condition is feasible
-- otherwise returns `mzero`
ifFeasible :: (MonadJoin m, FormulaSolver i m, AbstractCountM i m, MonadPathCondition i m v,  Joinable a) => m a -> m a
ifFeasible ma = do
   pcs <- fmap Set.toList getPc
   mjoins (map (isFeasible >=> (\b -> if b then ma else mzero)) pcs)


type SymbolicM i m v = (-- Domain
                        SymbolicValue v i,
                        -- Symbolic execution
                        MonadPathCondition i m v,
                        -- Abstract counting, needed 
                        -- for correctly abstracting 
                        -- symbolic variables.
                        AbstractCountM i m,
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

instance {-# OVERLAPPING #-} (AbstractCountM i m, MonadJoin m, FormulaSolver i m, SymbolicValue v i) => MonadPathCondition i (FormulaT i v m) v where
   extendPc pc'     = modify $ Set.map (conjunction (Atomic $ symbolic pc'))
   getPc = get
   integrate p1 = (get >>= zipWithM Path.join (Set.toList p1) . Set.toList) >>= put . Set.fromList
   putPc = put


instance (MonadPathCondition i m v, Monad (t m), MonadLayer t) => MonadPathCondition i (t m) v where
   extendPc  = upperM . extendPc
   getPc     = upperM getPc
   integrate = upperM . integrate
   putPc     = upperM . putPc


-- | Run FormulaT with  the given initial set of path conditions.
-- Note that `pc` should be non-empty set which is at least the singleton set, 
-- since there is always one paths in the program that must have a path condition.
runWithFormulaT :: PC i -> FormulaT i v m a -> m (a, PC i)
runWithFormulaT pc = flip runStateT pc . runFormulaT'

evalWithFormulaT :: Functor m => PC i -> FormulaT i v m a -> m a 
evalWithFormulaT pc = fmap fst . runWithFormulaT pc

runFormulaT :: FormulaT i v m a -> m (a, PC i)
runFormulaT = flip runStateT (Set.singleton Empty) . runFormulaT'

----------------------------------------------------------------------
-- Widening per component of path condition
----------------------------------------------------------------------


-- | Type class constraint for instances that allow the path condition to be set 
class MonadPathCondition' i m | m -> i where
   putPC :: PC i -> m ()
instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadPathCondition' i m) => MonadPathCondition' i (t m) where   
   putPC = upperM . putPC

newtype WidenedFormulaT i v m a = WidenedFormulaT { runWidenedFormulaT' :: FormulaT i v m a }
                                deriving (Monad, Functor, Applicative, MonadTrans, MonadLayer, MonadJoinable)

evalWithWidenedFormulaT :: forall i v m a . Functor m => WidenedFormulaT i v m a -> m a
evalWithWidenedFormulaT = evalWithFormulaT emptyPC . runWidenedFormulaT'

instance (Monad m) => MonadPathCondition' i (WidenedFormulaT i v m) where   
   putPC = WidenedFormulaT . FormulaT . put

instance (MonadCache m, Functor (Base m)) => MonadCache (WidenedFormulaT i v m) where
  type Key (WidenedFormulaT i v m) k  = Key m k
  type Val (WidenedFormulaT i v m) v' = Val m v'
  type Base (WidenedFormulaT i v m)   = WidenedFormulaT i v (Base m)

  key = upperM . key
  val = upperM . val
  run f k = WidenedFormulaT $ FormulaT $ StateT state
      where state pc = (,pc) <$> run (fmap fst . runWithFormulaT pc . runWidenedFormulaT' . f) k


-- | Keep the path condition in a map from components to 
-- path conditions which get widened when input paths 
-- from multiple locations get joined together.
pathWideningPerComponent :: forall m e v i . (Ord i, AbstractCountM i m, FormulaSolver i m, MonadCache m, Map.Widened (Cache.Key m e) (PC i) m, MonadPathCondition' i m, MonadPathCondition i m v) 
                     => (e -> AroundT e v m v) 
                     -> e 
                     -> AroundT e v m v
pathWideningPerComponent f e = do 
   cmp <- upperM $ Cache.key e
   pc' <- upperM getPc
   -- XXX: this is a 'hack', we join the path conditions
   -- here since we need access to `AbstractCountM` and 
   -- `FormulaSolver` here. Ideally we could integrate
   --  this with the abstract domain type classes somehow
   --  but it is unclear right now how to do that.
   --
   --  TODO: do not use @Map.get@ here as it introduces a read 
   --  dependency in the current component that is not needed, therefore 
   --  making the analysis slower.
   oldPc <- upperM $ fromMaybe Set.empty <$> Map.get (Map.In @_ @(PC i) cmp)
   upperM . Map.put (Map.In @_ @(PC i) cmp) =<< Path.joinPC oldPc pc'
   v <- f e 
   pc'' <- maybe mzero return =<< upperM (Map.get @_ @(PC i) (Map.Out @_ @(PC i) cmp))
   putPC pc'' 
   return v

-- | Widen path per component (evaluation function)
pathWideningPerComponentEval :: forall m e i v . (Ord i, AbstractCountM i m, FormulaSolver i m, MonadCache m, Map.Widened (Cache.Key m e) (PC i) m, MonadPathCondition' i m, MonadPathCondition i m v) 
                         => (e -> AroundT e v m v)
                         -> e 
                         -> AroundT e v m v
pathWideningPerComponentEval eval e = do
   cmp <- upperM $ Cache.key e 
   pc' <- maybe mzero return =<< upperM (Map.get @_ @(PC i) (Map.In @_ @(PC i) cmp))
   putPC pc' 
   v <- eval e 
   pc'' <- getPc
   Map.put @_ @(PC i) (Map.Out @_ @(PC i) cmp) =<< Path.joinPC pc' pc''
   return v
