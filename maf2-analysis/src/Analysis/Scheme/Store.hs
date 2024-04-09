{-# LANGUAGE FlexibleInstances #-}

{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE PolyKinds #-}
-- | A store for Scheme-based analyses.
--
-- The store is divided into four parts: 
-- - a store for the variables of the program
-- - a store for storing the pairs allocated by the program
-- - a store for storing the vector allocated by the program
-- - a store for storing the strings allocated by the program
module Analysis.Scheme.Store(fromValues, SchemeStore'(..), SchemeStore, runSchemeStoreT, combineStores, unifyStore, SVar, Id, runSchemeAllocT) where

import Domain.Scheme

import Data.Map (Map)
import qualified Data.Map as Map
import Analysis.Monad
import qualified Control.Monad.State.SVar as SVar
import Data.Singletons
import Data.Kind
import Data.Function ((&))
import Data.TypeLevel.HMap

data Id :: k ~> k
type instance Apply Id (x :: k) = x

data SVar :: Type ~> Type
type instance Apply SVar (x :: Type) = SVar.SVar x

-- | A SchemeStore is a combination of the stores
-- for values, strings, pairs and vecs.
--
-- Type parameter `v` is the type of the abstract
-- Scheme values and `var`, `str`, `pai` and `vec`
-- are addresses to variables, strings, pairs and 
-- vectors respectively.
--
-- Type parameter `f` is a defunctionalised 
-- type-level function that serves as a transformer
-- on the type of values that each store partition 
-- has. Usually this is `Id`, but it can be mapped 
-- to other types as well such as `SVar`
data SchemeStore' f v var str pai vec = SchemeStore {
     values  :: Map var (f @@ VarDom v),
     strings :: Map str (f @@ StrDom v),
     pairs   :: Map pai (f @@ PaiDom v),
     vecs    :: Map vec (f @@ VecDom v)
}

type StoreMapping (f :: Type ~> Type) v var str pai vec = '[
      var ::-> VarDom v,
      vec ::-> VecDom v,
      pai ::-> PaiDom v,
      str ::-> StrDom v
   ]

-- | A SchemeStore where `f` is fixed to 'Id'.
type SchemeStore v var str pai vec = SchemeStore' Id v var str pai vec

-- | Create a new SchemeStore with the given map 
-- as the partition for the values.
fromValues :: forall f v var str pai vec . Map var (f @@ VarDom v) -> SchemeStore' f v var str pai vec
fromValues vls = SchemeStore {
      values  = vls,
      strings = Map.empty,
      pairs   = Map.empty,
      vecs    = Map.empty
}

-- | A monadic stack that represents the store
-- implementations for each store part
type SchemeStoreT' adr vadr sadr padr v m a =
   StackStoreT (StoreMapping SVar v adr sadr padr vadr) m a


-- | Given a stack with a SchemeStoreT type on
-- top, removes these layers and injects
-- the stores as its state (see 'runStoT')
runSchemeStoreT :: (Monad m)
                => SchemeStore' SVar v adr sadr padr vadr
                -> SchemeStoreT' adr vadr sadr padr v m a
                ->  m (a, SchemeStore' SVar v adr sadr padr vadr)
runSchemeStoreT sto m = do
              r <- m
                   & runStoreT' (values sto)
                   & runStoreT' (vecs sto)
                   & runStoreT' (pairs sto)
                   & runStoreT' (strings sto)
              let ((((v, values''), vecs''), pairs''), strings'') = r
              return (v, SchemeStore {
                  values  = values'',
                  vecs    = vecs'',
                  pairs   = pairs'',
                  strings = strings''
              })

-- | Add Scheme address allocators to the monadic stack,
-- needs four functions that correspond to the allocatio
runSchemeAllocT var vec pai str m =
               m
             & runAlloc var
             & runAlloc vec
             & runAlloc pai
             & runAlloc str

-- | Replace the SVar's in the SchemeStore by their actual value
-- using the given SVar state.
unifyStore :: (Ord adr, Ord sadr, Ord padr, Ord vadr)
           => SchemeStore' SVar v adr sadr padr vadr
           -> SVar.VarState
           -> SchemeStore' Id v adr sadr padr vadr
unifyStore store state = SchemeStore {
      values  = SVar.unify (values store) state,
      vecs    = SVar.unify (vecs store) state,
      pairs   = SVar.unify (pairs store) state,
      strings = SVar.unify (strings store) state
   }


-- | DEPRECATED: combine the result of the SchemeStoreT monad into a single store, this is now superceded by runSchemeStoreT
combineStores :: Monad m => m ((((a, Map var (VarDom v)), Map str (StrDom v)), Map pai (PaiDom v)), Map vec (VecDom v)) -> m (a, SchemeStore v var str pai vec)
combineStores m = m >>= (\((((a, vars), strings), pairs), vecs) -> return (a, SchemeStore vars strings pairs vecs))
