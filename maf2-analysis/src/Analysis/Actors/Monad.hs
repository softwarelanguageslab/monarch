{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
module Analysis.Actors.Monad(
   MonadMailbox(..),
   receive,
   MonadActorLocal(..),
   GlobalMailboxT,
   runWithMailboxT,
   ActorLocalT,
   FlowSensitiveStoreMailboxT,
   runFlowSensitiveStoreMailboxT,
   send'
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
import Analysis.Monad.DependencyTracking (DependencyTrackingM(..), MonadDependencyTracking, trigger)
import Analysis.Monad (IntraAnalysisT, MapM)
import Control.Monad.State (StateT, gets, modify, runStateT)
import Analysis.Actors.Mailbox (Mailbox (hasMessage), dequeue, enqueue, empty)
import Control.Monad.Identity (IdentityT, runIdentityT)
import Analysis.Monad.Map (In(In))
import Analysis.Monad.Store
import qualified Analysis.Monad.Map as MapM
import qualified Debug.Trace as Debug
import Data.Functor
import Analysis.Monad.IntraAnalysis (currentCmp)
import Control.Monad.IO.Class
import Control.Monad.Cond (ifM)


class (BottomLattice v, Joinable v) => MonadMailbox v m where
  -- | Send a message to the given actor reference, returns a boolean
  -- to indicate whether the message was already part of the abstract
  -- mailbox (False) or not (True).
  send :: ARef v -> v -> m Bool
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

-- | Same as @send@ but ignores the returned boolean
send' :: (MonadMailbox v m, Functor m) => ARef v -> v -> m ()
send' ref = void . send ref

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
  deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer)

deriving instance (MonadCache m, Ord mb, Ord v, Ord (ARef v)) => MonadCache (GlobalMailboxT v mb m)


deriving instance (ref ~ ARef v, Ord ref, MonadJoinable m, Mailbox mb v, Joinable mb) => MonadJoinable (GlobalMailboxT v mb m)

instance (Monad m, BottomLattice v, Joinable v, Mailbox mb v, Ord v, ref ~ ARef v, Ord ref) => MonadMailbox v (GlobalMailboxT v mb m) where
  send ref v = GlobalMailboxT $ ifM (gets (hasMessage v . fromMaybe empty . Map.lookup ref)) (return False) (modify (Map.insertWith (const . enqueue v) ref (enqueue v empty)) $> True)

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
-- Flow-sensitive stores and mailboxes
------------------------------------------------------------

-- | A layer that writes a local store before sending the message 
-- so that at every "continuation" of the actor, the store is
-- known before it is reanalyzed.
newtype FlowSensitiveStoreMailboxT ref s adr v m a = FlowSensitiveStoreMailboxT (IdentityT m a)
                                   deriving (Applicative, Functor, Monad, MonadCache, MonadLayer, MonadJoinable, MonadBottom)


instance (BottomLattice v, Joinable v, MapM (In ref s) s m, StoreM' s adr v m, MonadMailbox v m, Joinable s, ARef v ~ ref) => MonadMailbox v (FlowSensitiveStoreMailboxT (In ref s) s adr v m) where
  send ref msg = do
    sto <- currentStore
    upperM (MapM.joinWith @(In ref s) @s (In ref) sto)
    upperM $ send ref msg
  receive' = upperM . receive'


runFlowSensitiveStoreMailboxT :: FlowSensitiveStoreMailboxT ref s adr v m a -> m a
runFlowSensitiveStoreMailboxT (FlowSensitiveStoreMailboxT ma) = runIdentityT ma


------------------------------------------------------------
-- Effect registration for global mailboxes
------------------------------------------------------------

type Dep v = ARef v

-- instance (MonadMailbox v m, WorkListM m cmp, MonadIO m, Show cmp, MonadDependencyTracking cmp (Dep v) m) => MonadMailbox v (IntraAnalysisT cmp m) where
--   send to msg = (currentCmp >>= (liftIO . putStrLn . ("cmp: " ++) . show)) >> trigger @cmp to >> upperM (send to msg)
--   receive' ref = dependent @cmp ref >> upperM (receive' ref)
