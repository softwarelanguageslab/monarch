{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}

module Analysis.Monad.Taint where

import Control.Monad.Trans.Reader (ReaderT(..))
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Trans (MonadTrans)
import Control.Monad.Reader (MonadReader (..))
import Control.Monad.Join
import Domain.Core.TaintDomain.Class (TaintDomain(..))
import Lattice.Tainted (Tainted(..))
import Data.Kind (Type)
import Lattice (Joinable)
import Control.Monad (ap)
import Data.Functor ((<&>))
import Control.Monad.Escape
import Control.Monad.List (MonadTrans(..))

------------------------------------------------------------
--- The TaintM typeclass
------------------------------------------------------------

class (Monad m, TaintDomain t) => TaintM t m where
   currentTaint :: m t
   withTaint    :: t -> m a -> m a

-- convenience for working with the Tainted lattice

taint  :: TaintM t m => v -> m (Tainted t v)
taint v = Tainted v <$> currentTaint

addTaint :: TaintM t m => Tainted t v -> m (Tainted t v)
addTaint (Tainted v t) = Tainted v . addTaints t <$> currentTaint

unwrapTainted :: TaintM t m => (v -> m (Tainted t a)) -> Tainted t v -> m (Tainted t a)
unwrapTainted f (Tainted v t) = withTaint t (addTaint =<< f v)

unwrapTainted_ :: TaintM t m => (v -> m ()) -> Tainted t v -> m ()
unwrapTainted_ f (Tainted v t) = withTaint t (f v)

------------------------------------------------------------
--- TaintT instance
------------------------------------------------------------

newtype TaintT t m a = TaintT { runTaintT_ :: ReaderT t m a }
   deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadJoin, MonadReader t)

instance {-# OVERLAPPING #-} (Monad m, TaintDomain t) => TaintM t (TaintT t m) where
    currentTaint = ask
    withTaint = local . addTaints

instance (TaintM t m, Monad (l m), MonadLayer l) => TaintM t (l m) where
    currentTaint = upperM currentTaint
    withTaint t  = lowerM (withTaint t)

runWithTaint :: t -> TaintT t m a -> m a
runWithTaint t (TaintT m) = runReaderT m t


---
--- MayEscapeTaintedT 
---

newtype MayEscapeTaintedT t e (m :: Type -> Type) a = MayEscapeTaintedT { runMayEscapeTainted :: m (MayEscape (Tainted t e) a) }

instance (Monad m) => Functor (MayEscapeTaintedT t e m) where
    fmap f (MayEscapeTaintedT ma) = MayEscapeTaintedT $ fmap (fmap f) ma

instance (TaintM t m, Joinable e) => Applicative (MayEscapeTaintedT t e m) where
    pure = MayEscapeTaintedT . return . Value
    (<*>) = ap

instance (TaintM t m, Joinable e) => Monad (MayEscapeTaintedT t e m) where
    return = pure
    MayEscapeTaintedT m >>= f = MayEscapeTaintedT $ m >>= \case
                                    Bottom                      -> return Bottom
                                    Escape te                   -> return (Escape te)
                                    Value v                     -> runMayEscapeTainted (f v)
                                    MayBoth v te@(Tainted _ t)  -> withTaint t (runMayEscapeTainted $ f v) <&> addError te

instance (TaintM t m, MonadJoin m, Joinable e) => MonadEscape (MayEscapeTaintedT t e m) where
   type Esc (MayEscapeTaintedT t e m) = e
   throw e = MayEscapeTaintedT $ Escape . Tainted e <$> currentTaint
   catch (MayEscapeTaintedT m) hdl = MayEscapeTaintedT $ m >>= handle
      where handle Bottom                   = return Bottom
            handle (Escape (Tainted e t))   = withTaint t $ runMayEscapeTainted (hdl e)
            handle suc@(Value _)            = return suc
            handle (MayBoth v e)            = handle (Value v) `mjoin` handle (Escape e)

instance (Eq e, Joinable e, MonadJoin m, TaintM t m) => MonadJoin (MayEscapeTaintedT t e m) where
    mzero = MayEscapeTaintedT mzero
    mjoin (MayEscapeTaintedT ma) (MayEscapeTaintedT mb) = MayEscapeTaintedT (mjoin ma mb)

instance MonadTrans (MayEscapeTaintedT t e) where
    lift = MayEscapeTaintedT . fmap Value

instance MonadLayer (MayEscapeTaintedT t e) where
   lowerM f m = MayEscapeTaintedT $ f (runMayEscapeTainted m)
    