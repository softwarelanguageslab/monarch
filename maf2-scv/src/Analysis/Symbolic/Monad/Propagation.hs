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

module Analysis.Symbolic.Monad.Propagation () where

import Analysis.Actors.Monad (ActorGlobalM (..), ActorLocalM (..))
import Analysis.Monad
import Analysis.Symbolic.Monad
import Control.Monad.Identity (IdentityT)
import Control.Monad.Join (MonadJoin)
import Control.Monad.Layer
import Control.Monad.Trans.Class
import Data.List (group)
import Symbolic.AST (PC)
import Syntax.Scheme

-- |  Provides the implementation for the extraction and
--  insertion points.
class PropagationM m cmp info | m -> cmp info where
  -- |  Called when a component is about to be created
  --  and some information about the propagation must be
  --  added to its context
  withEntry :: m a -> m a

  -- | Called when the component returns and some information
  -- needs to be added
  exit :: cmp -> m ()

instance (Monad m, MonadLayer t, PropagationM m cmp info) => PropagationM (t m) cmp info where
  withEntry = lowerM withEntry
  exit = upperM . exit

class AttachInfo v info where
  -- | Attach some information to the given value
  attachInfo :: info -> v -> v

  -- | Get that info from the the value
  getInfo :: v -> info

------------------------------------------------------------
-- TrackPathConditionT
------------------------------------------------------------

newtype TrackPathConditionT ctx cmp v m a = TrackPathConditionT (IdentityT m a)
  deriving (Applicative, Monad, MonadTrans, MonadLayer, MonadJoin, Functor)

instance
  ( MonadPathCondition m v,
    StoreM m cmp PC,
    CtxM m ctx,
    CtxM m ctx,
    AttachInfo ctx PC
  ) =>
  PropagationM (TrackPathConditionT ctx cmp v m) cmp PC
  where
  withEntry m = do
    pc <- getPc
    withCtx (attachInfo pc) m

  exit cmp = getPc >>= writeAdr cmp

------------------------------------------------------------
-- Naive approach
------------------------------------------------------------

newtype NaivePropagationT ref msg mb ctx cmp v m a = NaivePropagationT
  {getNaivePropagationT :: TrackPathConditionT ctx cmp v m a}
  deriving (Applicative, Monad, MonadTrans, MonadLayer, MonadJoin, Functor)

-- | After a call is performed the path condition should be integrated with the
-- path condition from before the call
instance
  ( StoreM m cmp PC,
    CallM m env v,
    PropagationM m cmp PC
  ) =>
  CallM (NaivePropagationT ref msg ctx mb cmp v m) env v
  where
  call = withEntry . upperM . call 

instance {-# OVERLAPPING #-} (StoreM m cmp v, MonadPathCondition m v, StoreM m cmp PC) => StoreM (NaivePropagationT ref msg ctx mb cmp v m) cmp v where
   writeAdr  adr = upperM . writeAdr adr
   updateAdr adr = upperM . updateAdr adr 
   lookupAdr adr = do
      integrate =<< lookupAdr adr 
      lookupAdr adr

-- | In an actor system paths from message senders need to be combined
-- with the paths that the actor has already taken. To achieve this,
-- we augment the `send` and `receive` rules to send the path
-- condition alongside the message, and to extract the path
-- condition from the received message
--
-- The consequence of this is that messages can now be differentiated
-- based on which path they were sent.
instance (AttachInfo msg PC, ActorGlobalM m ref msg, MonadPathCondition m v) => ActorGlobalM (NaivePropagationT ref msg mb ctx cmp v m) ref msg where
  send ref msg = do
    getPc >>= upperM . send ref . (`attachInfo` msg)

instance (AttachInfo msg PC, ActorLocalM m ref msg mb, Monad m) => ActorLocalM (NaivePropagationT ref msg mb ctx cmp v m) ref msg mb where
  self = upperM self
  receiveAll = upperM receiveAll -- TODO: think how to integrate this
  putMailbox = upperM . putMailbox

------------------------------------------------------------
-- Loop-boundary approach
------------------------------------------------------------

-- In this approach, not only t he path condition is kept as port
-- of the context, but also list of prior function calls,
-- this way, we known whether the component was called recursively
-- or not by inspecting this stack of function calls and finding recurring items.
--
-- Since this implements k-cfa already we fix the context to our context
-- information already.

-- | Information stored in the context for the loop-boundary approach
type LoopBoundaryContext = ([Exp], PC)

newtype LoopBoundaryPropagationT cmp v m a = LoopBoundaryPropagationT
  {getLoopBoundaryPropagationT :: TrackPathConditionT LoopBoundaryContext cmp v m a}
  deriving (Applicative, Monad, Functor, MonadLayer, MonadTrans, MonadJoin)

instance AttachInfo LoopBoundaryContext PC where
  attachInfo pc (history, _) = (history, pc)
  getInfo (_, pc) = pc

instance (CtxM m LoopBoundaryContext, CallM m env v, PropagationM m cmp PC) => CallM (LoopBoundaryPropagationT cmp v m) env v where
  call (expr, env) = do
    (history, pc) <- getCtx
    -- check if there is a loop in the program, if so continue without path condition
    -- and empty history, this ensures that there is a finite number of components
    if any ((> 1) . length) (group history)
      then withCtx (const ([], pc)) (upperM $ call (expr, env))
      else withEntry (upperM $ call (expr, env))

------------------------------------------------------------
-- Summary approach
------------------------------------------------------------
