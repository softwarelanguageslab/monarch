{-# LANGUAGE AllowAmbiguousTypes, FlexibleContexts, FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
-- | Effect-driven worklist algorithm (cf. Effect-Driven Flow Analysis by Nicolay et al.)
module Analysis.ModX(runModX, MonadEffect(..), EffectT, runEffectT, isFinished, IntraState(..), InterState(..), ModxConfig(..), ModX, Result, runEffect) where

import Data.Kind
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe
import Control.Monad.State hiding (State, state, fix, join)
import Control.Lens
import Data.Default
import Domain.Lattice (Joinable(..))
import Analysis.Monad

-- | The result of some effect-producing unit of work
class (Ord (Effect c), Ord (Component c)) => ModxConfig c where
   -- | Type of effects registered/triggered
   type Effect c :: Type
   -- | Type of components spawned
   type Component c :: Type
   -- | Some arbitrary state in which the unit is executed
   type State c :: Type

-- | Internal effect state, keeps track of all dependencies between
-- work units (i.e., components) and their triggers. 
data InterState state cmp eff = InterState {
   deps :: Map eff (Set cmp),
   seen :: Set cmp,
   worklist :: [cmp],
   mainCmp :: cmp,
   currentState :: state
}

-- | Effect state for an analysis of a single component
data IntraState c = IntraState {
   _triggers :: Set (Effect c),
   _dependencies :: Set (Effect c),
   _spawned :: Set (Component c)
}


deriving instance (ModxConfig r) => Eq  (IntraState r)
deriving instance (ModxConfig r) => Ord (IntraState r)

makeLenses ''IntraState

-- | Default instances for the state of a work unit 
instance Default (IntraState w) where
   def = IntraState Set.empty Set.empty Set.empty

-- | The state can be joined together
instance (ModxConfig c) => Joinable (IntraState c) where
   join w1 w2 = IntraState {
      _triggers      = join (_triggers w1) (_triggers w2),
      _dependencies  = join (_dependencies w1) (_dependencies w2),
      _spawned       = join (_spawned w1) (_spawned w2)
   }

--
-- Type aliases for convenience
--

type Result c = (State c, IntraState c)
type Run c = (Component c -> Result c)
type ModX r = InterState (State r) (Component r) (Effect r)
type Fix a = a -> a

--

initializeModX :: (ModxConfig c) => State c -> Component c -> ModX c
initializeModX st main = InterState {
   deps = Map.empty,
   seen = Set.empty,
   worklist = [main],
   mainCmp = main,
   currentState = st
}

-- integrate the result of the work with the previous modx state
integrate :: forall c . (ModxConfig c) => Component c -> Result c -> ModX c -> ModX c
integrate cmp (state, result) modx =
   let
      deps'    = foldr (Map.alter (Just . Set.insert cmp . fromMaybe Set.empty)) (deps modx) (_dependencies result)
      spawns'  = filter (Prelude.not . flip Set.member (seen modx)) (Set.toList $ _spawned result)
      triggers = Set.toList $ Set.unions $ Set.map (flip (Map.findWithDefault Set.empty) deps') (_triggers result)
   in modx {
      deps           = deps',
      seen           = Set.union (seen modx) (Set.fromList spawns'),
      worklist       = triggers ++ spawns' ++ worklist modx,
      currentState   = state
   }


-- | Take a single step of the ModX algorithm
step :: forall c . (ModxConfig c) => Run c -> ModX c -> ModX c
step run st =
   let current = head (worklist st)
       rest    = tail (worklist st)
   in integrate current (run current) st { worklist = rest }

-- | Checks whether the ModX algorithm has completed
isFinished :: ModX r -> Bool
isFinished InterState { worklist } = null worklist


-- | Run the ModX algorithm until a fixpoint is reached.
runModX :: forall c . (ModxConfig c) => Run c -> State c -> Component c -> State c
runModX run st = currentState . fix . initializeModX @c st
   where fix :: ModxConfig c => Fix (ModX c)
         fix modx = if isFinished @c modx then modx else fix (step run modx)

-- Monad transformer to keep track of effects in a work unit

class (ModxConfig r) => MonadEffect r m | m -> r where
   trigger  :: Effect r -> m ()
   register :: Effect r -> m ()
   spawn    :: Component r -> m ()

--

-- | Monad that keeps track of local effects for a work unit
newtype EffectT r m a = EffectT { runEffectT :: StateT (IntraState r) m a } deriving (Monad, Functor, Applicative, MonadState (IntraState r), MonadTrans)

instance (ModxConfig r, Monad m) => MonadEffect r (EffectT r m) where
   trigger e  = modify (over triggers (Set.insert e))
   register e = modify (over dependencies (Set.insert e))
   spawn c    = modify (over spawned (Set.insert c))

-- | Run the effect monad 
runEffect :: IntraState r -> EffectT r m a -> m (a, IntraState r)
runEffect st = (`runStateT` st) . runEffectT
