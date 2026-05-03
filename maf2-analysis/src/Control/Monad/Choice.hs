{-# LANGUAGE QuantifiedConstraints #-}
module Control.Monad.Choice (MonadChoice(..), choices) where 
import Control.Monad.Reader (ReaderT (..))
import Control.Monad.Trans.Writer
import Control.Monad.State
import Control.Monad.Trans.Maybe
import Control.Monad.Except
import Control.Monad.Identity (IdentityT (..))
import Lattice.Class (Joinable)
import Control.Monad.Escape (MayEscapeT(..))

------------------------------------------------------------
-- Type class
------------------------------------------------------------

-- | (Symbolic) choice monad which encodes splitting execution 
-- on a conditional.
class MonadChoice b m where
    choice :: Joinable a => b -> m a -> m a -> m a

------------------------------------------------------------
-- Instances
------------------------------------------------------------

instance (MonadChoice b m) => MonadChoice b (ReaderT r m) where 
    choice b ma mb = ReaderT $ \r -> choice b (runReaderT ma r) (runReaderT mb r)

instance (MonadChoice b m, forall a . Joinable a => Joinable (a, w)) => MonadChoice b (WriterT w m) where
    choice b (WriterT ma) (WriterT mb) = WriterT (choice b ma mb)


instance (MonadChoice b m, forall a . Joinable a => Joinable (a, s)) => MonadChoice b (StateT s m) where
    choice b ma mb = StateT (\st -> choice b (runStateT ma st) (runStateT mb st))

instance (MonadChoice b m, forall a . Joinable a => Joinable (Maybe a)) => MonadChoice b (MaybeT m) where
    choice b ma mb = MaybeT $ choice b (runMaybeT ma) (runMaybeT mb)

instance (MonadChoice b m, forall a . Joinable a => Joinable (Either e a)) => MonadChoice b (ExceptT e m) where   
    choice b (ExceptT ma) (ExceptT mb) = ExceptT $ choice b ma mb

instance (MonadChoice b m) => MonadChoice b (IdentityT m) where 
    choice b ma mb = IdentityT $ choice b (runIdentityT ma) (runIdentityT mb)

instance (MonadChoice b m, Joinable e) => MonadChoice b (MayEscapeT e m) where
    choice b (MayEscapeT ma) (MayEscapeT mb) = MayEscapeT $ choice b ma mb

choices :: (MonadChoice b m, Joinable a) => [(b, m a)] -> m a -> m a
choices [] ma = ma 
choices ((b, ma) : bmas) def = choice b ma (choices bmas def)
