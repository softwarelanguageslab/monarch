module Analysis.Contracts.Mailbox (ConstrainedMessage (..), AnnotateMessageT, runAnnotateMessageT) where

import Analysis.Actors.Mailbox (Message (..), SimpleMessage)
import Analysis.Actors.Monad (ActorGlobalM (..))
import Analysis.Symbolic.Monad (MonadPathCondition (..))
import Control.Monad.Identity
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Trans.Class
import Symbolic.AST

-- |  A variant of `SimpleMessage` that also contains
--  the path constraints of the path the message
--  was sent on.
data ConstrainedMessage v
  = -- | message sent on the path condition with given constraint
    ConstrainedMessage {getSimpleMessage :: SimpleMessage v, pc :: PC}
  | -- | regular message
    RegularMessage {getSimpleMessage :: SimpleMessage v}

-- | A constrained message is a message
instance Message (ConstrainedMessage v) v where
  matchesTag msg = matchesTag (getSimpleMessage msg)
  payload = payload . getSimpleMessage
  message tag = RegularMessage . message tag

-- | Monad transformer that implements messagee sending
-- semantics by annotating the message with a the current
-- path condition.
newtype AnnotateMessageT v ref msg mb m a = AnnotateMessageT (IdentityT m a)
  deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer)

instance (ActorGlobalM m ref (ConstrainedMessage v) mb, MonadPathCondition m v) => ActorGlobalM (AnnotateMessageT v ref (ConstrainedMessage v) mb m) ref (ConstrainedMessage v) mb where
  send ref (RegularMessage sm) = getPc >>= upperM . send ref . ConstrainedMessage sm
  send _ _ = error "can only annotate regular messages"
  getMailbox = upperM . getMailbox

-- | Run the `AnnotateMessageT` monad transformer
runAnnotateMessageT :: AnnotateMessageT v ref msg mb m a -> m a
runAnnotateMessageT (AnnotateMessageT ma) = runIdentityT ma
