{-# LANGUAGE AllowAmbiguousTypes,  FlexibleInstances,  UndecidableInstances, RecordWildCards, TypeFamilyDependencies, GADTs #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
module Control.SVar.ModX(WorkList(..), ModX(..), ModxT(..), runModX, MonadModX(..), runModxT) where

import Prelude hiding (read, reads)
import Control.Monad.Reader hiding (join, mzero)
import Control.Monad.State hiding (join, state, State, mzero)
import Data.Kind
import Debug.Trace hiding (traceShow)
import Data.Map (Map)
import Data.Maybe
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Lattice hiding (top)
import Control.Monad.Join
import Control.Monad.Layer


traceShow :: (Show a) => a -> a
traceShow v = trace (show v) v

--------------------------------------------------
-- Worklists
--------------------------------------------------

class WorkList wl e | wl -> e where
   add :: e -> wl -> wl
   remove :: wl -> (e, wl)
   isEmpty :: wl -> Bool
   addAll :: [e] -> wl -> wl
   addAll es wl = foldr add wl es

instance WorkList [a] a where
   add           = (:)
   remove (e:wl) = (e, wl)
   isEmpty []    = True
   isEmpty _     = False

--------------------------------------------------
-- ModX
--------------------------------------------------

-- | ModX adds the notion of a "Component" to analyses
--
-- Components are separate code units that must be analyzed
-- in isolation of each-other.
--
-- These components can depend on each-other through shared
-- state variables. 
class (Ord (Dep c), Ord (Component c)) => ModX c where
   -- | The representation of components
   -- in the analysis
   type Component c = a | a -> c
   -- | The representation of shared state
   -- between these components
   type State c :: Type
   -- | The representation of a dependency in the analysis 
   type Dep c :: Type
   -- | Type of monad returned from analyze
   -- used for keeping monadic effects between analysis iterations
   type MM c :: Type -> Type
   -- | A function to analyze the component, 
   -- must produce a state and the necessary set of 
   -- effects
   analyze :: Component c -> State c -> MM c (State c, [Component c], [Dep c], [Dep c])

-- | Monad to keep track of ModX components
-- within an analysis
class (ModX c) => MonadModX m c where
   -- | Spawn the given component within the analysis @(Lower m) @(Lower m) @(Lower m)
   spawn    :: Component c -> m ()
   -- | Trigger a dependency
   trigger  :: Dep c -> m ()
   -- | Register a dependency 
   register :: Dep c -> m ()

-- | Sequential version of the ModX state
data ModXState c = ModXState {
   spawns     :: Set (Component c),
   triggers   :: Set (Dep c),
   registers  :: Set (Dep c)
} 

deriving instance (Eq (Component c), Eq (Dep c)) => Eq (ModXState c)

-- | Returns an empty ModxState 
emptyModxState :: ModXState c
emptyModxState = ModXState Set.empty Set.empty Set.empty

instance (Ord (Component c), Ord (Dep c)) => Joinable (ModXState c) where
   join s1 s2 = ModXState {
      spawns    = spawns s1 `Set.union` spawns s2,
      triggers  = triggers s1 `Set.union` triggers s2,
      registers = registers s1 `Set.union` registers s2
   }

instance (Ord (Component c), Ord (Dep c)) => JoinLattice (ModXState c) where
   bottom = emptyModxState
   subsumes s1 s2 =
      subsumes (spawns   s1) (spawns   s2) &&
      subsumes (triggers s1) (triggers s2) &&
      subsumes (registers s1) (registers s2)


-- | A monad that keeps track of the set of spawned 
-- components
newtype ModxT c m a = ModxT { innerModxT :: StateT (ModXState c) m a } deriving (MonadLayer, Applicative, Functor)

instance (Monad m) => Monad (ModxT c m) where
   (ModxT m) >>= f = ModxT $ m >>= (innerModxT . f) 
   return = pure


instance MonadTrans (ModxT c) where
   lift = ModxT . lift

instance (Ord (Component c), Ord (Dep c), MonadJoin m) => MonadJoin (ModxT c m) where
   mzero = ModxT mzero
   mjoin (ModxT ma) (ModxT mb) = ModxT $ mjoin ma mb

instance (Monad m, ModX c) => MonadModX (ModxT c m) c where
   spawn    c = ModxT $ modify (\st -> st { spawns    = Set.insert c $ spawns st })
   trigger  d = ModxT $ modify (\st -> st { triggers  = Set.insert d $ triggers st })
   register d = ModxT $ modify (\st -> st { registers = Set.insert d $ registers st })


runModxT :: forall c m a . Monad m => ModxT c m a -> m (a, ([Component c], [Dep c], [Dep c]))
runModxT (ModxT m) = do
   (a, state) <- runStateT m emptyModxState
   return $ let ModXState { .. } = state
            in (a, (Set.toList spawns, Set.toList registers,  Set.toList triggers))

integrate :: (WorkList wl (Component c), ModX c)
          => ModxLoop c -- ^ the original loop state 
          -> wl         -- ^ the worklist
          -> State c    -- ^ modified analysis' state
          -> [Component c] -- ^ a list of spawned components
          -> [Dep c]       -- ^ a list of read dependencies 
          -> [Dep c]       -- ^ a list of write dependencies
          -> (ModxLoop c, wl)
integrate loopState wl st' spawns' r' w' = (loopState', wl'')
   where (cmp, wl')  = remove wl
         seen'       = Set.union (seen loopState) (Set.fromList spawns')
         toSpawn     = Set.difference (Set.fromList spawns') (seen loopState)
         dependents' = Map.unionWith Set.union
                           (Map.fromList (map (,Set.singleton cmp) r'))
                           (dependents loopState)
         toReanal    = Set.unions $ map (fromMaybe Set.empty . flip Map.lookup dependents') w'
         wl''        = addAll (Set.toList $ toSpawn `Set.union` toReanal) wl'
         loopState'  = ModxLoop {
            seen = seen',
            dependents = dependents',
            state = st'
         }

data ModxLoop c = ModxLoop {
   seen :: Set (Component c),
   dependents :: Map (Dep c) (Set (Component c)),
   state :: State c
}

initialModXLoopState :: (ModX c) => State c -> ModxLoop c
initialModXLoopState initialState  = ModxLoop {
   seen       = Set.empty,
   dependents = Map.empty,
   state      = initialState
}


-- | ModX loop
loop ::  ( ModX c,
           WorkList wl (Component c), 
           Monad (MM c))
      => ModxLoop c
      -> wl
      -> MM c (State c)
loop loopState@ModxLoop { .. } wl = if isEmpty wl then return state
                                    else do
                                       (state', spawns, r, w) <- analyze cmp state
                                       uncurry loop $ integrate loopState wl state' spawns r w
   where (cmp, _) = remove wl

-- | Run the ModX algorithm for the given ModX configuration `c`
runModX :: (WorkList wl (Component c), ModX c, Monad (MM c))
        => wl -- ^ the initial worklist
        -> State c -- ^ the initial state
        -> MM c (State c)
runModX initialWl initialState = loop (initialModXLoopState initialState) initialWl
