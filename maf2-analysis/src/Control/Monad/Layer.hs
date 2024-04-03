{-# LANGUAGE UndecidableInstances, FlexibleContexts, FlexibleInstances, RankNTypes, QuantifiedConstraints #-}
module Control.Monad.Layer(MonadLayer(..)) where

import Control.Monad.State  hiding (mzero)
import Control.Monad.Reader hiding (mzero)
import Control.Monad.Writer hiding (mzero)
import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Identity
import Lattice.Class
import Control.Monad.DomainError (MayEscapeT(..), MayEscape(..))
import ListT
import Control.Monad.Join

-- | A Monad "Layer" is similar to a Monad transformer, but is also provides a function to remove one level from the monad transformer stack. 
class (forall m . Monad m => Monad (t m), MonadTrans t) => MonadLayer t where

   lowerM :: (forall b . m b -> m b) -> t m a -> t m a

   upperM :: Monad m => m a -> t m a
   upperM = lift


-- | StateT instance
instance MonadLayer (StateT s) where
   lowerM f m = StateT (f . runStateT m)

-- | ReaderT instance
instance MonadLayer (ReaderT s) where
   lowerM f m = ReaderT (f . runReaderT m)

-- WriterT instance
instance (Monoid w) => MonadLayer (WriterT w) where
   lowerM f m = WriterT (f $ runWriterT m)

-- MaybeT instance
instance MonadLayer MaybeT where
   lowerM f m = MaybeT (f $ runMaybeT m)

-- IdentityT instance (trivial)
instance MonadLayer IdentityT where
   lowerM f m = IdentityT $ f (runIdentityT m)

-- Instance for MayEscapeT 
instance MonadTrans (MayEscapeT e) where  
   lift m = MayEscapeT (Value <$> m)
instance (Joinable e) => MonadLayer (MayEscapeT e) where
   lowerM f m = MayEscapeT $ f (runMayEscape m)  

-- Instance for ListT
instance MonadLayer ListT where   
   upperM = lift
   lowerM f m = ListT $ f (uncons m)


-- instance {-# OVERLAPPABLE #-} (MonadLayer m, MonadEscape (Lower m) e) => MonadEscape m e where
--    type Esc m = Esc (Lower m)
--    escape = upperM escape
--    catch ma hdl = lowerM (`catch` hdl) ma
