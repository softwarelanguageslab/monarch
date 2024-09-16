{-# LANGUAGE FlexibleInstances #-}

module Analysis.Monad.Taint where

import Control.Monad.Trans.Reader (ReaderT(..))
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Trans (MonadTrans)
import Control.Monad.Reader (MonadReader (..))
import Control.Monad.Escape
import Control.Monad.Join
import Domain.Core.TaintDomain.Class (TaintDomain(..))

------------------------------------------------------------
--- The TaintM typeclass
------------------------------------------------------------

class (Monad m, TaintDomain t) => TaintM t m where
   taint        :: m t 
   withTaint    :: t -> m a -> m a 

------------------------------------------------------------
--- TaintT instance
------------------------------------------------------------

newtype TaintT t m a = TaintT { runTaintT_ :: ReaderT t m a }
   deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadJoin, MonadReader t)

instance {-# OVERLAPPING #-} (Monad m, TaintDomain t) => TaintM t (TaintT t m) where 
    taint = ask 
    withTaint = local . addTaints 

instance (TaintM t m, MonadLayer l) => TaintM t (l m) where 
    taint     = upperM taint 
    withTaint t = lowerM (withTaint t) 

runWithTaint :: t -> TaintT t m a -> m a 
runWithTaint t (TaintT m) = runReaderT m t 
