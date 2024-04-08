{-# LANGUAGE UndecidableInstances, FlexibleContexts, FlexibleInstances, RankNTypes #-}
module Control.Monad.Layer(MonadLayer(..), MonadTrans(..)) where

import Data.Void
import Data.Kind
import Control.Monad.State
import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Identity
import Control.Monad.DomainError (MayEscapeT(..), MonadEscape(..), MayEscape(..))
import GHC.TypeError

-- | A Monad "Layer" is similar to a Monad transformer, but is also provides a function to remove one level from the monad transformer stack. 
class (Monad (Lower m)) => MonadLayer (m :: Type -> Type) where
   -- | The next monad in the stack
   type Lower m :: Type  -> Type

   -- equivalent: (forall c . Cont (Lower m c) a) -> Cont (m b) a
   layerM :: (forall c . (a -> Lower m c) -> Lower m c) -> (a -> m b) -> m b

   -- | Pop one level of the monad stack. 
   --
   -- Note that this function is rather limited because of the `forall b` constraint. However, this constraint is necessary since peeling one level from the monad stack can mean that additional values are inserted in the return value of the monad stack.
   lowerM :: (forall b . Lower m b -> Lower m b) -> m a -> m a
   lowerM f ma = layerM (\f' -> f (f' ())) (const ma) 

   -- | Same as `lift` but cannot be implemented directly here since `m` has the wrong kind.
   upperM :: Lower m a -> m a


-- | StateT instance
instance (Monad m) => MonadLayer (StateT s m) where
   type Lower (StateT s m) = m
   layerM f' f  = StateT $ \st -> f' (flip runStateT st . f)
   upperM = lift

-- | ReaderT instance
instance (Monad m) => MonadLayer (ReaderT s m) where
   type Lower (ReaderT s m) = m
   layerM f' f = ReaderT $ \r -> f' (flip runReaderT r . f)
   upperM = lift

-- WriterT instance
instance (Monad m, Monoid w) => MonadLayer (WriterT w m) where
   type Lower (WriterT w m) = m
   layerM f' f = WriterT $ f' (runWriterT . f)
   upperM = lift

-- MaybeT instance
instance (Monad m) => MonadLayer (MaybeT m) where
   type Lower (MaybeT m) = m
   layerM f' f = MaybeT $ f' (runMaybeT . f)
   upperM = lift

-- IdentityT instance (trivial)
instance (Monad m) => MonadLayer (IdentityT m) where
   type Lower (IdentityT m) = m
   upperM = IdentityT
   layerM f' f = IdentityT $ f' (runIdentityT . f)

-- Instance for MayEscapeT 
instance (Monad m) => MonadLayer (MayEscapeT e m) where
   type Lower (MayEscapeT e m) = m
   upperM   m = MayEscapeT (Value <$> m)
   layerM f' f = MayEscapeT $ f' (runMayEscape . f)

--instance (Monad m) => MonadLayer (ListT m) where   
--   type Lower (ListT m) = m
--   upperM = lift
--   layerM f' f = ListT $ f' (uncons . f)

-- Instance for ListT

-- instance {-# OVERLAPPABLE #-} (MonadLayer m, MonadEscape (Lower m) e) => MonadEscape m e where
--    type Esc m = Esc (Lower m)
--    escape = upperM escape
--    catch ma hdl = lowerM (`catch` hdl) ma
