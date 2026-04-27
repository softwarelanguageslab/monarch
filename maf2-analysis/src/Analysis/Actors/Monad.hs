{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
module Analysis.Actors.Monad(
   -- * Self-identification
   MonadActorLocal(..),
   LocalMailboxT(..)
) where

import Domain.Actor
import Control.Monad.Layer
import Control.Monad.Join
import Control.Monad.Reader (ReaderT, ask, local)
import Analysis.Monad.Cache
import Control.Monad.State (StateT (StateT), MonadState)


-- | Local information of an actor
class MonadActorLocal v m | m -> v where
  withSelf :: ARef v -> m a -> m a
  getSelf :: m (ARef v)

------------------------------------------------------------
-- Layered instances
------------------------------------------------------------

instance {-# OVERLAPPABLE #-} (MonadActorLocal v m, Monad m, MonadLayer t) => MonadActorLocal v (t m) where
  withSelf c = lowerM (withSelf c)
  getSelf = upperM getSelf

------------------------------------------------------------
-- Instances
------------------------------------------------------------

-- | Mapping of actor references to their mailboxes
-- | Local mailbox for receiving messages, meant to be added above `GlobalMailboxT`
-- and above any non-determinism and caching effects.
newtype LocalMailboxT v mb m a = LocalMailboxT (StateT mb m a)
                               deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer, MonadState mb, MonadJoinable, MonadBottom, MonadCache)


-- | Actor-local semantics
newtype ActorLocalT v m a = ActorLocalT {runActorLocalT' :: ReaderT (ARef v) m a}
  deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl, MonadLayer, MonadJoinable, MonadCache)

instance (MonadJoin m) => MonadActorLocal v (ActorLocalT v m) where
  getSelf = ActorLocalT ask
  withSelf r = ActorLocalT . local (const r) . runActorLocalT'

