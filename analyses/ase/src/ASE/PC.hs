{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DeriveGeneric #-}

-- |  This module defines a suitable abstraction
--  for path conditions, these abstractions are
--  based on the abstractions from @maf2-scv@ but
--  add sets of variables that become underconstrained
--  because of widening.
--  Moreover it keeps track of the counts of each
--  symbolic variable so that widening can occur
--  correctly.
module ASE.PC
  ( PC(..),
    FormulaT,
    runWithFormulaT,
    MonadSnapshotPathCondition (..),
    emptyPC,
    mapFormula,
    discardCount
  )
where

import ASE.Monad
import Analysis.Monad.Cache (MonadCache)
import Analysis.Symbolic.Monad (MonadPathCondition (..), SymbolicValue)
import Control.Monad.Join (MonadBottom, MonadJoin, MonadJoinable, mzero)
import Control.Monad.Layer (MonadLayer (upperM))
import Control.Monad.State (MonadState (get, put), StateT (runStateT), gets, modify, evalStateT)
import Domain.Core.AbstractCount (AbstractCount (..))
import Domain.Symbolic.Class (SymbolicValue (symbolic))
import qualified Domain.Symbolic.Path as Path
import GHC.IO (unsafePerformIO)
import Lattice.Class
import qualified Lattice.Class as Lat
import RIO hiding (join, mzero)
import qualified RIO.Map as Map
import qualified RIO.Set as Set
import Solver.Z3
import Symbolic.AST hiding (PC, emptyPC)
import qualified Symbolic.SMT as SMT
import Analysis.Monad.Store (AbstractCountM)
import qualified Analysis.Monad.Store as Store

------------------------------------------------------------
-- Path condition structure
------------------------------------------------------------

-- | A path condition is a combination of a
-- formula, a set of underconstrained variables
-- and a count map.
--
-- Joining two path conditions entails computing
-- the most specific generalisation of the formula,
-- and while doing so, keeping track of which variables
-- become less constrained in the process.
data PC i
  = PC
  { formulaPC :: Formula i,
    underconstrainedPC :: Set i,
    countPC :: Map i AbstractCount
  } deriving (Ord, Eq, Show, Generic)

instance NFData i => NFData (PC i)

-- | Add a proposition as a conjunct to the path condition
addConstraint :: (Ord i) => Proposition i -> PC i -> PC i
addConstraint prop pc = pc {formulaPC = conjunction (Atomic prop) (formulaPC pc)}

-- | Increment the count of a symbolic variable in the path condition
incCount :: (Ord i) => i -> PC i -> PC i
incCount i pc = pc {countPC = Map.insertWith Lat.join i CountOne (countPC pc)}

-- | Update the count of a path condition
updateCount :: (Map i AbstractCount -> Map i AbstractCount) -> PC i -> PC i
updateCount f pc = pc {countPC = f (countPC pc)}

-- | Returns an empty path condition
emptyPC :: PC i
emptyPC = PC Empty Set.empty Map.empty

-- | Apply the given function over the formula within the path condition
mapFormula :: (Formula i -> Formula i) -> PC i -> PC i
mapFormula f pc = pc { formulaPC = f (formulaPC pc) }

instance Ord i => SelectVariable (PC i) i where   
   variables = variables . formulaPC

instance Ord i => StrictSelectVariable (PC i) i where 
   strictVariables = strictVariables . formulaPC

discardCount :: PC i -> PC i 
discardCount pc = pc { countPC = Map.empty }

------------------------------------------------------------
-- Lattice instance
------------------------------------------------------------

instance BottomLattice (PC i) where
  bottom = emptyPC

-- | Run the monadic stack required for SMT solving.
run :: (Ord i, Show i) => Map i AbstractCount -> AbstractCountT i (Z3Solver i) a -> a
run count =
  -- Note on the usage of @unsafePerformIO@: this is safe since the solver will
  -- return the same answer (sat or unsat) for a given formula given that the
  -- timeout remains the same.
  unsafePerformIO . runZ3SolverWithSetup SMT.prelude . fmap fst . runAbstractCountT count

instance (Show i, Ord i) => Joinable (PC i) where
  -- XXX: underconstrained should be updated based on the result of `Path.join`
  join pc1 pc2 =
    PC
      joinedPath
      (joins [underconstrained', underconstrainedPC pc1, underconstrainedPC pc2])
      (join (countPC pc1) (countPC pc2))
    where
      (joinedPath, underconstrained') = run (join (countPC pc1) (countPC pc2)) $ Path.joinLessConstrained (formulaPC pc1) (formulaPC pc2)

instance (Eq i, Ord i, Show i) => PartialOrder (PC i) where
  leq pc1 pc2 =
    run (join (countPC pc1) (countPC pc2)) (Path.leq (formulaPC pc1) (formulaPC pc2))
      && leq (underconstrainedPC pc1) (underconstrainedPC pc2)
      && leq (countPC pc1) (countPC pc2)

------------------------------------------------------------
-- Monad support
------------------------------------------------------------

-- |  Version of @FormulaT@ that uses our definition of @PC i@
newtype FormulaT i v m a = FormulaT (StateT (PC i) m a)
  deriving (Applicative, Functor, Monad, MonadJoinable, MonadBottom, MonadCache, MonadLayer, MonadState (PC i))

runWithFormulaT :: Monad m => PC i -> FormulaT i v m a -> m (a, PC i)
runWithFormulaT pc (FormulaT m) = runStateT m pc

-- |  @FormulaT@ keeps track of a path condition
instance {-# OVERLAPPING #-} (SymbolicValue v i, Monad m) => MonadPathCondition i (FormulaT i v m) v where
  extendPc v = modify (addConstraint (symbolic v))
  getPc = error "getPc not supported in ASE"
  putPc = error "putPc not supported in ASE"
  integrate = error "integrate not supported in ASE"

instance Monad m => AbstractCountM i (FormulaT i v m) where   
   count = gets countPC

-- | Path conditions keep track of the abstract counts of the variables occuring in the constraints
instance (Ord i, Monad m, MonadJoin m) => MonadAbstractCount i (FormulaT i v m) where
  countIncrement i = modify (incCount i)
  currentCount α = gets (Map.lookup α . countPC) >>= maybe mzero return
  getCounts = gets (CountMap . countPC)



-- | Monad specialized to ASE to cleanup the path condition and simplify its abstract counts
class MonadSnapshotPathCondition i m | m -> i where
  -- | Get a snapshot of the path condition, to use in failure to continuations
  -- XXX: this is actually @getPC@ but since that is incompatible with our representation of the path condition
  -- we use @snapshotPC@ here.
  snapshotPC :: m (PC i)

  -- | Reset the path condition
  resetPC :: m ()

instance {-# OVERLAPPABLE #-} (MonadSnapshotPathCondition i m, MonadLayer t, Monad m) => MonadSnapshotPathCondition i (t m) where
  snapshotPC = upperM snapshotPC
  resetPC = upperM resetPC

instance (Ord i, Monad m) => MonadSnapshotPathCondition i (FormulaT i v m) where
  snapshotPC = modify (\pc -> updateCount (`Map.restrictKeys` variables (formulaPC pc)) pc) >> get
  resetPC = put emptyPC
