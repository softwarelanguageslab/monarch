{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances #-}
module Analysis.Symbolic.Monad where

import Solver (FormulaSolver)
import Symbolic.AST
import Analysis.Scheme.Monad (SchemeM)
import Domain.Scheme.Class (SchemeValue)
import Control.Monad.Layer
import Control.Monad.Join

-- | SymbolicValue to capture
-- changes to the symbolic representation 
-- of a particular value.
class (SchemeValue v) => SymbolicValue v where
   -- | Construct a symbolic representation of 
   -- a function application.
   ap :: v -> [v] -> v
   -- | Assert that the given value is true 
   -- as a symbolic expression
   assertTrue :: v -> v
   -- | Assert that the given value is false
   -- as a symbolic expression
   assertFalse :: v -> v

-- | Monad that keeps track of a path condition
class (Monad m, SymbolicValue v) => MonadPathCondition m v where
   -- | Extend the path condition with the given assertion
   extendPc :: v -> m ()
   -- | Choose between the two branches non-deterministically
   choice :: m v -> m v -> m v

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

