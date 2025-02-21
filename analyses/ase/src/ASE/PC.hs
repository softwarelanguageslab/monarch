-- |  This module defines a suitable abstraction
--  for path conditions, these abstractions are
--  based on the abstractions from @maf2-scv@ but
--  add sets of variables that become underconstrained
--  because of widening.
--  Moreover it keeps track of the counts of each
--  symbolic variable so that widening can occur
--  correctly.
module ASE.PC where

import ASE.Monad
import Domain.Core.AbstractCount (AbstractCount)
import qualified Domain.Symbolic.Path as Path
import Lattice.Class
import RIO hiding (join)
import qualified RIO.Map as Map
import qualified RIO.Set as Set
import Solver.Z3
import Symbolic.AST hiding (PC)
import qualified Symbolic.SMT as SMT
import GHC.IO (unsafePerformIO)

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
  { formula :: Formula i,
    underconstrained :: Set i,
    count :: Map i AbstractCount
  }

instance BottomLattice (PC i) where
  bottom = PC Empty Set.empty Map.empty

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
      (run (join (count pc1) (count pc2)) $ Path.join (formula pc1) (formula pc2))
      (join (underconstrained pc1) (underconstrained pc2))
      (join (count pc1) (count pc2))

instance (Eq i, Ord i, Show i) => PartialOrder (PC i) where
  leq pc1 pc2 =
    run (join (count pc1) (count pc2)) (Path.leq (formula pc1) (formula pc2))
      && leq (underconstrained pc1) (underconstrained pc2)
      && leq (count pc1) (count pc2)


-- | Version of @FormulaT@ that uses our definition of @PC i@
