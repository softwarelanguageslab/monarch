{-# LANGUAGE FlexibleInstances #-}

module Analysis.Monad.Taint where

import Control.Monad.Trans.Reader (ReaderT(..))
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Trans (MonadTrans)
import Control.Monad.Reader (MonadReader (..))
import Control.Monad.Escape
import Control.Monad.Join
import Domain.Core.TaintDomain.Class (TaintDomain(..))
import Lattice.Tainted (Tainted(..))

------------------------------------------------------------
--- The TaintM typeclass
------------------------------------------------------------

class (Monad m, TaintDomain t) => TaintM t m where
   currentTaint :: m t 
   withTaint    :: t -> m a -> m a 

taint :: TaintM t m => Tainted t v -> m (Tainted t v)
taint (Tainted v t) = do t' <- currentTaint
                         return $ Tainted v (t `addTaints` t') 

------------------------------------------------------------
--- TaintT instance
------------------------------------------------------------

newtype TaintT t m a = TaintT { runTaintT_ :: ReaderT t m a }
   deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadJoin, MonadReader t)

instance {-# OVERLAPPING #-} (Monad m, TaintDomain t) => TaintM t (TaintT t m) where 
    currentTaint = ask 
    withTaint = local . addTaints 

instance (TaintM t m, MonadLayer l) => TaintM t (l m) where 
    currentTaint     = upperM currentTaint 
    withTaint t = lowerM (withTaint t) 

runWithTaint :: t -> TaintT t m a -> m a 
runWithTaint t (TaintT m) = runReaderT m t 
