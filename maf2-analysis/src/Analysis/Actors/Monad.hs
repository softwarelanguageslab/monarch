{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
module Analysis.Actors.Monad(
   MonadMailbox,
   MonadSend(..),
   MonadReceive(..),
   receive,
   MonadActorLocal(..),
   GlobalMailboxT,
   runWithMailboxT,
   ActorLocalT,
   send',
   LocalMailboxT
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
import Control.Monad.State (StateT, gets, modify, runStateT, MonadState (put))
import Analysis.Actors.Mailbox (Mailbox (hasMessage), dequeue, enqueue, empty)
import Data.Functor
import Control.Monad.Cond (ifM)


-- | Receive messages of type 'v' in monadic context 'm'
class MonadReceive v m | m -> v where
  -- | Non-deterministically receive a message from the mailbox
  receive' :: ARef v -> m v

-- | Send a message of type 'v' in the monadic context 'm'
class MonadSend v m | m -> v where
  -- | Send a message to the given actor reference,
  -- returns 'True' whenever the message was already part
  -- of the mailbox.
  send :: ARef v -> v -> m Bool

type MonadMailbox v m = (MonadReceive v m, MonadSend v m, BottomLattice v, Joinable v)

-- | CPS version of "receive'"
receive :: (MonadMailbox v m, Monad m) => ARef v -> (v -> m a) -> m a
receive ref = (receive' ref >>=)

-- | Local information of an actor
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

instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadSend v m) => MonadSend v (t m) where
  send ref = upperM . send ref

instance {-# OVERLAPPABLE #-} (Monad m ,MonadLayer t, MonadReceive v m) => MonadReceive v (t m) where
  receive' = upperM . receive'

-- | Same as @send@ but ignores the returned boolean
send' :: (MonadMailbox v m, Functor m) => ARef v -> v -> m ()
send' ref = void . send ref

------------------------------------------------------------
-- Instances
------------------------------------------------------------

-- | Local mailbox for receiving messages, meant to be added above `GlobalMailboxT`
-- and above any non-determinism and caching effects.
newtype LocalMailboxT v mb m a = LocalMailboxT (StateT mb m a)
                               deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer, MonadState mb, MonadJoinable, MonadBottom, MonadCache)

instance (Mailbox mb v, BottomLattice mb, Joinable mb, Joinable v, MonadReceive v m, MonadJoin m, MonadActorLocal v m, Eq (ARef v)) => MonadReceive v (LocalMailboxT v mb m) where
  receive' ref = do
    self <- getSelf
    if self == ref then
      mjoinMap (\(msg, mb) -> put mb $> msg) =<< gets (Set.toList . dequeue)
    else upperM (receive' ref)

-- | Global mailbox parametrized by a mailbox abstraction
newtype GlobalMailboxT v mb m a = GlobalMailboxT {_runGlobalMailboxT' :: StateT (Map (ARef v) mb) m a}
  deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer)

deriving instance (MonadCache m, Ord mb, Ord v, Ord (ARef v)) => MonadCache (GlobalMailboxT v mb m)


deriving instance (ref ~ ARef v, Ord ref, MonadJoinable m, Mailbox mb v, Joinable mb) => MonadJoinable (GlobalMailboxT v mb m)

instance (Monad m, BottomLattice v, Joinable v, Mailbox mb v, Ord v, ref ~ ARef v, Ord ref) => MonadSend v (GlobalMailboxT v mb m) where
  send ref v = GlobalMailboxT $ ifM (gets (hasMessage v . fromMaybe empty . Map.lookup ref)) (return False) (modify (Map.insertWith (\_ old ->  enqueue v old) ref (enqueue v empty)) $> True)


instance (Monad m, BottomLattice v, Joinable v, Mailbox mb v, Ord v, ref ~ ARef v, Ord ref) => MonadReceive v (GlobalMailboxT v mb m) where
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
  terminate = mbottom-- no particular behavior in the abstract
  waitUntilAllFinished = return () -- no behavior in the abstract

------------------------------------------------------------
-- Effect registration for global mailboxes
------------------------------------------------------------

-- type Dep v = ARef v

-- instance (MonadMailbox v m, WorkListM m cmp, MonadIO m, Show cmp, MonadDependencyTracking cmp (Dep v) m) => MonadMailbox v (IntraAnalysisT cmp m) where
--   send to msg = (currentCmp >>= (liftIO . putStrLn . ("cmp: " ++) . show)) >> trigger @cmp to >> upperM (send to msg)
--   receive' ref = dependent @cmp ref >> upperM (receive' ref)
