{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
-- | Abstractions common to the sequential and actor-modular analysis
module Analysis.SimpleActor.Fixpoint.Common where

import Syntax.AST
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store
import Domain.SimpleActor
import Symbolic.AST ( PC )
import Analysis.Store (CountingMap)
import Data.Kind
import Analysis.Monad.Stack (MonadStack)
import Analysis.Monad.Store (StoreT, StoreM)
import Analysis.Monad.DependencyTracking (DependencyTrackingM, MonadDependencyTracking, MonadDependencyTriggerTracking)
import Analysis.Monad.Map (MapM)
import RIO
import qualified RIO.Map as Map
import Analysis.Monad (MonadDependencyTrigger)
import Domain.Core.AbstractCount (AbstractCount)
import Analysis.Actors.Mailbox.GraphToSet (GraphToSet)
import Analysis.SimpleActor.Monad (SimpleActorContext(..), MailboxLabel)
import Analysis.Actors.Mailbox.Partitioned (PartitionedMailbox)
import Domain.Core.Count.BoundedCount (BoundedCount)

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type K = AdrCtx
type ActorExp = Exp
type ActorRef = Pid Exp K
type ActorVlu = ActorValue K (SchemeAdr Exp)
type ActorEnv = HashMap String (SchemeAdr Exp K)
-- | Global mailboxes
type ActorMai = Map ActorRef PMB
type ActorSto = CountingMap (SchemeAdr Exp K) (StoreVal ActorVlu)
-- | Type of path constraints used in the "SimpleActor" analysis
type ActorPC  = PC (SchemeAdr Exp K)
-- | A mapping for counting the number of concrete
-- actors associated with an abstract actor reference
type ActorCou = Map ActorRef AbstractCount

-- | The type of mailbox abstraction
type MB = GraphToSet ActorVlu

type Partition = ()
type PMB = PartitionedMailbox Partition ActorVlu MB

type LabelCounts = Map MailboxLabel BoundedCount

------------------------------------------------------------
-- Utilities
------------------------------------------------------------

type family Unlist (as :: Type) :: Type where
   Unlist [k] = k


type family DependsOn (m :: Type -> Type) (cmp :: Type) (ads :: [Type]) :: Constraint where
      DependsOn m cmp '[] = ()
      DependsOn m cmp (adr : ads) = (MonadDependencyTracking cmp adr m, DependsOn m cmp ads)

------------------------------------------------------------
-- Addresses
------------------------------------------------------------


type ActorAdr = SchemeAdr Exp K
type ActorVarAdr = SchemeAdr Exp K

-- | Output address for writing individual actor results
newtype ActorResOut = ActorResOut ActorRef deriving (Ord, Eq, Show)

------------------------------------------------------------
-- Contexts
------------------------------------------------------------

-- | Context for address allocations, function calls and actor references.
data AdrCtx = AdrCtx [Span]    -- k-cfa call sites
                     Int       -- ^ max number of elements in k-cfa
                     ActorCtx  -- ^ actor specific context sensitivity
            | InsensitiveCtx   -- context insensitive analysis
            deriving (Ord, Eq, Show)

-- | Context specific to the actor analysis
data ActorCtx = ActorCtx ActorRef
              | Empty
              deriving (Ord, Eq, Show)

-- | k-cfa instance for 'SimpleActorContext'
instance SimpleActorContext AdrCtx where
  pushCallSite s (AdrCtx callsites maxCallsites actCtx) = AdrCtx callsites' maxCallsites actCtx
    where callsites' = take maxCallsites (s : callsites)
  pushCallSite _ InsensitiveCtx = InsensitiveCtx

-- | The initial context
initialContext :: Int -> AdrCtx
initialContext maxCallsites = AdrCtx [] maxCallsites Empty

-- | An initial context for a context insensitive analysis
insensitiveContext :: AdrCtx
insensitiveContext = InsensitiveCtx

------------------------------------------------------------
-- Initial dynamic environment
------------------------------------------------------------

-- | The initial dynamic environment for an actor, only includes
-- the default sending behavior.
initialDynEnvironment :: Map String (SchemeAdr Exp K)
initialDynEnvironment = Map.singleton "send^" (PrrAdr "send^")

------------------------------------------------------------
-- Stores
------------------------------------------------------------

-- | Store only storing environment based values
type VarSto = CountingMap ActorVarAdr ActorVlu


-- | Shorthand for @StoreT@ by instantiating the backing storage
-- of the store.
type StoreT' k v = StoreT (CountingMap k v) k v

-- | Partial monad transformer stack representing for handling the different Scheme stores.
type ActorStoreT m = MonadStack '[
                      StoreT' (SchemeAdr Exp K) (StoreVal ActorVlu)
                   ] m

-- | Add constraints for Scheme stores
type MonadSchemeStore m = (StoreM ActorVarAdr (StoreVal ActorVlu) m)


-- | Parametrized constraint on actor references and addresses
-- they depend on
type DependOn :: (Type -> Type -> (Type -> Type) -> Constraint) -> (Type -> Type) -> Constraint
type DependOn c m = (c ActorRef ActorVarAdr m)

-- | Constraints for dependency tracking on each type of address
type MonadActorStoreDependencyTracking m =
  (DependOn DependencyTrackingM m,
   DependOn MonadDependencyTriggerTracking m,
   DependOn MonadDependencyTrigger m)


-- | A store for each actor
type MonadActorStore m = (MapM ActorRef ActorSto m)
