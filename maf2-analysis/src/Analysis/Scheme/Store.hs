{-# LANGUAGE FlexibleInstances #-}

{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE PolyKinds #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
-- | A store for Scheme-based analyses.
--
-- The store is divided into four parts: 
-- - a store for the variables of the program
-- - a store for storing the pairs allocated by the program
-- - a store for storing the vector allocated by the program
-- - a store for storing the strings allocated by the program
--
-- This module provides the monads needed for managing these 
-- stores during an analysis, as well as its allocation 
-- functions. Furthermore, two stores named `DSto` 
-- and `SSto`, refering to a 'SchemeStore' with and without 
-- SVars respecively, provide default store types for 
-- sensible address defaults (cf. 'Domain.Scheme.Store').
module Analysis.Scheme.Store(
   -- * Store
   fromValues,
   SchemeStore'(..),
   SchemeStore,
   Id,
   runSchemeAllocT,
   -- * Defaults
   DSto
) where

import Domain.Scheme
import Data.Map (Map)
import qualified Data.Map as Map
import Analysis.Monad
import Data.Singletons
import Data.Function ((&))
import Domain.Scheme.Store

-- TODO: these two things should be moved elsewhere.
data Id :: k ~> k
type instance Apply Id (x :: k) = x

------------------------------------------------------------
-- SchemeStore itself
------------------------------------------------------------

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


-- | Add Scheme address allocators to the monadic stack,
-- needs four functions that correspond to the allocation
runSchemeAllocT var vec pai str m =
               m
             & runAlloc var
             & runAlloc vec
             & runAlloc pai
             & runAlloc str


---------------------------------------------------------------
-- Default store aliases
---------------------------------------------------------------

type DSto k v =
   SchemeStore' Id v (EnvAdr k) (StrAdr k) (PaiAdr k) (VecAdr k)
