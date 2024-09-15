{-# LANGUAGE FlexibleInstances #-}

module Analysis.Monad.Taint where

import Control.Monad.Trans.Reader (ReaderT(..))
import Control.Monad.Layer (MonadLayer (upperM))
import Control.Monad.Trans (MonadTrans)
import Control.Monad.Reader (MonadReader (ask))
import Control.Monad.Escape
import Control.Monad.Join

------------------------------------------------------------
--- The TaintM typeclass
------------------------------------------------------------

class (Monad m) => TaintM t m where
   taint :: m t


------------------------------------------------------------
--- TaintT instance
------------------------------------------------------------

newtype TaintT t m a = TaintT { runTaintT_ :: ReaderT t m a }
   deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadJoin, MonadReader t)

instance {-# OVERLAPPING #-} Monad m => TaintM t (TaintT t m) where 
    taint = ask 

instance (TaintM t m, MonadLayer l) => TaintM t (l m) where 
    taint = upperM taint 


runWithTaint :: t -> TaintT t m a -> m a 
runWithTaint t (TaintT m) = runReaderT m t 

-- MonadEscape instance 

instance (Monad m, MonadEscape m) => MonadEscape (TaintT t m) where 
    type Esc (TaintT t m) = Esc m
    throw = upperM . throw
    catch (TaintT r) f = TaintT $ ReaderT $ \t -> runReaderT r t `catch` (runWithTaint t . f) 