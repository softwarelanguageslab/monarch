{-# LANGUAGE FlexibleInstances #-}

{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE RecordWildCards #-}

-- |  This module defines a suitable abstraction
--  for path conditions, these abstractions are
--  based on the abstractions from @maf2-scv@ but
--  add sets of variables that become underconstrained
--  because of widening.
--  Moreover it keeps track of the counts of each
--  symbolic variable so that widening can occur
--  correctly.
module Analysis.ASE.PC
  ( PC(..),
    emptyPC,
    mapFormula,
    discardCount,
    discardUnderconstrained,
    simplifyPC,
    addConstraint,
    leqFast
  )
where

import Domain.Core.AbstractCount (AbstractCount (..))
import qualified Domain.Symbolic.Path as Path
import GHC.IO (unsafePerformIO)
import Lattice.Class
import Solver.Z3
import Symbolic.AST hiding (PC, emptyPC)
import qualified Symbolic.SMT as SMT
import Data.Set (Set)
import Data.Map (Map)
import GHC.Generics
import Control.DeepSeq (NFData)
import Analysis.Monad.AbstractCount (AbstractCountT, runAbstractCountT)
import Analysis.Counting (CountMap'(..))
import qualified Data.Set as Set
import qualified Data.Map as Map

------------------------------------------------------------
--- Global variables
------------------------------------------------------------

{-# NOINLINE globalZ3Solver #-}
globalZ3Solver :: Z3SolverState
globalZ3Solver = unsafePerformIO (runZ3SolverBackground @() SMT.prelude)

{-# NOINLINE runGlobalZ3 #-}
-- | Execute the given Z3 solver action in the global solver context
runGlobalZ3 :: Z3Solver i a -> a
runGlobalZ3 = unsafePerformIO . execInZ3State globalZ3Solver

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

instance MapVariables PC where
  mapVariables f (PC { ..}) = PC { formulaPC = Symbolic.AST.mapVariables f formulaPC, underconstrainedPC = Set.map f underconstrainedPC, countPC = Map.mapKeys f countPC }

-- | Discards the count from the path condition
discardCount :: PC i -> PC i
discardCount pc = pc { countPC = Map.empty }

-- | Discards the underconstrained variables from the path condition
discardUnderconstrained :: PC i -> PC i
discardUnderconstrained pc = pc { underconstrainedPC = Set.empty }

-- | Restrict the key of the count the variables in the path condition (minor optimalisation)
simplifyPC :: Ord i => PC i -> PC i
simplifyPC pc = updateCount (`Map.restrictKeys` variables (formulaPC pc)) pc

------------------------------------------------------------
-- Lattice instance
------------------------------------------------------------

instance BottomLattice (PC i) where
  bottom = emptyPC

-- | Run the monadic stack required for SMT solving.
run :: Map i AbstractCount -> AbstractCountT i AbstractCount (Z3Solver i) a -> a
run count =
  -- Note on the usage of @unsafePerformIO@: this is safe since the solver will
  -- return the same answer (sat or unsat) for a given formula given that the
  -- timeout remains the same.
  runGlobalZ3 . fmap fst . runAbstractCountT (CountingMap count)

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
  leq = leqFast
    -- run (join (countPC pc1) (countPC pc2)) (Path.leq (formulaPC pc1) (formulaPC pc2))
    --   && leq (underconstrainedPC pc1) (underconstrainedPC pc2)
    --   && leq (countPC pc1) (countPC pc2)

-- | Faster implementation for @leq@ that looks at the syntactic similarities between
-- the path constraints instead of computing the entailment using a SMT solver
leqFast :: (Ord i) => PC i -> PC i -> Bool
leqFast pc1 pc2 = leq (formulaPC pc1) (formulaPC pc2)
              && leq (underconstrainedPC pc1) (underconstrainedPC pc2)
              && leq (countPC pc1) (countPC pc2)
