module Analysis.SimpleActor.Smallstep.StateSpace.Class where

import RIO
import RIO.State
import Analysis.Monad.Store
import Analysis.Counting (CountMap)

-----------------------------------------
-- Type aliases
-----------------------------------------

-- | An environment for mapping names to their addresses
type Env adr = HashMap String adr

-- | A mapping from actor references to their abstract counts
type Count ref = CountMap ref

-- | A mapping from addresses to values
type Store adr vlu = HashMap adr vlu

-----------------------------------------
-- Lenses
-----------------------------------------

-- | Type class constraint for types that have an environment embedded in them
class HasEnv adr s | s -> adr where
  envLens :: Lens' s (Env adr)

-- | Type class constraint for types that have an abstract count embedded in them
class HasCount ref s | s -> ref where
  countLens :: Lens' s (Count ref)

-- | Type class constraint for types that have a store embedded in them
class HasStore adr vlu s | s -> adr vlu where
  storeLens :: Lens' s (Store adr vlu)

-----------------------------------------
-- Manipulation through state monads
-----------------------------------------

