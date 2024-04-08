{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.IntraAnalysis (
    IntraAnalysisT,
    StoreDep(..),
    runIntraAnalysis,
) where

import Analysis.Monad.ComponentTracking
import Analysis.Monad.WorkList
import Control.Monad.Reader
import Control.Monad.Layer
import Control.Monad.Join
import Analysis.Monad.DependencyTracking
import Analysis.Monad.Store
import Control.Monad.Cond

---
--- IntraAnalysis monad layer 
---

newtype IntraAnalysisT cmp m a = IntraAnalysisT (ReaderT cmp m a)
    deriving (Functor, Applicative, Monad, MonadReader cmp, MonadTrans, MonadLayer, MonadJoin)

instance (ComponentTrackingM m cmp, WorkListM m cmp, Ord cmp) => ComponentTrackingM (IntraAnalysisT cmp m) cmp where
    spawn cmp = unlessM (upperM $ has cmp)
                        (upperM $ spawn cmp >> add cmp)
    components = upperM components

-- | typeclass for dependencies on store values
class StoreDep a dep | a -> dep where
    dep :: a -> dep

instance {-# OVERLAPPING #-} (StoreM m a v, StoreDep a dep, DependencyTrackingM m cmp dep, WorkListM m cmp)
        => StoreM (IntraAnalysisT cmp m) a v where
    lookupAdr a = ask >>= upperM . register (dep a) >> upperM (lookupAdr a)
    writeAdr a v = whenM (upperM $ writeAdr' a v) (upperM $ trigger $ dep a)
    updateAdr a v = whenM (upperM $ updateAdr' a v) (upperM $ trigger $ dep a)
    updateWith fs fw a = whenM (upperM $ updateWith' fs fw a) (upperM $ trigger $ dep a)

runIntraAnalysis :: cmp -> IntraAnalysisT cmp m a -> m a
runIntraAnalysis cmp (IntraAnalysisT f) = runReaderT f cmp