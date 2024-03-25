{-# LANGUAGE UndecidableInstances #-}

-- | Message trace analysis. It tracks
-- the messages sent across each path in the analysis
-- and adds them to the trace.
--
-- This analysis always underapproximates the messages sent during the execution of the program:
-- if one path sends a message but the other path does not, then the message
-- is discarded from the trace. This enables a form of soft verification
-- of trace-based contracts (e.g., temporal or communication contracts)
-- since these forms of verification usually rely on the ellimination
-- of program states they deem to be unreachable during program executions.
module Analysis.Traces where

import Analysis.Actors.Monad
import Control.Monad.Layer
import Control.Monad.State (MonadState, StateT, modify, runStateT)
import Control.Monad.Trans.Class
import Lattice
import qualified Lattice.ReversePowerSetLattice as RSet

-- | An abstract trace keeps the set of messages
-- that are send during the turn of an actor.
--
-- Since traces are used for elliminating program
-- states they have to be an **under approximation**
-- of the actual program behavior. Thus, the
-- intersection rather than the union across
-- program paths to ensure that only the messages
-- present in all paths is kept in the trace.
--
-- Essentially, a trace is a reverse powerset of
-- messages.
newtype Trace m = Trace { getTrace :: ReversePowerSet m }

-- | We add tracing by extending our actor analysis
-- semantics to intercept evaluations of message sends.
-- More specifically, we provide an alternative instance
-- of the `ActorGlobalM` monad that tracks messages.
--
-- We implement this alternative instance for a type 'TraceT',
-- which implements the `MonadLayer` interface.
newtype TraceT msg ref m a = TraceT (StateT (Trace msg) m a)
  deriving (Applicative, Monad, Functor, MonadState (Trace msg), MonadLayer, MonadTrans)

-- | Record the given message in the trace
record :: Ord msg => msg -> Trace msg -> Trace msg
record msg = Trace . RSet.insert msg . getTrace

instance (Monad m, ActorGlobalM m ref msg, Ord msg) => ActorGlobalM (TraceT msg ref m) ref msg where
  send ref msg = modify (record msg) >> upperM (send ref msg)

-- | Run the trace monad and obtain a trace of messages
runTraceT :: TraceT msg ref m a -> m (a, Trace msg)
runTraceT (TraceT m) = runStateT m (Trace RSet.empty)
