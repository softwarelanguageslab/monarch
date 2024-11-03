module Analysis.Contracts.Mailbox (ConstrainedMessage (..), AnnotateMessageT, runAnnotateMessageT) where

import qualified Domain.Scheme.Actors.Message as ActorScheme
import Analysis.Actors.Mailbox
import Analysis.Symbolic.Monad (MonadPathCondition (..))
import Control.Monad.Identity
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Trans.Class
import Symbolic.AST

-- |  A variant of `SimpleMessage` that also contains
--  the path constraints of the path the message
--  was sent on.
data ConstrainedMessage msg
  = -- | a regular message
    RegularMessage {getMessage :: msg}
  | -- | messagers sent on a path with the given constraints as path condition
    ConstrainedMessage {getMessage :: msg, pc :: PC Int}
  deriving (Ord, Eq, Show)

-- | A version for Actor scheme of the constrained message
instance (ActorScheme.MessageDomain msg) => ActorScheme.MessageDomain (ConstrainedMessage msg) where 
   type Payload (ConstrainedMessage msg) = ActorScheme.Payload msg 
   type Tag (ConstrainedMessage msg) = ActorScheme.Tag msg

   message tag = RegularMessage . ActorScheme.message tag
   tag = ActorScheme.tag . getMessage
   payload = ActorScheme.payload . getMessage 

-- | Monad transformer that implements message sending
-- semantics by annotating the message with a the current
-- path condition and delegating message sending to a monad lower on the stack.
newtype AnnotateMessageT v ref msg mb m a = AnnotateMessageT (IdentityT m a)
  deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer)

-- | Run the `AnnotateMessageT` monad transformer
runAnnotateMessageT :: AnnotateMessageT v ref msg mb m a -> m a
runAnnotateMessageT (AnnotateMessageT ma) = runIdentityT ma
