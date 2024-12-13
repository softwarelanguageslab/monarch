-- | Version of the small-step semantics that widens particular parts of the original small-step state. 
-- More specifically, the path condition and store can be widened so that they are no longer part of the 
-- state itself, but either globally or indexed by state.
module Analysis.ASE.WidenedStates where

import Syntax.Span
import Analysis.ASE.Common
import Data.Map (Map)
import Domain.Core.AbstractCount (AbstractCount)
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.Writer
import Control.Monad.State

data WidenedState = WidenedState {
      control :: Control, 
      top :: KAdr [Span], 
      topFail :: FAdr, 
      context :: [Span], 
      model :: Model, 
      mcontext :: ModelContext
   }  deriving (Eq, Ord, Show)

-- | We implement the widened analyses as an analysis that 
-- is "effect-driven" that is, dependencies are registered 
-- between a small-step state and the part of the global 
-- state it is manipulating or reading from. If any part 
-- of this global state changes, it triggers the re-analyses 
-- of small-step states depending on that state.
--
-- To represent dependencies on different parts of the state,
-- the effect is parametrized by the type of dependency @a@.
data Effect a = Write a | Read a deriving (Eq, Ord, Show)

------------------------------------------------------------
-- Widening per small-step state
------------------------------------------------------------

-- | State shared between all small-step states
data SharedState st = SharedState {
      store :: Map st Sto, 
      kont  :: Map st KSto, 
      fail  :: Map st FSto
   }

-- | Effect collections
newtype Effects a = Effects { getEffects :: Set (Effect a) }
                   deriving (Ord, Eq, Show, Semigroup, Monoid)


-- | Monadic context in which a step is executed. 
-- This monadic context includes the shared state 
-- and effect writers.
newtype WidenedT d st m a = WidenedT (WriterT (Effects d) (StateT (SharedState st) m) a) deriving (Applicative, Functor, Monad)
