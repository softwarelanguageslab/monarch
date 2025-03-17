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
import Analysis.Monad.Store (StoreT, runStoreT)
import Domain.Scheme.Class hiding (Exp)
import Data.Tuple.Syntax 
import Analysis.Monad.DependencyTracking (DependencyTrackingM)


------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type K = [Span]
type ActorExp = Exp
type ActorRef = Pid Exp K
type ActorVlu = ActorValue K (EnvAdr K)
type ActorEnv = Map String (EnvAdr K)
type ActorMai = Map ActorRef (Set ActorVlu)
type ActorSto = CountingMap (EnvAdr K) ActorVlu
type ActorPC  = PC (EnvAdr K)

------------------------------------------------------------
-- Utilities
------------------------------------------------------------

type family Unlist (as :: Type) :: Type where
   Unlist [k] = k

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
type ActorStos = (CountingMap (EnvAdr K) ActorVlu,
                  CountingMap (PaiAdrE Exp K) (PaiDom ActorVlu) ,
                  CountingMap (StrAdrE Exp K) (StrDom ActorVlu),
                  CountingMap (VecAdrE Exp K) (VecDom ActorVlu))


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


-- | Constraints for dependency tracking on each type of address
type MonadActorStoreDependencyTracking m = (DependencyTrackingM m ActorRef (EnvAdr K),
                                            DependencyTrackingM m ActorRef (PaiAdrE Exp K),
                                            DependencyTrackingM m ActorRef (StrAdrE Exp K),
                                            DependencyTrackingM m ActorRef (VecAdrE Exp K))
  

