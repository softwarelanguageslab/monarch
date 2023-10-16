{-# LANGUAGE AllowAmbiguousTypes,  FlexibleInstances,  UndecidableInstances, RecordWildCards, TypeFamilyDependencies, GADTs #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
module Control.SVar.ModX(MonadStateVar, WorkList(..), ModX(..), StateTrackingDep(..), runModX) where

import Prelude hiding (read, reads)
import Control.Monad.Reader hiding (join)
import Control.Monad.State hiding (join, state, State)
import qualified Control.Monad as CM
import Data.Functor.Identity
import Data.Kind
import Debug.Trace hiding (traceShow)
import Data.Dynamic
import Data.Map (Map)
import Data.Functor
import Data.Maybe
import qualified Data.Map as Map
import Type.Reflection
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Lattice hiding (top)
import Control.Monad.Join
import Control.SVar.GenId

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

--------------------------------------------------
-- State Variables
--------------------------------------------------


-- | A language for managing state variables
class (Monad m) => MonadStateVar m where 
   -- | Representation of state variables
   type SVar m :: Type -> Type
   type Rep  m = a | a -> m

   -- | State variables should have a representation
   -- that does not involve the underlying type that it is 
   -- storing. 
   --
   -- Importantly, these representations should be **unique** 
   -- such that two different state variables never change the same representation.
   rep :: SVar m a -> Rep m

   -- | Create a new state variable
   newSVar  :: (Eq a, Joinable a, Typeable a) => m (SVar m a)
   -- | Read from a state variable
   read     :: (Eq a, Joinable a, Typeable a) => SVar m a -> m (Maybe a)
   -- | Assign a new value to the given state variable
   assign   :: (Eq a, Joinable a, Typeable a) => SVar m a -> a -> m ()


-- Dynamic value that can be joined
data DynamicJoinable = forall a . DynamicJoinable {
   _tag   :: TypeRep a,
   _value :: a,
   _join  :: a -> a -> a,
   _eq    :: a -> a -> Bool
}


instance Joinable DynamicJoinable where 
   join (DynamicJoinable t1 v1 join1 eq1) (DynamicJoinable t2 v2 join2 eq2)
    -- | Joining two values of the same type
    | Just HRefl <- t1 `eqTypeRep` t2 = DynamicJoinable {
       _tag   = t1,
       _value = join1 v1 v2,
       _join  = join1,
       _eq    = eq1
      }
    -- | Joining values of unrelated types in an error
    -- this is an inherently UNSAFE operation, use only when
    -- two values are known to share the same type.
    | otherwise = error "cannot join unrelated values"

instance Eq DynamicJoinable where 
   (==) (DynamicJoinable t1 v1 _ eq1) (DynamicJoinable t2 v2 _ eq2) 
      | Just HRefl <- t1 `eqTypeRep` t2 = eq1 v1 v2
      | otherwise = False

toDynamicJoinable :: (Eq v, Typeable v, Joinable v) => v -> DynamicJoinable
toDynamicJoinable v = DynamicJoinable typeRep v join (==)

fromDynamicJoinable :: forall a  . (Typeable a) => DynamicJoinable -> Maybe a
fromDynamicJoinable (DynamicJoinable t v join eq)
   | Just HRefl <- t `eqTypeRep` rep = Just v
   | otherwise = Nothing
   where rep = typeRep :: TypeRep a

-- | A state-var represented by an IdTree as its identifier
data StateVar a where 
   StateVar :: Typeable a => IdTree -> StateVar a

idTree :: StateVar a -> IdTree
idTree (StateVar id) = id

-- | A monad that manages state variables backed by IdTree's
newtype StateVarM a = StateVarM (StateT (Map IdTree DynamicJoinable) (IdGenT Identity) a) deriving (Monad, Applicative, Functor)
instance MonadStateVar StateVarM where
   type SVar StateVarM = StateVar
   type Rep  StateVarM = IdTree

   rep (StateVar id) = id
   newSVar    = StateVarM $ StateVar <$> lift freshId 
   read vrr   = StateVarM $ get <&> (CM.join . fmap fromDynamicJoinable . Map.lookup (idTree vrr))
   assign vrr vlu = StateVarM $ modify (Map.insert (idTree vrr) (toDynamicJoinable vlu))



-- | An opaque type to represent the state of the IdTree-backed state map
data StateVarMState = StateVarMState {
   stateSt  :: Map IdTree DynamicJoinable,
   idTreeSt :: IdTree 
}

initialStateVarM :: StateVarMState 
initialStateVarM = StateVarMState Map.empty initialTree

-- | Run MonadStateVarM and obtain a tuple consisting of the 
-- result type and the final state.
runStateVarM :: StateVarMState -> StateVarM a -> (a, StateVarMState)
runStateVarM st (StateVarM m) = 
   let ((a, st'), tree) = runIdentity $ runIdGenT (idTreeSt st) $ runStateT m (stateSt st)
   in (a, StateVarMState st' tree)

-- | Two computations involving state variables can also be merged 
-- using MonadJoin. The merge strategy here is the same as StateT:
--
-- Both computations are executed independently and their resulting state
-- is joined together. 
--
-- NOTE on safety: the underlying representation of state variables 
-- uses Dynamic values, which usually do not carry join operators.
-- To solve this problem, we represent each value as a DynamicJoinable
-- instead, which mirrors the implementation of `Dynamic` from the standard
-- library, but adds a `join` function to the memory structure.
-- This `join` function, however is only implemented for values that share 
-- the same type. This is guaranteed by our implementation as only the 
-- same keys are joined together, which will have the same type statically.
instance MonadJoin StateVarM where 
   mjoin (StateVarM ma) (StateVarM mb) = StateVarM $ mjoin ma mb

--------------------------------------------------
-- State Variable Tracking
--------------------------------------------------

-- | Tracking of read and writes to the state variables
data StateTracking m = StateTracking {
      writes :: [StateTrackingDep m],
      reads  :: [StateTrackingDep m]
} 
deriving instance Show (Rep m) => Show (StateTracking m)

newtype StateTrackingDep m = StateTrackingDep (Rep m)
deriving instance Show (Rep m) => Show (StateTrackingDep m)

newtype StateTrackingM m a = StateTrackingM (StateT (StateTracking m) m a) deriving (Monad, Applicative, Functor)

instance MonadTrans StateTrackingM where 
   lift = StateTrackingM . lift

instance (MonadStateVar m) => MonadStateVar (StateTrackingM m) where
   type SVar (StateTrackingM m) = SVar m
   type Rep  (StateTrackingM m) = StateTrackingDep m
   rep r    = StateTrackingDep $ rep r
   newSVar  = lift newSVar
   read vrr = do
      vll <- lift $ read vrr
      StateTrackingM $ modify (\st -> st { reads = (rep vrr) : (reads st) })
      return vll
   assign vrr vlu = do 
      vll <- lift $ assign vrr vlu 
      StateTrackingM $ modify (\st -> st { writes = (rep vrr) : (writes st) })


runStateTracking :: StateTrackingM m a -> m (a, StateTracking m)
runStateTracking (StateTrackingM m) = runStateT m (StateTracking [] [])

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
   -- | A function to analyze the component, 
   -- must produce a state and the necessary set of 
   -- effects
   analyze :: Component c -> State c -> (State c, [Component c], [Dep c], [Dep c])
      
-- | Monad to keep track of ModX components
-- within an analysis
class (ModX c) => MonadModX m c where 
   -- | Spawn the given component within the analysis
   spawn    :: Component c -> m ()
   -- | Trigger a dependency
   trigger  :: Dep c -> m () 
   -- | Register a dependency 
   register :: Dep c -> m () 

-- | Sequential version of the ModX state
data ModXState c = ModXState {
   spawns     :: [Component c], 
   triggers   :: [Dep c], 
   registers  :: [Dep c]
}

-- | A monad that keeps track of the set of spawned 
-- components
newtype ModxT c m a = ModxT (StateT (ModXState c) m a) deriving (Monad, Applicative, Functor)

instance (Monad m, ModX c) => MonadModX (ModxT c m) c where 
   spawn    c = ModxT $ modify (\st -> st { spawns    = c : spawns st })
   trigger  d = ModxT $ modify (\st -> st { triggers  = d : triggers st })
   register d = ModxT $ modify (\st -> st { registers = d : registers st })
    

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
         wl''        = addAll (Set.toList toReanal) wl'
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
           WorkList wl (Component c))
      => ModxLoop c
      -> wl
      -> State c 
loop loopState@ModxLoop { .. } wl = if isEmpty wl then state else 
      let (st', spawns', r', w') = analyze cmp state
      in uncurry loop (integrate loopState  wl st' spawns' r' w')
   where (cmp, _) = remove wl  

-- | Run the ModX algorithm for the given ModX configuration `c`
runModX :: (WorkList wl (Component c), ModX c) 
        => wl -- ^ the initial worklist
        -> State c -- ^ the initial state
        -> State c
runModX initialWl initialState = loop (initialModXLoopState initialState) initialWl
