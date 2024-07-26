{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances, FunctionalDependencies #-}
module Analysis.Symbolic.Monad(SymbolicM, MonadPathCondition(..), MonadIntegerPool(..), LocalStoreM(..), SymbolicValue, FormulaT, runFormulaT, runWithFormulaT, choice, choices, runSymbolicStoreT) where

import Solver (FormulaSolver, isFeasible)
import Symbolic.AST
import Analysis.Scheme.Monad (SchemeM)
import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.State.IntPool
import Control.Monad.State (StateT(..), MonadState, modify, gets, get, (>=>), runStateT, put, evalStateT)
import Domain
import Domain.Symbolic
import Lattice (Joinable(..), BottomLattice(..))
import Control.Monad.Trans.Class
import Data.Map (Map)
import qualified Data.Map as Map
import Lattice.Class (join)

import qualified Data.Set as Set
import Analysis.Monad (StoreM(..))
import Data.Functor ((<&>))

-- | Monad that keeps track of a path condition
class (Monad m) => MonadPathCondition m v | m -> v where
   -- | Extend the path condition with the given assertion
   extendPc :: v -> m ()
   -- | Get the current path condition
   getPc :: m PC
   -- | Integrate the given path condition in the current one
   integrate :: PC -> m ()

-- | Choose between the two branches non-deterministically
choice :: (MonadPathCondition m v, MonadJoin m, SymbolicValue v, FormulaSolver m, BottomLattice b, Joinable b) => m v -> m b -> m b -> m b
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
choices :: (MonadPathCondition m v, MonadJoin m, SymbolicValue v, FormulaSolver m, Joinable b, BottomLattice b)
        => [(m v, m b)] -> m b -> m b
choices clauses els =
   foldr (uncurry choice) els clauses

-- | Executes the given action when the path condition is feasible
-- otherwise returns `mzero`
ifFeasible :: (MonadJoin m, FormulaSolver m, MonadPathCondition m v,  Joinable a, BottomLattice a) => m a -> m a
ifFeasible ma = do
   pcs <- fmap Set.toList getPc
   mjoins (map (isFeasible >=> (\b -> if b then ma else mzero)) pcs)

-- | Access the current store or replace it entirely
class LocalStoreM m a v where
   -- | Get a map representation of the current store contents
   getSto :: m (Map a v)
   -- | Replace the current store by a store with the given contents
   putSto  :: Map a v -> m ()
   -- | Integrate the given local store with the current one 
   -- by replacing the keys in the current with the given if 
   -- the key is present in the given.
   integrateSto :: Map a v -> m ()

instance {-# OVERLAPPABLE #-} (MonadLayer t, Monad m, LocalStoreM m a v) => LocalStoreM (t m) a v where
   getSto = upperM getSto
   putSto = upperM . putSto

type SymbolicM m v = (SchemeM m v,
                      -- Domain
                      SymbolicValue v,
                      ActorDomain v,
                      -- Symbolic execution
                      MonadPathCondition m v,
                      MonadIntegerPool m,
                      -- Solving
                      FormulaSolver m)

-- | Attach a fresh symbolic identifier to the given value
freshIdent :: (MonadIntegerPool m, SymbolicValue v) => v -> m v
freshIdent v = fresh <&> (`var` v)

--------------------------------------------------------------------------
-- Instances
--------------------------------------------------------------------------

-- MonadPathCondition

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


-- | Run FormulaT with  the given initial set of path conditions.
-- Note that `pc` should be non-empty set which is at least the singleton set, 
-- since there is always one paths in the program that must have a path condition.
runWithFormulaT :: PC -> FormulaT v m a -> m (a, PC)
runWithFormulaT pc = flip runStateT pc . runFormulaT'

runFormulaT :: FormulaT v m a -> m (a, PC)
runFormulaT = flip runStateT (Set.singleton Empty) . runFormulaT'

-- | A symbolic store is a local store that does not keep track of 
-- its dependencies, but writes all the writes through to an underlying store 
-- that does.
--
-- The idea is that symbolic stores are usually local (i.e., they are passed 
-- into components through contexts and returned through special return values)
-- while the value store is usually global.
newtype SymbolicStoreT adr v m a = SymbolicStoreT (StateT (SymbolicStore adr v) m a)
                                 deriving (Applicative, Monad, Functor, MonadState (SymbolicStore adr v), MonadLayer, MonadTrans, MonadJoin)

-- | The contents of a symbolic store.
type SymbolicStore adr v = Map adr v

instance {-# OVERLAPPING #-} (Ord adr, SymbolicValue v, MonadIntegerPool m, StoreM m adr v, v' ~ Symbolic v) => StoreM (SymbolicStoreT adr v' m) adr v where
   updateAdr adr v = do
      -- update the local version
      modify (Map.insertWith join adr (symbolicValue v))
      -- write through, but remove symbolic information
      upperM (updateAdr adr (unsymbolic v))
   writeAdr = updateAdr
   lookupAdr adr = do
      -- combine the symbolic local result (if available) with the global result
      v' <- upperM (lookupAdr adr) >>= (\v -> if v == bottom then freshIdent v else return v)
      gets (maybe v' (combine (abstractValue v')) . Map.lookup adr)

instance (Monad m) => LocalStoreM (SymbolicStoreT adr v' m) adr v' where
   getSto = get
   putSto = put

runSymbolicStoreT :: forall adr v m a . (Monad m) => SymbolicStore adr (Symbolic v) -> SymbolicStoreT adr (Symbolic v) m a -> m a
runSymbolicStoreT initialStore (SymbolicStoreT m) = evalStateT m initialStore


