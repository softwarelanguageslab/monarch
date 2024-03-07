{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
-- | An effect-driven fixpoint algorithm. 
--
-- It uses an SVar based state to drive its algorithm by
-- keeping track of changes on shared state between elements
-- of the analysis (control flow graph nodes, components in a modular analysis, ...)
--
module Control.Fixpoint.EffectDriven where

import Control.Monad.State.SVar
import Control.Monad.State.IntPool
import Control.Fixpoint.WorkList
import Control.Monad.Cond
import Control.Monad.Layer


import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State
import qualified Control.Monad.State as ST
import Control.Monad.Writer
import Data.Maybe

------------------------------------------------------------
-- EffectM
------------------------------------------------------------

class Monad m => EffectM m c | m -> c where   
   spawn :: c -> m ()

instance (MonadLayer m, Monad m, EffectM (Lower m) c) => EffectM m c where
   spawn = upperM . spawn

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


newtype EffectT c wl m a =
   EffectT (StateT (EffectState c wl) (WriterT (Set c) (TrackingStateVarT (StateVarT (IntegerPoolT m)))) a)
   deriving (Applicative, Functor, Monad, MonadState (EffectState c wl), MonadWriter (Set c))

instance {-# OVERLAPPING #-} (Ord c, Monad m) => EffectM (EffectT c wl m) c where
   spawn = tell . Set.singleton

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


loop :: (WorkList wl, Ord c, Monad m) => (c -> EffectT c (wl c) m ()) -> EffectT c (wl c) m ()
loop analyze =
   ifM (gets (isEmpty . wl))
   {- then -} (return ())
   {- else -} (do
      (e, wl') <- gets (remove . wl)
      ST.modify (\s -> s { wl =  wl'})
      (r, w, spawns) <- censor (const Set.empty) (do
            (v, spawns) <- listen (analyze e)
            trackState  <- EffectT $ lift $ lift getDeps
            EffectT $ lift $ lift resetTracking
            return (rdep trackState, wdep trackState, spawns)
         )
      ST.modify (integrate e r w spawns)
      loop analyze)


iterate :: (Monad m, Ord c, WorkList wl)
        => c                            -- ^ the initial component
        -> (c -> EffectT c (wl c) m ()) -- ^ analysis function
        -> EffectT c (wl c) m ()
iterate initialCmp analyze = do
   ST.modify (\s -> s { wl = add initialCmp (wl s) })
   loop analyze

runEffectT :: (Monad m, Ord c) => EffectT c (wl c) m a -> wl c -> m (a, VarState)
runEffectT (EffectT ma) wl = 
       runIntegerPoolT 
    $  runStateVarT 
    $  runTrackingStateVarT   
    $  fst 
   <$> runWriterT (evalStateT ma (emptyEffectState wl))

