{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DeriveFunctor #-}
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
{-# LANGUAGE QuantifiedConstraints #-}

module Analysis.Symbolic.Monad.Propagation
  ( runPropagationStoreT,
    runPropagationHookT,
    PropagationStrategy (..),
    NoPropagation,
    NaivePropagation,
    NaivePropagationCtx,
    LoopBoundaryPropagationCtx,
    LoopPropagation,
  )
where

import Analysis.Monad
import Analysis.Symbolic.Monad
import Control.Monad.Identity (IdentityT (..))
import Control.Monad.Layer
import Control.Monad.Trans.Class
import Data.Functor.Identity (Identity)
import Data.Kind
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.Set as Set
import Domain.Symbolic (Symbolic)
import Domain.Symbolic.Store (SymSto)
import Lattice.Class
import Symbolic.AST (PC)
import Syntax.Scheme
import Analysis.Scheme.Actors.Components
import Control.Monad.Join (MonadJoin)

-- | Set of pre-conditions holding for functions in 
-- propagation strategies.
type PropagationM m a v retAdr = (LocalStoreM m a (Symbolic v), StoreM m retAdr (PC, SymSto a v), MonadPathCondition m v)

-- | Our propagation strategies are based on several hooks that are
-- called in key places during the analysis.
class (SymbolicValue v, Show ctx, Ord ctx) => PropagationStrategy (s :: Type) a v ctx | s -> a v ctx where
  -- | Construct an empty context based on the propagation strategy
  emptyContext :: ctx

  -- | The propagation strategy decides what initial path condition 
  -- and symbolic store a component should get, this decision 
  -- **can** be based on the context of the component.
  initialPc    :: ctx -> PC
  initialSSto  :: ctx -> SymSto a v

  -- | Update the context based on the given information
  callContext :: Exp -> PC -> SymSto a v -> ctx -> ctx

  -- | Call-return hook: called with the old path condition and store
  --  together with the new path condition and store, and expects to
  --  return a new path condition and store.
  --
  -- Called in the caller of the function
  callReturn :: (LocalStoreM m a (Symbolic v), MonadPathCondition m v) => PC -> SymSto a v -> m ()

  -- | Return hook, called from the callee.
  returnCall :: forall retAdr m . PropagationM m a v retAdr => PC -> SymSto a v -> retAdr -> m ()

-- | We create a monad that is parametrized by the propagation strategy,
-- this monad hooks into several parts of the analysis and calls
-- the functions of the propagation strategy to integrate path
-- conditions and symbolic stores with key parts of the analysis.
newtype PropagationT (s :: Type) vadr vlu cmp m a = PropagationT (IdentityT m a)
  deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer, MonadJoin)

instance {-# OVERLAPPING #-} (PropagationM m vadr vlu (SymRet cmp), CtxM m ctx, PropagationStrategy s vadr vlu ctx, SymbolicValue vlu) => AllocM (PropagationT s vadr vlu cmp m) CExp ctx where
  alloc (CExp expr) = do
   pc  <- getPc
   sto <- getSto
   ctx <- getCtx @_ @ctx
   return (callContext @s @vadr @vlu expr pc sto ctx)

-- | Return address where symbolic store and path condition can be allocated
newtype SymRet cmp = SymRet cmp
  deriving (Eq, Ord)

-- Component return hook
instance
  {-# OVERLAPPING #-}
  ( Monad m,
    StoreM m cmp v,
    SymbolicValue v,
    PropagationStrategy s vadr v ctx,
    MonadPathCondition m v,
    LocalStoreM m vadr (Symbolic v),
    StoreM m cmp v,
    StoreM m (SymRet cmp) (PC, SymSto vadr v)
  ) =>
  StoreM (PropagationT s vadr v cmp m) cmp v
  where
  lookupAdr cmp = do
    uncurry (callReturn @s @vadr @v) =<< lookupAdr (SymRet cmp)
    upperM $ lookupAdr cmp

  writeAdr adr = upperM . writeAdr adr
  updateAdr adr = upperM . updateAdr adr

type PropagationHookT s vadr v cmp ctx m a =
  PropagationT s vadr v cmp (CtxT ctx (FormulaT v m)) a

-- | The infrastructure for propagation strategies consists of two
-- key layers in the monadic stack.
--
-- (1) Hook layer: needs to be placed above layers handling
-- calls, message sends, and return values. Additionally,
-- since we handle context allocation, this layer also
-- needs to be above the actual context allocation layers.
-- (2) Storage layer: used to store all the bookkeeping
-- structures of the propagation layer. The reason that this
-- is a seperate layer is to make its effects global rather
-- than local for each path in the program. The first layer
-- must be a local layer, since it intercepts effects that
-- are usually placed in the local layer.
--
-- The first layer can be introduced in the stack by calling
-- `runPropagationHookT`, while the second layer can
-- be introduced in the stack by calling `runPropagationStoreT`.
runPropagationHookT :: forall s ctx vadr v cmp m a . (PropagationStrategy s vadr v ctx, Functor m) => ctx -> PropagationHookT s vadr v cmp ctx m a -> m a
runPropagationHookT initialCtx (PropagationT ma) =
  fmap fst $ runWithFormulaT (initialPc @s initialCtx) $ runCtx initialCtx $ runIdentityT ma

type PropagationStoreT s vadr v cmp ctx m a =
  StoreT (Map (SymRet cmp) (PC, SymSto vadr v)) (SymRet cmp) (PC, SymSto vadr v) m a

runPropagationStoreT :: forall v s vadr cmp m ctx a. (SymbolicValue v, Ord vadr, Ord cmp, Eq (Symbolic v), Functor m) => PropagationStoreT s vadr v cmp ctx m a -> m a
runPropagationStoreT = fmap fst . runWithStore

------------------------------------------------------------
-- Propagation Strategies
------------------------------------------------------------

----------------------------------------
-- No propagation
----------------------------------------

data NoPropagation a v ctx

instance (SymbolicValue v, Show ctx, Ord ctx) => PropagationStrategy (NoPropagation a v ctx) a v ctx where
  callContext = const $ const $ const id
  callReturn = const $ const $ return ()
  returnCall = const $ const $ const $ return ()
  initialPc = const Set.empty
  initialSSto = const Map.empty

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
data NaivePropagationCtx a v ctx = NaivePropagationCtx !PC !(SymSto a v) !ctx deriving (Functor)
deriving instance (Show (Symbolic v), Show a, Show ctx) => Show (NaivePropagationCtx a v ctx)
deriving instance (Ord (Symbolic v), Ord a, Ord ctx) => Ord (NaivePropagationCtx a v ctx)
deriving instance (Eq (Symbolic v), Eq a, Eq ctx) => Eq (NaivePropagationCtx a v ctx)

instance (SymbolicValue v, Show ctx, Ord ctx, Show (Symbolic v), Show a, Ord a, Ord (Symbolic v)) => PropagationStrategy (NaivePropagation a v ctx) a v (NaivePropagationCtx a v ctx) where
  callContext = const (\pc' symSto' (NaivePropagationCtx _ _ ctx) -> NaivePropagationCtx pc' symSto' ctx)
  callReturn pc sto = integrate pc >> integrateSto sto
  returnCall pc sto retAdr = do
    writeAdr retAdr (pc, sto)
  initialPc (NaivePropagationCtx pc _ _)    = pc
  initialSSto (NaivePropagationCtx _ sto _) = sto

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
data LoopPropagation a v ctx (m :: Int)

-- |  The context used for a loop boundary
--  propagation strategy is always fixed, since
--  we implement m-cfa strategies ourselves.
data LoopBoundaryPropagationCtx a v ctx = LoopBoundaryPropagationCtx !PC !(SymSto a v) ![Exp] deriving (Functor)
deriving instance (Ord (Symbolic v), Ord a, Ord ctx) => Ord (LoopBoundaryPropagationCtx a v ctx)
deriving instance (Eq (Symbolic v), Eq a, Eq ctx) => Eq (LoopBoundaryPropagationCtx a v ctx)
deriving instance (Show a, Show (Symbolic v)) => Show (LoopBoundaryPropagationCtx a v ctx)

instance (SymbolicValue v, Show a, Show (Symbolic v), Show ctx, Ord ctx, Ord (Symbolic v), Ord a) => PropagationStrategy (LoopPropagation a v ctx m) a v (LoopBoundaryPropagationCtx a v ctx) where
  callContext e pc' symSto' (LoopBoundaryPropagationCtx _ _ exps) =
    if length (filter (== e) exps) > 1 -- TODO: use "m" variable for computing the maximum number of occurences
      then LoopBoundaryPropagationCtx Set.empty Map.empty []
      else LoopBoundaryPropagationCtx pc' symSto' (e : exps)
  callReturn pc = (integrate pc >>) . integrateSto
  returnCall pc sto =
    flip writeAdr (pc, sto)
  initialPc (LoopBoundaryPropagationCtx pc _ _)    = pc
  initialSSto (LoopBoundaryPropagationCtx _ sto _) = sto

------------------------------------------------------------
-- Summary approach
------------------------------------------------------------
