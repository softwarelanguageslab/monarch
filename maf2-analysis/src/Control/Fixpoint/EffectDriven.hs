{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
-- | An effect-driven fixpoint algorithm. 
--
-- It uses an SVar based state to drive its algorithm by
-- keeping track of changes on shared state between elements
-- of the analysis (control flow graph nodes, components in a modular analysis, ...)
--
module Control.Fixpoint.EffectDriven(EffectM(spawn, setup), EffectT, runEffectT, iterate) where

import Control.Monad.State.SVar
import Control.Monad.State.IntPool
import Control.Fixpoint.WorkList
import Control.Monad.Cond
import Control.Monad.Layer

import Prelude hiding (iterate)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State
import qualified Control.Monad.State as ST
import Control.Monad.Writer
import Debug.Trace
import Data.Maybe

------------------------------------------------------------
-- EffectM
------------------------------------------------------------

class Monad m => EffectM m c | m -> c where
   -- | Spawn a component c 
   spawn :: c -> m ()
   -- | Perform an "intra" analysis on monadic action 'm a'
   -- this will keep bookkeeping about dependencies and effects
   intra :: c -> m a -> m a
   -- | Checks whether the analysis is finished according
   -- to the internal bookkeeping structures
   done  :: m Bool
   -- | Requests the next element and updates
   -- the internal bookkeeping structures
   next  :: m c
   -- | Runs the given computation as a "setup" phase
   -- meaning that all its effects are discarded
   setup :: m a -> m a

instance (MonadLayer m, Monad m, EffectM (Lower m) c) => EffectM m c where
   spawn   = upperM . spawn
   intra c = lowerM (intra c)
   done    = upperM done
   setup   = lowerM setup
   next    = upperM next

------------------------------------------------------------
-- EffectT
------------------------------------------------------------

data EffectState c wl = EffectState {
      seen :: Set c,
      deps :: Map Dep (Set c),
      wl   :: wl
   }

emptyEffectState :: wl c -> EffectState c (wl c)
emptyEffectState = EffectState Set.empty Map.empty

modifyWl :: (wl -> (a, wl)) -> EffectState c wl -> (a, EffectState c wl)
modifyWl f st = (a, st { wl = wl' })
   where (a, wl') = f (wl st)


newtype EffectT c wl m a =
   EffectT (StateT (EffectState c wl) (WriterT (Set c) (TrackingStateVarT (StateVarT (IntegerPoolT m)))) a)
   deriving (Applicative, Functor, Monad, MonadState (EffectState c wl), MonadWriter (Set c), MonadLayer)

instance {-# OVERLAPPING #-} (Ord c, WorkList wl, Monad m) => EffectM (EffectT c (wl c) m) c where
   spawn = tell . Set.singleton
   intra c ma = do
       (v, r, w, spawns) <- censor (const Set.empty) (do
            (v, spawns) <- listen ma
            trackState  <- EffectT $ lift $ lift getDeps
            EffectT $ lift $ lift resetTracking
            trace (show trackState) $ return (v, rdep trackState, wdep trackState, spawns)
         )
       ST.modify (integrate c r w spawns)
       return v
   done  = gets (isEmpty . wl)
   setup ma = ma >>= (\v ->  EffectT $ lift $ lift resetTracking >> return v)
   next = state (modifyWl remove)

integrate :: (Ord c, WorkList wl)
          => c
          -> Set RDep  -- ^ registered read dependencies
          -> Set WDep  -- ^ write effects 
          -> Set c     -- ^ set of spawns
          -> EffectState c (wl c)
          -> EffectState c (wl c)
integrate c r w s st = st {
      seen = Set.union (seen st) spawns',
      deps = deps',
      wl   = addAll (Set.toList newCmps) (wl st)
   }
   where deps' = Map.unionWith Set.union
                               (Map.fromList (map (, Set.singleton c) (Set.toList r)))
                               (deps st)
         toAnalyze = Set.unions (Set.map (fromMaybe Set.empty . flip Map.lookup deps') w)
         spawns'   = Set.difference s (seen st)
         newCmps   = Set.union toAnalyze spawns'


loop :: forall c m . (Ord c, EffectM m c) => (c -> m ()) -> m ()
loop analyze =
      ifM done
      {- then -} (return ())
      {- then -} (next >>= (\c -> intra c (analyze c)) >> loop analyze)

iterate :: (Ord c, EffectM m c)
        =>(c -> m ()) -- ^ analysis function
        -> m ()
iterate = loop

runEffectT :: (Monad m, Ord c) => EffectT c (wl c) m a -> wl c -> m (a, VarState)
runEffectT (EffectT ma) wl =
       runIntegerPoolT
    $  runStateVarT
    $  runTrackingStateVarT
    $  fst
   <$> runWriterT (evalStateT ma (emptyEffectState wl))

