{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
module Analysis.Actors.Monad(
   MonadMailbox(..),
   receive,
   MonadActorLocal(..),
   GlobalMailboxT, 
   runWithMailboxT,
   ActorLocalT
) where

import Domain.Actor
import Lattice.Class
import qualified Lattice.Class as L
import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.Reader (ReaderT, ask, local)
import Analysis.Monad.Cache
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.Set as Set
import Data.Maybe
import Analysis.Monad.WorkList (WorkListM)
import Analysis.Monad.DependencyTracking (DependencyTrackingM(..), trigger)
import Analysis.Monad (IntraAnalysisT)
import Control.Monad.State (StateT, gets, modify, runStateT)
import Analysis.Actors.Mailbox (Mailbox, dequeue, enqueue, empty)

class (BottomLattice v, Joinable v) => MonadMailbox v m where
  send :: ARef v -> v -> m ()
  receive' :: ARef v -> m v

receive :: (MonadMailbox v m, Monad m) => ARef v -> (v -> m a) -> m a
receive ref = (receive' ref >>=)

class MonadActorLocal v m | m -> v where
  withSelf :: ARef v -> m a -> m a
  getSelf :: m (ARef v)
  terminate :: m ()
  waitUntilAllFinished :: m ()

------------------------------------------------------------
-- Layered instances
------------------------------------------------------------

instance {-# OVERLAPPABLE #-} (MonadActorLocal v m, Monad m, MonadLayer t) => MonadActorLocal v (t m) where
  withSelf c = lowerM (withSelf c)
  getSelf = upperM getSelf
  terminate = upperM terminate
  waitUntilAllFinished = upperM waitUntilAllFinished

instance
  {-# OVERLAPPABLE #-}
  ( MonadMailbox v m,
    MonadLayer t,
    Monad m
  ) =>
  MonadMailbox v (t m)
  where
  send ref = upperM . send ref
  receive' = upperM . receive'


------------------------------------------------------------
-- Instances
------------------------------------------------------------

-- | Local mailbox, meant to be added above `GlobalMailboxT`
-- and above any non-determinism and caching effects.
-- newtype LocalMailboxT v mb m a = LocalMailboxT (StateT (Maybe mb) m a)
--                                deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer)
--
-- instance (Monad m) => MonadMailbox v (LocalMailboxT v mb m) where
-- instance (Monad m) => MonadSpawn v (LocalMailboxT v mb m) where

-- | Global mailbox parametrized by a mailbox abstraction
newtype GlobalMailboxT v mb m a = GlobalMailboxT {_runGlobalMailboxT' :: StateT (Map (ARef v) mb) m a}
  deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer, MonadCache)

deriving instance (ref ~ ARef v, Ord ref, MonadJoinable m, Mailbox mb v, Joinable mb) => MonadJoinable (GlobalMailboxT v mb m)

instance (Monad m, BottomLattice v, Joinable v, Mailbox mb v, Ord v, ref ~ ARef v, Ord ref) => MonadMailbox v (GlobalMailboxT v mb m) where
  send ref v = GlobalMailboxT $ modify (Map.insertWith (const . enqueue v) ref (enqueue v empty))

  -- NOTE: we cannot use `MonadJoin` here since we have passed the `JoinT` layer in the monadic stack,
  -- thus we use a `Joinable` instance to join the values ourselves. This should **not** happen
  -- since the `JoinT` and `NonDetT` layers are normally responsible for providing this behavior.
  -- TODO: investigate how we can prevent monadic computations to be transported down in the stack
  -- so that they no longer skip the `JoinT` layer.
  receive' ref = GlobalMailboxT $ gets (foldr L.join bottom . Set.toList . Set.map fst . dequeue . fromMaybe empty . Map.lookup ref)

runWithMailboxT :: forall v mb m a . GlobalMailboxT v mb m a -> m (a, Map (ARef v) mb)
runWithMailboxT (GlobalMailboxT ma) = runStateT ma Map.empty

-- | Actor-local semantics
newtype ActorLocalT v m a = ActorLocalT {runActorLocalT' :: ReaderT (ARef v) m a}
  deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl, MonadLayer, MonadJoinable, MonadCache)

instance (MonadJoin m) => MonadActorLocal v (ActorLocalT v m) where
  getSelf = ActorLocalT ask
  withSelf r = ActorLocalT . local (const r) . runActorLocalT'
  terminate = mzero -- no particular behavior in the abstract
  waitUntilAllFinished = return () -- no behavior in the abstract


------------------------------------------------------------
-- Effect registration for global mailboxes
------------------------------------------------------------

type Dep v = ARef v

instance (MonadMailbox v m, WorkListM m cmp, DependencyTrackingM m cmp (Dep v)) => MonadMailbox v (IntraAnalysisT cmp m) where
  send to msg = trigger @_ @cmp to >> lift (send to msg)
  receive' ref = dependent @_ @cmp ref >> upperM (receive' ref)
