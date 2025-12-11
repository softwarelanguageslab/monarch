{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
module Analysis.Actors.Monad(
   -- * Non-partitioned mailboxes
   MonadMailbox,
   MonadMailbox'(..),
   MonadSend(..),
   MonadReceive(..),
   receive,
   peek,
   send',
   -- * Self-identification
   MonadActorLocal(..),
   -- * Monad instances
   GlobalMailboxT,
   runWithMailboxT,
   ActorLocalT,
   LocalMailboxT,
   MailboxDep(..),
   -- *  Partitioned mailboxes
   MonadMailboxPartitioning,
   peekPartitioned,
   receivePartitioned,
   sendPartitioned,
   runGlobalPartitionedMailboxT,
   LocalPartitionedMailboxT,
   GlobalPartitionedMailboxT,
   MonadPartitionedMailboxSend
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
import Control.Monad.State (StateT (StateT), gets, runStateT, MonadState (put))
import Analysis.Actors.Mailbox.Class
    ( Mailbox(enqueue, empty, dequeue) )
import Data.Functor
import Control.Monad.Cond (ifM)
import Analysis.Monad (IntraAnalysisT, MonadDependencyTracking, register, DebugIntraAnalysisT, MonadDependencyTrigger (..))
import qualified Control.Monad.State as State
import qualified Analysis.Actors.Mailbox.Class as MB
import Analysis.Monad.Partition (MonadPartition)
import Analysis.Actors.Mailbox.Partitioned (PartitionedMailbox)
import qualified Analysis.Actors.Mailbox.Partitioned as Partitioned
import qualified Analysis.Monad.Partition as MonadPartition
import Control.Monad (when)


-- | Receive messages of type 'v' in monadic context 'm'
class MonadReceive v m | m -> v where
  -- | Non-deterministically receive a message from the mailbox
  receive' :: ARef v -> m v
  -- | Non-deterministically peek at the first message of the mailbox
  peek' :: ARef v -> m v


-- | CPS version of "receive'"
receive :: (MonadReceive v m, Monad m) => ARef v -> (v -> m a) -> m a
receive ref = (receive' ref >>=)

-- | CPS version of "peek"
peek :: (MonadReceive v m, Monad m) => ARef v -> (v -> m a) -> m a
peek ref = (peek' ref >>=)


-- | Send a message of type 'v' in the monadic context 'm'
class MonadSend v m | m -> v where
  -- | Send a message to the given actor reference,
  -- returns 'True' whenever the message was already part
  -- of the mailbox.
  send :: ARef v -> v -> m Bool

-- | Same as @send@ but ignores the returned boolean
send' :: (MonadMailbox v m, Functor m) => ARef v -> v -> m ()
send' ref = void . send ref

-- | A monadic context supporting mailbox operations is one that supports sending and receiving messages
type MonadMailbox v m = (MonadReceive v m, MonadSend v m, BottomLattice v, Joinable v)

-- | A monadic context for retrieving the mailbox associated with a particular actor 
class MonadMailbox' ref mb m | m -> ref mb where
  getMailbox :: ref -> m mb
  getMailboxes :: m (Map ref mb)

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
  peek'    = upperM . peek'

instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadMailbox' ref mb m) => MonadMailbox' ref mb (t m) where
  getMailbox = upperM . getMailbox
  getMailboxes = upperM getMailboxes

------------------------------------------------------------
-- Instances
------------------------------------------------------------

-- | Mapping of actor references to their mailboxes
type MailboxMap v mb = Map (ARef v) mb

-- | Local mailbox for receiving messages, meant to be added above `GlobalMailboxT`
-- and above any non-determinism and caching effects.
newtype LocalMailboxT v mb m a = LocalMailboxT (StateT mb m a)
                               deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer, MonadState mb, MonadJoinable, MonadBottom, MonadCache)

instance (Mailbox mb v, BottomLattice mb, Joinable mb, Joinable v, MonadJoin m, MonadActorLocal v m, Eq (ARef v)) => MonadReceive v (LocalMailboxT v mb m) where
  receive' ref = do
    self <- getSelf
    if self == ref then
      mjoinMap (\(msg, mb) -> put mb $> msg) =<< gets (Set.toList . dequeue)
    else error "ref /= self, TODO: fix that `receive'` can no longer be called with other references"
  peek' ref = do
    self <- getSelf
    if self == ref then
      mjoinMap return =<< gets (Set.toList . MB.peek)
    else error "ref /= self, TODO: fix that `receive'` can no longer be called with other references"

-- | Global mailbox parametrized by a mailbox abstraction
newtype GlobalMailboxT v mb m a = GlobalMailboxT {_runGlobalMailboxT' :: StateT (MailboxMap v mb) m a}
  deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer)

deriving instance (MonadCache m, Ord mb, Ord (ARef v)) => MonadCache (GlobalMailboxT v mb m)
deriving instance (ref ~ ARef v, Ord ref, MonadJoinable m, Mailbox mb v, Joinable mb) => MonadJoinable (GlobalMailboxT v mb m)

instance (Monad m, Mailbox mb v, ref ~ ARef v, Ord ref) => MonadSend v (GlobalMailboxT v mb m) where
  send ref v = GlobalMailboxT $ ifM (liftA2 (==) mbs mbs') (return False) ((State.put =<< mbs') >> return True)
    where mbs  =  State.get
          mbs' =  gets (Map.insertWith (\_ old ->  enqueue v old) ref (enqueue v empty))

instance (Monad m, BottomLattice v, Joinable v, Mailbox mb v, Ord v, ref ~ ARef v, Ord ref) => MonadReceive v (GlobalMailboxT v mb m) where
  -- NOTE: we cannot use `MonadJoin` here since we have passed the `JoinT` layer in the monadic stack,
  -- thus we use a `Joinable` instance to join the values ourselves. This should **not** happen
  -- since the `JoinT` and `NonDetT` layers are normally responsible for providing this behavior.
  -- TODO: investigate how we can prevent monadic computations to be transported down in the stack
  -- so that they no longer skip the `JoinT` layer.
  receive' ref = GlobalMailboxT $ gets (foldr L.join bottom . Set.toList . Set.map fst . dequeue . fromMaybe empty . Map.lookup ref)
  peek' ref = GlobalMailboxT $ gets (foldr L.join bottom . Set.toList .  MB.peek . fromMaybe empty . Map.lookup ref)

instance (ref ~ ARef v, Mailbox mb v, Ord ref, Monad m) => MonadMailbox' ref mb (GlobalMailboxT v mb m) where
  getMailbox ref = GlobalMailboxT $ gets (fromMaybe empty . Map.lookup ref)
  getMailboxes = GlobalMailboxT State.get

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

-- Dependencies on actor mailboxes
newtype MailboxDep ref mb = MailboxDep ref
  deriving (Ord, Eq, Show)

instance (MonadMailbox' ref mb m, MonadDependencyTracking cmp (MailboxDep ref mb) m) => MonadMailbox' ref mb (IntraAnalysisT cmp m) where
  getMailbox ref = ask >>= register @cmp (MailboxDep @_ @mb ref) >> upperM (getMailbox ref)
  getMailboxes = upperM getMailboxes


instance (MonadMailbox' ref mb m, MonadDependencyTracking cmp (MailboxDep ref mb) m) => MonadMailbox' ref mb (DebugIntraAnalysisT cmp m) where
  getMailbox ref = ask >>= register @cmp (MailboxDep @_ @mb ref) >> upperM (getMailbox ref)
  getMailboxes = upperM getMailboxes

-- type Dep v = ARef v

-- instance (MonadMailbox v m, WorkListM m cmp, MonadIO m, Show cmp, MonadDependencyTracking cmp (Dep v) m) => MonadMailbox v (IntraAnalysisT cmp m) where
--   send to msg = (currentCmp >>= (liftIO . putStrLn . ("cmp: " ++) . show)) >> trigger @cmp to >> upperM (send to msg)
--   receive' ref = dependent @cmp ref >> upperM (receive' ref)

------------------------------------------------------------
-- Partitioned mailboxes
------------------------------------------------------------


-- Unfortunately, we have to duplicate all the abstractions (i.e., "MonadSend", "MonadReceive", ...) so that
-- they work for partitioned mailboxes.
--
-- This is because using partitioned mailboxes is not entirely transparent as their partitions have
-- to be integrated so that the traces also become partitioned.
--
-- Since partitioned mailboxes can express the same semantics as non-partitioned ones (i.e., by using the unit partition)
-- the non-partitioned mailboxes will become deprecated and will be removed from the implementation in the future.


-- | The API to a partitioned mailbox is similar to a state monad, this is so that the monadic actions
-- are easily implemented by a 'MonadLayer' instance. A higher-level API is then given as a set of polymorphic
-- functions, this API also manages the partitioned trace using the 'MonadPartition' type class.
class MonadPartitionedMailboxReceive e msg mb m | m-> mb msg e where
  getsPartitionedMailbox :: (PartitionedMailbox e msg mb -> a) -> m a
  putPartitionedMailbox :: PartitionedMailbox e msg mb -> m ()

class MonadPartitionedMailboxSend e ref msg mb m | m-> mb msg e where
  -- | Modifies the given maiblox, returns "True" if the mailbox was modified, and "False" otherwise
  modifyPartitionedMailbox :: (PartitionedMailbox e msg mb -> PartitionedMailbox e msg mb) -> ref -> m Bool

instance {-# OVERLAPPABLE #-} (MonadLayer t, Monad m, MonadPartitionedMailboxReceive e msg mb m) => MonadPartitionedMailboxReceive e msg mb (t m) where
  getsPartitionedMailbox f = upperM $ getsPartitionedMailbox f
  putPartitionedMailbox = upperM . putPartitionedMailbox
instance {-# OVERLAPPABLE #-} (MonadLayer t, Monad m, MonadPartitionedMailboxSend e ref msg mb m) => MonadPartitionedMailboxSend e ref msg mb (t m) where
  modifyPartitionedMailbox f = upperM . modifyPartitionedMailbox f


type MonadMailboxPartitioning e v mb m = (
  -- Monadic constraints
  MonadPartition e m,
  MonadPartitionedMailboxReceive e v mb m,
  MonadPartitionedMailboxSend e (ARef v) v mb m,
  MonadActorLocal v m,
  MonadJoinable m,
  MonadBottom m,
  Monad m,
  -- Constraints on values and partitions
  Ord e,
  Ord v,
  Joinable v,
  PartialOrder e,
  Mailbox mb v)


-- | Receives a message from the partitioned mailbox
receivePartitioned :: forall e v mb m .  MonadMailboxPartitioning e v mb m => (v-> m v) -> m v
receivePartitioned f =  do
  getsPartitionedMailbox @_ @_ @mb Partitioned.dequeue >>= mjoins . map (\(msg, e, mb') -> MonadPartition.integrate e >> putPartitionedMailbox mb' >> f msg) . Set.toList


-- | Peeks at the top of the message queue
peekPartitioned :: forall e v mb m . MonadMailboxPartitioning e v mb m => (v -> m v) -> m v
peekPartitioned f =
  getsPartitionedMailbox @_ @_ @mb Partitioned.peek >>= mjoins . map (\(msg, e) -> MonadPartition.integrate e >> f msg) . Set.toList

-- | Sends a message to the given actor reference
sendPartitioned :: forall e v mb m . MonadMailboxPartitioning e v mb m  => ARef v -> v -> m ()
sendPartitioned ref msg = do
  currentPartition <- MonadPartition.get
  void $ modifyPartitionedMailbox @_ @_ @_ @mb (Partitioned.enqueue currentPartition msg) ref

--
-- Dependency tracking
--

-- Partitioned mailboxes will usually be global to each actor analysis. To ensure that when mailboxes change, the appropriate analyses are triggered, we register the monadic actions related to mailbox use and manipulation in the "IntraAnalysis" monad.

instance (
  MonadPartitionedMailboxSend e ref msg mb m,
  MonadDependencyTracking ref (MailboxDep ref (PartitionedMailbox e msg mb)) m
  ) => MonadPartitionedMailboxSend e ref msg mb (IntraAnalysisT cmp m) where
  modifyPartitionedMailbox f ref = upperM (modifyPartitionedMailbox f ref) >>= (\v -> when v (trigger (MailboxDep @ref @(PartitionedMailbox e msg mb) ref)) $> v)

--
-- Monad implementation
-- 

-- | Local partitioned mailbox
newtype LocalPartitionedMailboxT e msg mb m a =
        LocalPartitionedMailbox (StateT (PartitionedMailbox e msg mb) m a)
   deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer, MonadState (PartitionedMailbox e msg mb), MonadJoinable, MonadBottom)

deriving instance (MonadCache m, Monad m, Ord (PartitionedMailbox e msg mb)) => MonadCache (LocalPartitionedMailboxT e msg mb m)

instance (Monad m) => MonadPartitionedMailboxReceive e msg mb (LocalPartitionedMailboxT e msg mb m) where
  getsPartitionedMailbox = State.gets
  putPartitionedMailbox = State.put

-- | Global partitioned mailbox
newtype GlobalPartitionedMailboxT e ref msg mb m a = GlobalPartitionedMailbox (StateT (Map ref (PartitionedMailbox e msg mb)) m a)
                                            deriving (Monad, Applicative, Functor, MonadLayer, MonadTrans)

runGlobalPartitionedMailboxT :: GlobalPartitionedMailboxT e ref msg mb m a -> m (a, Map ref (PartitionedMailbox e msg mb))
runGlobalPartitionedMailboxT (GlobalPartitionedMailbox m) = runStateT m Map.empty

instance (Monad m, Ord ref, Ord e, Eq (PartitionedMailbox e msg mb)) => MonadPartitionedMailboxSend e ref msg mb (GlobalPartitionedMailboxT e ref msg mb m) where
  modifyPartitionedMailbox f ref = GlobalPartitionedMailbox $ do
    state <- State.get
    State.put (Map.insert ref (f (fromMaybe Partitioned.empty $ Map.lookup ref state)) state)
    state' <- State.get
    return (state /= state')

--
-- Other type class instances
--


instance (Monad m, Ord e, Ord ref) => MonadMailbox' ref (PartitionedMailbox e msg mb) (GlobalPartitionedMailboxT e ref msg mb m) where
  getMailbox ref = GlobalPartitionedMailbox $ gets (fromMaybe Partitioned.empty . Map.lookup ref)
  getMailboxes = GlobalPartitionedMailbox State.get

