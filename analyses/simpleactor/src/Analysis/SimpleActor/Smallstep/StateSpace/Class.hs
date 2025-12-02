module Analysis.SimpleActor.Smallstep.StateSpace.Class(
    Env,
    Count,
    Store,
    ProcessMap,
    HasState,
    HasMacroState,
    HasMicroState,
    Ctrl(..),
    PickProcess(..),
    envL,
    countL,
    storeL,
    mailboxL,
    ctrlL,
    kstoreL,
    topStoreL
 ) where

import RIO
import Analysis.Counting (CountMap)
import Syntax.AST (Exp)

-----------------------------------------
-- Type aliases
-----------------------------------------

-- | An environment for mapping names to their addresses
type Env adr = HashMap String adr

-- | A mapping from actor references to their abstract counts
type Count ref = CountMap ref

-- | A mapping from addresses to values
type Store adr vlu = HashMap adr vlu

-- | Mapping from processes to their mailboxes, parameterized with the used mailbox abstraction
type ProcessMap ref mb = Map ref (Set mb)

-- | A mapping from continuation address 
type KStore adr kont = Map adr (Set kont)

-----------------------------------------
-- Shared data types
-----------------------------------------

data Ctrl adr vlu =
            -- | Wait for a message to arrive and resume with Exp in Env
            Wait Exp (Env adr)
            -- | Evaluate the given expression in the given environment
          | Eval Exp (Env adr)
            -- | Apply the continuation with the given value 
          | Next vlu
  
-----------------------------------------
-- Process scheduling
-----------------------------------------

class PickProcess ref macro micro | macro -> ref  where
  pick :: macro -> Set micro

-----------------------------------------
-- Lenses
-----------------------------------------

-- | Type class constraint for types that have an environment embedded in them
class HasEnv adr s | s -> adr where
  envL :: Lens' s (Env adr)

-- | Type class constraint for types that have an abstract count embedded in them
class HasCount ref s | s -> ref where
  countL :: Lens' s (Count ref)

-- | Type class constraint for types that have a store embedded in them
class HasStore adr vlu s | s -> adr vlu where
  storeL :: Lens' s (Store adr vlu)

-- | Type class constraint for types that have a continuation store embedded in them
class HasKStore adr kont s | s -> adr kont where
  kstoreL :: Lens' s (KStore adr kont)
  topStoreL :: Lens' s adr

-- | Type class constraint for types that have a process map in them
class HasProcessMap mb ref s | s -> mb ref where
  mailboxL :: Lens' s (ProcessMap ref mb)

class HasControl adr vlu s | s -> adr vlu where
  ctrlL :: Lens' s (Ctrl adr vlu)

-- | Shared state between macro-steps and micro-steps
type HasState adr ref vlu kont mb s = (
    HasCount ref s,
    HasStore adr vlu s,
    HasProcessMap mb ref s,
    HasKStore adr kont s
  )

-- | Macro step state
type HasMacroState adr ref vlu kont mb macro micro = (
    HasState adr ref vlu kont mb macro,
    PickProcess ref macro micro
  )

-- | Micro step state
type HasMicroState adr ref vlu kont mb s = (
    HasState adr ref vlu kont mb s,
    HasControl adr vlu s
  )

