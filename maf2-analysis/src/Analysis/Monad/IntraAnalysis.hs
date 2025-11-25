{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Monad.IntraAnalysis (
    IntraAnalysisT,
    DebugIntraAnalysisT,
    runIntraAnalysis,
    runDebugIntraAnalysis,
    currentCmp,
    MonadIntraAnalysis(..)
) where

import Analysis.Monad.ComponentTracking
import Analysis.Monad.WorkList
import Control.Monad.Reader
import Control.Monad.Layer
import Control.Monad.Join
import Analysis.Monad.DependencyTracking
import Analysis.Monad.Store
import Control.Monad.Cond
import Analysis.Monad.Map
import Data.Typeable
import Debug.Trace

------------------------------------------------------------
-- MonadIntraAnalysis
------------------------------------------------------------

class MonadIntraAnalysis cmp m | m -> cmp where 
    currentCmp :: m cmp

instance {-# OVERLAPPABLE #-} (MonadLayer t, Monad m, MonadIntraAnalysis cmp m) =>  MonadIntraAnalysis cmp (t m) where
    currentCmp = upperM currentCmp

------------------------------------------------------------
--- IntraAnalysis monad layer
------------------------------------------------------------

newtype IntraAnalysisT cmp m a = IntraAnalysisT (ReaderT cmp m a)
    deriving (Functor, Applicative, Monad, MonadReader cmp, MonadTrans, MonadLayer, MonadTransControl, MonadJoinable)

instance {-# OVERLAPPING #-} (Monad m) => MonadIntraAnalysis cmp (IntraAnalysisT cmp m) where 
    currentCmp = ask

instance {-# OVERLAPPING #-} (ComponentTrackingM m cmp, WorkListM m cmp, Ord cmp) => ComponentTrackingM (IntraAnalysisT cmp m) cmp where
    spawn cmp = unlessM (upperM $ has cmp)
                        (upperM $ spawn cmp >> add cmp)
    components = upperM components

instance {-# OVERLAPPING #-} (StoreM a v m, Eq v, DependencyTrackingM cmp a m, MonadDependencyTrigger cmp a m, WorkListM m cmp)
        => StoreM a v (IntraAnalysisT cmp m) where
    lookupAdr a = currentCmp >>= upperM . register a >> upperM (lookupAdr a)
    writeAdr a v = whenM (upperM $ writeAdr' a v) (notrace ("updated " ++ show a) (upperM $ trigger a))
    updateAdr a v = whenM (upperM $ updateAdr' a v) (notrace ("updated " ++ show a) (upperM $ trigger a))
    updateWith fs fw a = whenM (upperM $ updateWith' fs fw a) (upperM $ trigger a)
    hasAdr = upperM . hasAdr @a @v

instance {-# OVERLAPPING #-} (MapM k v m, Eq v, DependencyTrackingM cmp k m, MonadDependencyTrigger cmp k m, WorkListM m cmp, Typeable v)
    => MapM k v (IntraAnalysisT cmp m) where
        get k = currentCmp >>= upperM . register k >> upperM (get k)
        put k v = whenM (upperM $ put' k v) (upperM $ trigger k)
        joinWith k v = whenM (upperM $ joinWith' k v) (notrace ("joinWith" ++ show (typeOf v)) $ upperM $ trigger k)
        getAll = upperM getAll

notrace :: String -> v -> v
notrace = const id

runIntraAnalysis :: cmp -> IntraAnalysisT cmp m a -> m a
runIntraAnalysis cmp (IntraAnalysisT f) = runReaderT f cmp
  
-------------------------------------------------------------
-- IntraAnalysis with debugging (trace)
-------------------------------------------------------------


newtype DebugIntraAnalysisT cmp m a = DebugIntraAnalysisT (ReaderT cmp m a)
    deriving (Functor, Applicative, Monad, MonadReader cmp, MonadTrans, MonadLayer, MonadTransControl, MonadJoinable)

instance {-# OVERLAPPING #-} (Monad m) => MonadIntraAnalysis cmp (DebugIntraAnalysisT cmp m) where 
    currentCmp = ask

instance {-# OVERLAPPING #-} (ComponentTrackingM m cmp, WorkListM m cmp, Ord cmp) => ComponentTrackingM (DebugIntraAnalysisT cmp m) cmp where
    spawn cmp = unlessM (upperM $ has cmp)
                        (upperM $ spawn cmp >> add cmp)
    components = upperM components

instance {-# OVERLAPPING #-} (StoreM a v m, Eq v, DependencyTrackingM cmp a m, MonadDependencyTrigger cmp a m, WorkListM m cmp)
        => StoreM a v (DebugIntraAnalysisT cmp m) where
    lookupAdr a = currentCmp >>= upperM . register a >> upperM (lookupAdr a)
    writeAdr a v = whenM (upperM $ writeAdr' a v) (notrace ("updated " ++ show a) (upperM $ trigger a))
    updateAdr a v = whenM (upperM $ updateAdr' a v) (notrace ("updated " ++ show a) (upperM $ trigger a))
    updateWith fs fw a = whenM (upperM $ updateWith' fs fw a) (upperM $ trigger a)
    hasAdr = upperM . hasAdr @a @v

instance {-# OVERLAPPING #-} (MapM k v m, Eq v, DependencyTrackingM cmp k m, MonadDependencyTrigger cmp k m, WorkListM m cmp, Show v, Typeable v, Typeable k)
    => MapM k v (DebugIntraAnalysisT cmp m) where
        get k = currentCmp >>= upperM . register k >> upperM (get k)
        put k v = whenM (upperM $ put' k v) (notrace ("put " ++ show v) $ upperM $ trigger k)
        joinWith k v = whenM (upperM $ joinWith' k v) (notrace ("joinWith" ++ show (typeOf k)) $ upperM $ trigger k)
        getAll = upperM getAll

runDebugIntraAnalysis :: cmp -> DebugIntraAnalysisT cmp m a -> m a
runDebugIntraAnalysis cmp (DebugIntraAnalysisT f) = runReaderT f cmp
