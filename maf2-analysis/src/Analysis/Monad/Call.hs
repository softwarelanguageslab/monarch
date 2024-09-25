{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.Call where

import Control.Monad.Trans.Reader (ReaderT(..))
import Control.Monad.Reader (MonadReader(..))
import Control.Monad.Layer
import Control.Monad.Escape (MonadEscape(..))

import Control.Monad.Join 

---
--- CallM 
---

class Monad m => CallM k v m | m -> k v where
    call :: k -> m v 

---
--- CallT 
---

newtype CallT k v f m a = CallT { _runCallT :: ReaderT (k -> f v) m a }
    deriving (Functor, Applicative, Monad, MonadReader (k -> f v), MonadTrans, MonadLayer, MonadJoin)

instance {-# OVERLAPPING #-} (Monad m) => CallM k v (CallT k v m m) where
    call k = CallT $ ReaderT $ \f -> f k 

instance (CallM k v m, Monad (t m), MonadLayer t) => CallM k v (t m) where
    call = upperM . call 

runCallT :: (k -> m v) -> CallT k v m m a -> m a
runCallT f (CallT m) = runReaderT m f 

-- MonadEscape instance

instance (Monad m, MonadEscape m) => MonadEscape (CallT k v f m) where
    type Esc (CallT k v f m) = Esc m
    throw = upperM . throw 
    catch (CallT mr) f = CallT $ ReaderT $ \r -> runReaderT mr r `catch` (flip runReaderT r . _runCallT . f)

