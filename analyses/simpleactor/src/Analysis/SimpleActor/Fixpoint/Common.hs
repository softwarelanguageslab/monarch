{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
-- | Abstractions common to the sequential and actor-modular analysis
module Analysis.SimpleActor.Fixpoint.Common where

import Data.Map (Map)

import Syntax.AST
import Data.Set (Set)
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store
import Domain.SimpleActor
import Symbolic.AST ( PC )
import Analysis.Store (CountingMap)
import Data.Kind
import Analysis.Monad.Stack (MonadStack)
import Analysis.Monad.Store (StoreT, runStoreT, StoreM)
import Domain.Scheme.Class hiding (Exp)
import Data.Tuple.Syntax 
import Analysis.Monad.DependencyTracking (DependencyTrackingM, MonadDependencyTracking, MonadDependencyTriggerTracking)
import Analysis.Monad.Map (MapM)
import Analysis.SimpleActor.Monad (Ctx)
import RIO
import qualified RIO.Map as Map


------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type K = Ctx
type ActorExp = Exp
type ActorRef = Pid Exp K
type ActorVlu = ActorValue K (SchemeAdr Exp K)
type ActorEnv = HashMap String (SchemeAdr Exp K)
type ActorMai = Map ActorRef (Set ActorVlu)
type ActorSto = CountingMap (SchemeAdr Exp K) (StoreVal ActorVlu)
type ActorPC  = PC (SchemeAdr Exp K)

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

type ActorVarAdr = SchemeAdr Exp K 

-- | Output address for writing individual actor results
newtype ActorResOut = ActorResOut ActorRef deriving (Ord, Eq, Show)

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
   DependOn MonadDependencyTriggerTracking m)
  

-- | A store for each actor
type MonadActorStore m = (MapM ActorRef ActorSto m)
