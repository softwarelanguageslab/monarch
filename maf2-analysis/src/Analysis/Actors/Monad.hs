{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
module Analysis.Actors.Monad(ActorEvalM, ActorBehaviorM(..), ActorLocalM(..), ActorLocalMScoped(..), ActorGlobalM(..), ActorM, runActorT, module Analysis.Scheme.Monad, (!), runActorSystemT, receive, runNoSpawnT, NoSpawnT, runNoSendT) where

import Syntax.Scheme.AST
-- use the monads from the base-semantics
import Analysis.Scheme.Monad
import Analysis.Actors.Mailbox
import qualified Analysis.Actors.Mailbox as MB
import Domain.Scheme hiding (Exp)
import Lattice

import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.State.SVar (SVar)
import qualified Control.Monad.State.SVar as SVar

import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State (MonadState, StateT(..), gets, put, runStateT, modify)
import Control.Monad.Reader (MonadReader (local), ReaderT(..), ask, runReaderT)
import Control.Monad (void)
import Control.Monad.Identity (IdentityT, runIdentityT)

type ActorEvalM m v msg mb = (SchemeM m v, ActorDomain v, ActorM m (ARef v) msg mb, ActorBehaviorM m v, Message msg v)

class ActorBehaviorM m v | m -> v where
   -- | Spawn a new actor with the given behavior, returns an actor reference
   -- corresponding to the newly spawned actor
   spawn  :: JoinLattice v => Exp -> m v
   -- | Change the behavior of the actor to the given new behavior
   become :: Exp -> m ()

instance {-# OVERLAPPABLE #-} (MonadLayer m, ActorBehaviorM (Lower m) v) => ActorBehaviorM m v where
   spawn  = upperM . spawn
   become = upperM . become

type ActorM m ref msg mb = (ActorLocalM m ref msg mb, ActorGlobalM m ref msg)

-- | Monadic context for actors, includes a mailbox 
-- and a reference to the current process identifier
class ActorLocalM m ref msg mb | m -> ref msg mb where
   -- | Retrieve a reference to the current actor pid
   self    :: m ref
   -- | Receive a message from the mailbox
   receiveAll :: m [(msg, mb)]
   -- | Put new mailbox
   putMailbox :: mb -> m ()

receive :: (MonadJoin m, ActorLocalM m ref msg mb, JoinLattice a) =>(msg -> m a) -> m a
receive f = do
   msgs <- receiveAll
   mjoins (map (\(msg, mb') -> putMailbox mb' >> f msg) msgs)

class ActorGlobalM m ref msg | m -> ref msg where
   -- | Send a message to the given actor
   send         :: ref -> msg -> m ()

(!) :: ActorGlobalM m ref msg => ref -> msg -> m ()
(!) = send

infixl 0 !

instance {-# OVERLAPPABLE #-} (MonadLayer m, ActorGlobalM (Lower m) ref msg) => ActorGlobalM m ref msg where
   send ref = upperM . send ref

------------------------------------------------------------
-- Instances
------------------------------------------------------------

-- | The state of an actor that consists of its mailbox and a 
-- reference to itself.
newtype ActorState mb = ActorState { mailbox :: mb }
                       deriving (Eq, Ord, Joinable, JoinLattice)

-- | Basic implementation of the ActorM monad
-- It keeps track of the mailbox and a self-reference using the state monad
newtype ActorT mb ref msg m a =
      ActorT { _runActorT' :: StateT (ActorState mb) (ReaderT ref m) a }
   deriving (Functor, Applicative, Monad, MonadReader ref, MonadState (ActorState mb))

instance (Monad m) => MonadLayer (ActorT mb ref msg m) where
   type Lower (ActorT mb ref msg m) = m
   layerM f' f = ActorT $ StateT $ \st -> ReaderT $ \r -> f' (runActorT (mailbox st) r . f)
   upperM = ActorT . upperM  . upperM

instance (JoinLattice mb, MonadJoin m) => MonadJoin (ActorT mb ref msg m) where
   mzero = ActorT mzero
   mjoin (ActorT ma) (ActorT mb) = ActorT $ mjoin ma mb

instance {-# OVERLAPPING #-} (MonadJoin m, Mailbox mb msg) => ActorLocalM (ActorT mb ref msg m) ref msg mb where
   self    = ask
   receiveAll = gets (Set.toList . dequeue . mailbox)
   putMailbox = put . ActorState

instance (MonadLayer m, ActorLocalM (Lower m) ref msg mb) => ActorLocalM m ref msg mb where
   self = upperM self
   receiveAll = upperM receiveAll
   putMailbox = upperM . putMailbox

class ActorLocalMScoped m mb ref | m -> mb ref where
   withMailbox :: mb -> m a -> m a
   withSelf :: ref -> m a -> m a
instance (MonadLayer m, ActorLocalMScoped (Lower m) mb ref ) => ActorLocalMScoped m mb ref where
   withMailbox mailbox = lowerM (withMailbox mailbox)
   withSelf ref = lowerM (withSelf ref)
instance (Monad m) => ActorLocalMScoped (ActorT mb ref msg m) mb ref where
   withMailbox mb' m = do
      mb <- gets mailbox
      put (ActorState mb')
      v <- m
      put (ActorState mb)
      return v
   withSelf ref = local (const ref)

-- | Add he ActorT monad to the stack to provide a mailbox and a reference to "self"
-- in the monadic context
runActorT :: forall mb m ref msg a . Functor m => mb -> ref -> ActorT mb ref msg m a -> m (a, ActorState mb)
runActorT initialMailbox selfRef (ActorT ma) = runReaderT (runStateT ma (ActorState initialMailbox)) selfRef

------------------------------------------------------------
-- ActorSystemT
------------------------------------------------------------

type ActorSystemState ref mb = Map ref (SVar mb)

-- | An actor system keeps track of the mailboxes
-- of each actor in the system. For this is keeps
-- a mapping from actor references to mailboxes
-- 
-- This mapping is implemented using SVars such 
-- that dependencies between components of the 
-- analysis can be automatically tracked and 
-- an effect-driven worklist algorithm can be used.
newtype ActorSystemT ref msg mb m a = ActorSystemT (StateT (ActorSystemState ref mb) m a)
                         deriving (Functor, Applicative, Monad, MonadLayer, MonadState (ActorSystemState ref mb))

instance {-# OVERLAPPING #-} (Ord ref, Mailbox mb msg, SVar.MonadStateVar m) => ActorGlobalM (ActorSystemT ref msg mb m) ref msg where
   send ref msg = do
      mb <- gets (Map.lookup ref) >>= maybe (upperM $ SVar.new MB.empty) pure
      modify (Map.insert ref mb)
      -- TODO: we should actually check whether the 
      -- message should be added to the mailbox, it should 
      -- not be added for example, if the approximation does 
      -- not change.
      void $ upperM $ SVar.modify (Just . enqueue msg) mb

runActorSystemT :: ActorSystemState ref mb -> ActorSystemT ref msg mb m a -> m (a, Map ref (SVar mb))
runActorSystemT initial (ActorSystemT m) = runStateT m initial

------------------------------------------------------------
-- No-op implementations of the monads
------------------------------------------------------------

-- | Instance of ActorBehaviorM that ignores becomes and actor spawns
newtype NoSpawnT v m a = NoSpawnT (IdentityT m a)
                       deriving (Monad, Applicative, Functor, MonadLayer, MonadJoin)

instance (Monad m) => ActorBehaviorM (NoSpawnT v m) v where
   spawn  = return . const bottom
   become = const $ return ()

-- | Add the `NoSpawnT` to the monadic stack, introduces an instances of `ActorBehaviorM`
runNoSpawnT :: NoSpawnT v m a -> m a
runNoSpawnT (NoSpawnT m) = runIdentityT m

----------------------------------------

-- | Instance of ActorGlobalM that ignores "send"
newtype NoSendT ref msg m a = NoSendT (IdentityT m a) 
                           deriving (Monad, Applicative, Functor, MonadLayer, MonadJoin)

instance (Monad m) => ActorGlobalM (NoSendT ref msg m) ref msg where 
   send = const . const (return ())

runNoSendT :: NoSendT ref msg m a -> m a 
runNoSendT (NoSendT m) = runIdentityT m
