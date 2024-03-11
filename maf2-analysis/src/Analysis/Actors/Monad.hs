{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
module Analysis.Actors.Monad(ActorEvalM(..), ActorLocalM(..), ActorGlobalM(..), ActorM, runActorT, module Analysis.Scheme.Monad, (!)) where

import Syntax.Scheme.AST
-- use the monads from the base-semantics
import Analysis.Monad
import Analysis.Scheme.Monad
import Analysis.Actors.Mailbox
import Domain.Scheme hiding (Exp)
import Lattice

import Control.Monad.Layer
import Control.Monad.Join

import qualified Data.Set as Set
import Control.Monad.State (MonadState, StateT, gets, put, runStateT)
import Control.Monad.Reader (MonadReader, ReaderT, ask, runReaderT)
import Data.Bifunctor (second)

class (SchemeM m v, ActorDomain v, ActorM m (ARef v) msg, Message msg v) => ActorEvalM m v msg | m -> msg where
   -- | Spawn a new actor with the given behavior, returns an actor reference
   -- corresponding to the newly spawned actor
   spawn :: Exp -> m v
   -- | Change the behavior of the actor to the given new behavior
   become :: Exp -> m ()

type ActorM m ref msg = (ActorLocalM m ref msg, ActorGlobalM m ref msg)

-- | Monadic context for actors, includes a mailbox 
-- and a reference to the current process identifier
class ActorLocalM m ref msg | m -> ref msg where
   -- | Retrieve a reference to the current actor pid
   self    :: m ref
   -- | Receive a message from the mailbox
   receive :: m msg

class ActorGlobalM m ref msg | m -> ref msg where
   -- | Send a message to the given actor
   send    :: ref -> msg -> m ()

(!) :: ActorGlobalM m ref msg => ref -> msg -> m ()
(!) = send

infixl 0 !

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
      ActorT { runActorT' :: StateT (ActorState mb) (ReaderT ref m) a }
   deriving (Functor, Applicative, Monad, MonadReader ref, MonadState (ActorState mb))

instance (Monad m) => MonadLayer (ActorT mb ref msg m) where
   type Lower (ActorT mb ref msg m) = m
   lowerM f = ActorT . lowerM (lowerM f) . runActorT'
   upperM = ActorT . upperM  . upperM

instance (JoinLattice mb, MonadJoin m) => MonadJoin (ActorT mb ref msg m) where
   mzero = ActorT mzero
   mjoin (ActorT ma) (ActorT mb) = ActorT $ mjoin ma mb

instance {-# OVERLAPPING #-} (MonadJoin m, JoinLattice msg, Mailbox mb msg) => ActorLocalM (ActorT mb ref msg m) ref msg where
   self    = ask
   receive = do
      rss <- gets (dequeue . mailbox)
      (msg, mb') <- mjoins (map pure (Set.toList rss))
      put (ActorState mb')
      return msg

instance (MonadLayer m, ActorLocalM (Lower m) ref msg) => ActorLocalM m ref msg where
   self = upperM self
   receive = upperM receive

-- | Add he ActorT monad to the stack to provide a mailbox and a reference to "self"
-- in the monadic context
runActorT :: Functor m => mb -> ref -> ActorT mb ref msg m a -> m (a, mb)
runActorT initialMailbox selfRef (ActorT ma) = runReaderT (fmap (second mailbox) (runStateT ma (ActorState initialMailbox))) selfRef
