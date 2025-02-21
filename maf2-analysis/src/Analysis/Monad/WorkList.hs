{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.WorkList (
    WorkListM(..),
    WorkListT,
    runWithWorkList,
    iterateWL,
    iterateWL',
    iterateWLDebug
) where

import Analysis.Monad.ComponentTracking
import Control.Fixpoint.WorkList (WorkList)
import qualified Control.Fixpoint.WorkList as WL
import Control.Monad.Layer
import Control.Monad.Cond

import Control.Monad.State
import Data.Maybe (fromMaybe)
import qualified Data.Set as Set
import Control.Monad (when)
import Control.Monad.Cond (unlessM)
import Data.Functor (($>))


---
--- WorkListM typeclass
---

class Monad m => WorkListM m cmp | m -> cmp where
    done :: m Bool
    pop  :: m cmp
    add  :: cmp -> m ()
    adds :: Foldable t => t cmp -> m ()
    adds = mapM_ add


---
--- WorkListT monad layer 
---

newtype WorkListT w m a = WorkListT (StateT w m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadTransControl, MonadState w)

instance {-# OVERLAPPING #-} (Monad m, WorkList w cmp) => WorkListM (WorkListT w m) cmp where
    done = gets WL.isEmpty
    pop = gets (fromMaybe (error "worklist is too empty") . WL.pop) >>= \(cmp, rst) -> put rst $> cmp
    add = modify . WL.add

instance (MonadLayer t, Monad (t m), WorkListM m cmp) => WorkListM (t m) cmp where
    done = upperM done
    pop = upperM pop
    add = upperM . add

runWithWorkList :: forall w cmp m a . (Monad m, WorkList w cmp) => WorkListT w m a -> m a
runWithWorkList (WorkListT m) = fst <$> runStateT m WL.empty

iterateWL :: WorkListM m cmp => (cmp -> m a) -> m ()
iterateWL f = unlessM done (pop >>= f >> iterateWL f)

iterateWL' :: WorkListM m cmp => cmp -> (cmp -> m a) -> m ()
iterateWL' initial f = add initial >> iterateWL f

iterateWLDebug :: (ComponentTrackingM m cmp, MonadIO m, WorkListM m cmp) => cmp -> (cmp -> m a) -> m ()
iterateWLDebug initial f = add initial >> loop 0
   where loop total = ifM done (debug total) (runNext total)
         runNext total = do
            when (total `mod` 100 == 0) (debug total)
            pop >>= f >> loop (total+1)
         debug total = components >>= liftIO . putStrLn . (\v -> "Number of seen states " ++ v ++ " iterations count " ++ show total) . show .  Set.size

