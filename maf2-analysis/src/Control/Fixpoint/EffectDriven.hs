{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
-- | An effect-driven fixpoint algorithm. 
--
-- It uses an SVar based state to drive its algorithm by
-- keeping track of changes on shared state between elements
-- of the analysis (control flow graph nodes, components in a modular analysis, ...)
--
module Control.Fixpoint.EffectDriven(EffectM(..), EffectSVarM, DependencyM(..), ComponentM(..), setup, EffectT, runEffectT, runEffectT', iterate) where

import Control.Monad.State.SVar
import Control.Monad.State.IntPool
import Control.Fixpoint.WorkList
import Control.Monad.Cond
import Control.Monad.Layer

import Prelude hiding (iterate, read)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State hiding (modify)
import qualified Control.Monad.State as ST
import Data.Maybe
import Control.Monad.Identity
import Control.Monad.Reader
import Data.Function ((&))

------------------------------------------------------------
-- ComponentM
------------------------------------------------------------

class DependencyM m dep | m -> dep where
   -- | Register a dependency with the current component
   register :: dep -> m ()
   -- | Trigger a dpenedency with the current component
   trigger  :: dep -> m ()

instance (Monad m, MonadLayer t, DependencyM m dep) => DependencyM (t m) dep where
   register = upperM . register
   trigger  = upperM . trigger

class ComponentM m cmp | m -> cmp where
   -- Spawn a new component
   spawn :: cmp -> m ()

instance (Monad m, MonadLayer t, ComponentM m cmp) => ComponentM (t m) cmp where
   spawn = upperM . spawn

------------------------------------------------------------
-- SVar tracking
------------------------------------------------------------

newtype Dep = Dep (Set Int) deriving (Ord, Eq, Show)

newtype TrackingStateVarT m a = TrackingStateVarT (IdentityT m a)
                              deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer)


instance {-# OVERLAPPING #-} (MonadStateVar m, DependencyM m Dep) => MonadStateVar (TrackingStateVarT m) where
   new = upperM . new
   modify f var@(SVar i) =
      ifM (upperM $ modify f var)
      {- then -} (trigger (Dep i) >> return True)
      {- else -} (return False)
   read var@(SVar i) = register (Dep i) >> upperM (read var)
   merge var1 = upperM . merge var1

runTrackingStateVarT :: TrackingStateVarT m a -> m a
runTrackingStateVarT (TrackingStateVarT m) = runIdentityT m

------------------------------------------------------------
-- EffectM
------------------------------------------------------------

class (ComponentM m c, DependencyM m dep) => EffectM m c dep where
   done :: m Bool
   next :: m c
   withComponent :: c -> m a -> m a

instance (Monad m, MonadLayer t, EffectM m c dep) => EffectM (t m) c dep where
   done = upperM done
   next = upperM next
   withComponent cmp = lowerM (withComponent cmp)

type EffectSVarM m c = EffectM m c Dep

------------------------------------------------------------
-- EffectT
------------------------------------------------------------

newtype EffectT c dep wl m a = EffectT { getEffectT :: ReaderT c (StateT (EffectState c dep wl) m) a }
                         deriving (Applicative, Functor, Monad, MonadReader c, MonadState (EffectState c dep wl))

instance {-# OVERLAPPING #-} (Monad m, Ord dep, Ord c, WorkList wl c) => EffectM (EffectT c dep wl m) c dep where
   done = ST.gets (isEmpty. wl)
   next = ST.gets (fromJust . pop . wl) >>= (\(item, wl') -> ST.modify (putWl wl') >> return item)
   withComponent cmp = local (const cmp)

instance MonadTrans (EffectT c dep wl) where
   lift = EffectT . lift . lift

instance MonadLayer (EffectT c dep wl) where
   lowerM f (EffectT m) = EffectT $ lowerM (lowerM f) m

-- EffectState

data EffectState c dep wl = EffectState {
      seen :: Set c,
      deps :: Map dep (Set c),
      wl   :: wl
   }

emptyEffectState :: forall wl c dep . wl -> EffectState c dep wl
emptyEffectState = EffectState Set.empty Map.empty

alreadySeen :: (Ord c) => c -> EffectState c dep wl -> Bool
alreadySeen c = Set.member c . seen

addSeen :: (Ord c) => c -> EffectState c dep wl -> EffectState c dep wl
addSeen c state = state { seen = Set.insert c (seen state) }

addWl :: WorkList wl c => c -> EffectState c dep wl -> EffectState c dep wl
addWl c state = state { wl = add c (wl state) }

addsWl :: (Foldable t, WorkList wl c) => t c -> EffectState c dep wl -> EffectState c dep wl
addsWl cs state = state { wl = addAll cs (wl state) }

registerDep :: (Ord dep, Ord c) => c -> dep -> EffectState c dep wl -> EffectState c dep wl
registerDep c dep state = state { deps = Map.insertWith Set.union dep (Set.singleton c) (deps state) }

dependents :: (Ord dep) => dep -> EffectState c dep wl -> Set c
dependents dep = fromMaybe Set.empty . Map.lookup dep . deps

putWl :: wl -> EffectState c dep wl -> EffectState c dep wl
putWl wl state = state { wl = wl }

----------------------------------------

instance {-# OVERLAPPING #-} (WorkList wl c, Ord c, Monad m) =>  ComponentM (EffectT c dep wl m) c where
   spawn c = do
      ifM (ST.gets (alreadySeen c))
      {- then -} (return ())
      {- else -} (ST.modify (addWl c) >> ST.modify (addSeen c))

instance {-# OVERLAPPING #-} (WorkList wl c, Ord c, Ord dep, Monad m) => DependencyM (EffectT c dep wl m) dep where
   register dep = ask >>= (\c -> ST.modify (registerDep c dep))
   trigger  dep =
      ST.gets (dependents dep) >>= (ST.modify . addsWl)

loop :: forall c m state dep . (Ord c, EffectM m c dep, Monad m)
      => (c -> state -> m state)
      -> state
      -> m state
loop analyze st  =
      ifM done
      {- then -} (return st)
      {- then -} (next >>= (\c -> withComponent c (analyze c st) >>= loop analyze))

iterate :: (Ord c, EffectM m c dep, Monad m)
        => (c -> state -> m state) -- ^ analysis function
        -> state                   -- ^ the initial state
        -> m state
iterate = loop

setup :: m a -> m a
setup = id

runEffectT' :: forall wl c m dep a . (WorkList wl c, Monad m, Ord c)
            => c
            -> EffectT c dep wl m a
            -> m a
runEffectT' c ma =
   (spawn c >> ma) & getEffectT & flip runReaderT c & flip evalStateT (emptyEffectState @wl empty)

runEffectT :: forall wl c m a .(WorkList wl c, Monad m, Ord c)
           => c
           -> TrackingStateVarT (EffectT c Dep wl (StateVarT (IntegerPoolT m))) a
           -> m (a, VarState)
runEffectT c ma =
       runIntegerPoolT
     $ runStateVarT
     $ flip evalStateT (emptyEffectState @wl empty)
     $ flip runReaderT c
     $ getEffectT
     $ runTrackingStateVarT (spawn c >> ma)
