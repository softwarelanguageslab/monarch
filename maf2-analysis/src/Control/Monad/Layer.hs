{-# LANGUAGE FlexibleContexts, RankNTypes #-}
module Control.Monad.Layer(MonadLayer(..)) where

import Data.Kind
import Data.Functor.Identity
import Control.Monad.State
import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Identity
import GHC.TypeError

-- | A Monad "Layer" is similar to a Monad transformer, but is also provides a function to remove one level from the monad transformer stack. 
class (Monad (Lower m)) => MonadLayer (m :: Type -> Type) where
   -- | The next monad in the stack
   type Lower m :: Type  -> Type

   -- | Pop one level of the monad stack. 
   --
   -- Note that this function is rather limited because of the `forall b` constraint. However, this constraint is necessary since peeling one level from the monad stack can mean that additional values are inserted in the return value of the monad stack.
   lowerM :: (forall b . Lower m b -> Lower m b) -> m a -> m a

   -- | Same as `lift` but cannot be implemented directly here since `m` has the wrong kind.
   upperM :: Lower m a -> m a

-- | StateT instance
instance (Monad m) => MonadLayer (StateT s m) where
   type Lower (StateT s m) = m
   lowerM f m = StateT (f . runStateT m)
   upperM = lift

-- | ReaderT instance
instance (Monad m) => MonadLayer (ReaderT s m) where
   type Lower (ReaderT s m) = m
   lowerM f m = ReaderT  (f . runReaderT m)
   upperM = lift

-- WriterT instance
instance (Monad m, Monoid w) => MonadLayer (WriterT w m) where
   type Lower (WriterT w m) = m
   lowerM f m = WriterT (f $ runWriterT m)
   upperM = lift

-- MaybeT instance
instance (Monad m) => MonadLayer (MaybeT m) where
   type Lower (MaybeT m) = m
   upperM = lift
   lowerM f m = MaybeT (f $ runMaybeT m)

-- IdentityT instance (trivial)
instance (Monad m) => MonadLayer (IdentityT m) where
   type Lower (IdentityT m) = m
   upperM = IdentityT
   lowerM f m = IdentityT $ f (runIdentityT m)
