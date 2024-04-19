{-# LANGUAGE AllowAmbiguousTypes #-}
-- This module provides a set of propagation strategies
-- for propagating path conditions across message sending
-- and function call boundaries.
--
-- There are multiple ways to do this
-- 1. Naive: propagate paths in their entirety, meaning that the path condition
-- is be part of the the context of a component, this does not always lead to
-- the termination of the analysis as an infinite number of components can be
-- created since the path condition can become infinitely long.
-- 2. Loop-boundary: same as (1) but removes the path condition at loop boundaries
-- to ensure termination.
-- 3.
--
-- This module brings all these methods of propagating the path condition into a
-- single interface such that the analysis can be configured appropriately.
--
-- Function calls have insertion and an extraction
-- points. The insertion point is the start of the body of the called function,
-- while the extraction point is about propagating the path condition at the
-- end of its body (essentially its 'return' path condition).
--
-- Message sends have only insertion points, since message
-- sends occur in an asynchronous fashion and do not have a return 'path' that
-- could influence the sender of the message.
--
-- In general, components consists of some information to identify the
-- part of the application that needs to be analyzed and some contextual information.
-- This contextual information parameter encodes information about the surrounding context where
-- the component was created. We use this context to add information
-- about the insertion points in the analysis.
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Symbolic.Monad.Propagation (PropagationStrategy(..)) where

import Analysis.Actors.Monad (ActorGlobalM (..), ActorLocalM (..))
import Analysis.Monad
import Analysis.Symbolic.Monad
import Control.Monad.Identity (IdentityT (..))
import Control.Monad.Layer
import Control.Monad.Trans.Class
import Data.Kind
import qualified Data.Map as Map
import qualified Data.Set as Set
import Domain.Symbolic (Symbolic)
import Domain.Symbolic.Store (SymSto)
import Lattice (JoinLattice)
import Symbolic.AST (PC)
import Syntax.Scheme

-- | Our propagation strategies are based on several hooks that are
-- called in key places during the analysis.
class (SymbolicValue v) => PropagationStrategy (s :: Type) a v | s -> a v where
  type Context s :: Type

  -- | Construct an empty context based on the propagation strategy
  -- emptyContext :: Context s

  -- | Update the context based on the given information
  callContext :: Exp -> PC -> SymSto a v -> Context s -> Context s

  -- | Call-return hook: called with the old path condition and store
  --  together with the new path condition and store, and expects to
  --  return a new path condition and store.
  --
  -- Called in the caller of the function
  callReturn :: (LocalStoreM m a (Symbolic v), MonadPathCondition m v) => PC -> SymSto a v -> m ()

  -- | Return hook, called from the callee.
  returnCall :: (StoreM m retAdr (PC, SymSto a v)) => PC -> SymSto a v -> retAdr -> m ()

-- | We create a monad that is parametrized by the propagation strategy,
-- this monad hooks into several parts of the analysis and calls
-- the functions of the propagation strategy to integrate path
-- conditions and symbolic stores with key parts of the analysis.
newtype PropagationT (s :: Type) vadr vlu cmp m a = PropagationT (IdentityT m a)
  deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer)

-- | Return address where symbolic store and path condition can be allocated
newtype SymRet cmp = SymRet cmp

-- Call hook
instance
  {-# OVERLAPPING #-}
  ( PropagationStrategy s vadr v,
    SymbolicValue v,
    Monad m,
    MonadPathCondition m v,
    CtxM m (Context s),
    LocalStoreM m vadr (Symbolic v),
    CallM m env v
  ) =>
  CallM (PropagationT s vadr v cmp m) env v
  where
  call clo@(expr, _) = do
    ctx' <- callContext @s expr <$> getPc <*> getSto <*> getCtx
    withCtx (const ctx') (upperM $ call clo)

-- Component return hook
instance
  {-# OVERLAPPING #-}
  ( Monad m,
    JoinLattice v,
    StoreM m cmp v,
    SymbolicValue v,
    PropagationStrategy s vadr v,
    MonadPathCondition m v,
    LocalStoreM m vadr (Symbolic v),
    StoreM m cmp v,
    StoreM m (SymRet cmp) (PC, SymSto vadr v)
  ) =>
  StoreM (PropagationT s vadr v cmp m) cmp v
  where
  lookupAdr cmp = do
    uncurry (callReturn @s @vadr @v) =<< lookupAdr (SymRet cmp)
    lookupAdr cmp

  writeAdr adr = upperM . writeAdr adr
  updateAdr adr = upperM . updateAdr adr

------------------------------------------------------------
-- Propagation Strategies
------------------------------------------------------------

----------------------------------------
-- No propagation
----------------------------------------

data NoPropagation a v ctx

instance (SymbolicValue v) => PropagationStrategy (NoPropagation a v ctx) a v where
  type Context (NoPropagation a v ctx) = ctx
  callContext = const $ const $ const id
  callReturn = const $ const $ return ()
  returnCall = const $ const $ const $ return ()

----------------------------------------
-- Naive propagation
----------------------------------------

-- |  Naive propagation strategy, will propagate the paths
--  through all contexts and return values and never
--  abstracts them. Does not neccesarily terminate, in fact
--  it easily diverges for underconstrained path conditions.
data NaivePropagation a v ctx

-- | The context in the naive propagation strategy is slightly
-- different: it needs the path condition and symbolic store
-- to be part of the context.
data NaivePropagationCtx a v ctx = NaivePropagationCtx !PC !(SymSto a v) !ctx

instance (SymbolicValue v) => PropagationStrategy (NaivePropagation a v ctx) a v where
  type Context (NaivePropagation a v ctx) = NaivePropagationCtx a v ctx
  callContext = const (\pc' symSto' (NaivePropagationCtx _ _ ctx) -> NaivePropagationCtx pc' symSto' ctx)
  callReturn pc sto = integrate pc >> integrateSto sto
  returnCall pc sto retAdr = do
    writeAdr retAdr (pc, sto)

----------------------------------------
-- Loop boundary propagation
----------------------------------------

-- |  Loop boundary propagation strategy. Propagates
--  path in the same way as the naive propagation
--  strategy, but reduces the paths when crossing
--  loop boundaries.
--
--  In languages without explicit loop statements
--  detecting such loops is non-trivial. Thus,
--  we opted to keep track of the expressions
--  in a component history. If the same expression
--  is found multiple times, a loop is detected.
--
--  The number of times such expression is allowed
--  determines the degree of loop unrolling (or correspondingly
--  the "m" in an m-cfa analysis)
data LoopPropagation a v (m :: Int)

-- |  The context used for a loop boundary
--  propagation strategy is always fixed, since
--  we implement m-cfa strategies ourselves.
data LoopBoundaryPropagationCtx a v = LoopBoundaryPropagationCtx !PC !(SymSto a v) ![Exp]

instance (SymbolicValue v) => PropagationStrategy (LoopPropagation a v m) a v where
  type Context (LoopPropagation a v m) = LoopBoundaryPropagationCtx a v
  callContext e pc' symSto' (LoopBoundaryPropagationCtx _ _ exps) =
    if length (filter (== e) exps) > 1 -- TODO: use "m" variable for computing the maximum number of occurences
      then LoopBoundaryPropagationCtx Set.empty Map.empty []
      else LoopBoundaryPropagationCtx pc' symSto' (e : exps)
  callReturn pc = (integrate pc >>) . integrateSto
  returnCall pc sto =
    flip writeAdr (pc, sto)

------------------------------------------------------------
-- Summary approach
------------------------------------------------------------
