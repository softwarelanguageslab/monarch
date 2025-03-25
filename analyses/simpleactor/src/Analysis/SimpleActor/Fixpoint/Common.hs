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
type ActorVlu = ActorValue K (EnvAdr K)
type ActorEnv = HashMap String (EnvAdr K)
type ActorMai = Map ActorRef (Set ActorVlu)
type ActorSto = CountingMap (EnvAdr K) ActorVlu
type ActorPC  = PC (EnvAdr K)

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

type ActorVarAdr = EnvAdr K 
type ActorPaiAdr = PaiAdrE Exp K
type ActorVecAdr = VecAdrE Exp K
type ActorStrAdr = StrAdrE Exp K

-- | Output address for writing individual actor results
newtype ActorResOut = ActorResOut ActorRef deriving (Ord, Eq, Show)

------------------------------------------------------------
-- Initial dynamic environment
------------------------------------------------------------

-- | The initial dynamic environment for an actor, only includes
-- the default sending behavior.
initialDynEnvironment :: Map String ActorVarAdr
initialDynEnvironment = Map.singleton "send^" (PrmAdr "send^")


------------------------------------------------------------
-- Stores
------------------------------------------------------------


-- As the SimpleActor language is based on Scheme and utilizes its
-- domain, the stores needs to be segmented into four different stores:
-- a store for pairs, a store for strings, a store for vectors and
-- a store for variables.
--
-- To make passing this store more ergonomic, we provide a type alias
-- combining these stores, as well as a partial monad transformer
-- stack that includes these stores.


-- | Combination of all Scheme stores
type ActorStos = (VarSto, PaiSto,StrSto, VecSto)
-- | Store of values variables bound to variables
type VarSto = CountingMap ActorVarAdr ActorVlu
-- | Store of pair values
type PaiSto = CountingMap ActorPaiAdr (PaiDom ActorVlu)
-- | Store of vector values
type VecSto = CountingMap ActorVecAdr (VecDom ActorVlu)
-- | Store of string values
type StrSto = CountingMap ActorStrAdr (StrDom ActorVlu)


-- | Shorthand for @StoreT@ by instantiating the backing storage
-- of the store.
type StoreT' k v = StoreT (CountingMap k v) k v

-- | Partial monad transformer stack representing for handling the different Scheme stores.
type ActorStoreT m = MonadStack '[
                      StoreT' (EnvAdr K) ActorVlu,
                      StoreT' (PaiAdrE Exp K) (PaiDom ActorVlu),
                      StoreT' (StrAdrE Exp K) (StrDom ActorVlu),
                      StoreT' (VecAdrE Exp K) (VecDom ActorVlu)
                   ] m

-- | Run an @ActorStoreT@ monad transformer
runActorStoreT :: forall a m . Functor m => ActorStos -> ActorStoreT m a -> m (a, ActorStos)
runActorStoreT (var, pai, str, vec) = fmap ret . runStoreT vec . runStoreT str  . runStoreT pai . runStoreT var
  where ret (a ::*:: var' ::*:: pai' ::*:: str' ::*:: vec') = (a, (var', pai', str', vec'))

-- | Add constraints for Scheme stores
type MonadSchemeStore m = (
                      StoreM ActorVarAdr ActorVlu m,
                      StoreM ActorPaiAdr (PaiDom ActorVlu) m,
                      StoreM ActorStrAdr (StrDom ActorVlu) m,
                      StoreM ActorVecAdr (VecDom ActorVlu) m)



-- | Parametrized constraint on actor references and addresses
-- they depend on
type DependOn :: (Type -> Type -> (Type -> Type) -> Constraint) -> (Type -> Type) -> Constraint
type DependOn c m = (c ActorRef ActorVarAdr m,
                     c ActorRef ActorPaiAdr m,
                     c ActorRef ActorStrAdr m,
                     c ActorRef ActorVecAdr m)

-- | Constraints for dependency tracking on each type of address
type MonadActorStoreDependencyTracking m =
  (DependOn DependencyTrackingM m,
   DependOn MonadDependencyTriggerTracking m)
  

-- | A store for each actor
type MonadActorStore m = (MapM ActorRef VarSto m,
                          MapM ActorRef PaiSto m,
                          MapM ActorRef VecSto m,
                          MapM ActorRef StrSto m)
