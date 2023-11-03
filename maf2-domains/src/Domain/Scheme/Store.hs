{-# LANGUAGE ConstraintKinds, FlexibleContexts, UndecidableInstances #-}
-- | Memory model for analyses that use the abstract domain for Scheme.
--
-- It specifies the notion of a "store" which is an abstraction of  the actual program memory as a function from a finite set of addresses to an abstract value.
--
-- The memory of a Scheme program is divided into multiple disjoint regions:
--
-- * A region to store the values of variables (VarLoc)
-- * A region to store strings (StrLoc)
-- * A region to store vectors (VecLoc)
-- * A region to store pairs (PaiLoc)
--
-- All other values are entirely immutable and therefore do not have to be allocated in a store.
--
-- The Domain.Scheme.Class defines the type for each of these addresses. This module exposes a type level association list that defines a mapping between these addresses and their corresponding abstract values. Furthermore, this module contains a constraint generator that creates `Has` constraints for each address in the Scheme domain.
module Domain.Scheme.Store(
   SchemeAdrs,
   StoreDefinedFor,
   VrAdr,
   PaAdr,
   VeAdr,
   StAdr,
) where

import Domain
import Domain.Scheme.Class

import Data.Kind
import Data.DMap
import Data.TypeLevel.List

import GHC.Generics

-- | A mapping from Scheme addresses
-- to their corresponding values.
-- 
-- For a given `v` for which an instance of 
-- `SchemeDomain` exists, it computes an association list
-- mapping addresses to the heap allocated-values of the domain.
-- 
-- This can be used as the basis for a `Data.DMap`. 
type SchemeAdrs v = '[
   (Adr  v) :-> Vlu (Adr v),
   (PAdr v) :-> Vlu (PAdr v),
   (VAdr v) :-> Vlu (VAdr v),
   (SAdr v) :-> Vlu (SAdr v) 
   ]


-- | Generate a set of inclusion constraints for the `SchemeAdrs` 
-- association list.
type family GenerateInclusion xs ks :: Constraint where 
   GenerateInclusion '[]                ks = ()
   GenerateInclusion (KV adr vlu ': xs) ks = (Has ks (KV adr vlu), GenerateInclusion xs ks)

-- Set of inclusion constraints for `SchemeAdrs`
type StoreDefinedFor v = 
   (GenerateInclusion (SchemeAdrs v) (SchemeAdrs v), NoDuplicates (SchemeAdrs v))

-- | The types below define wrappers for each of the types of addresses
-- in our disjoint regions of memory
-- 
-- We do this since naked type aliases such as `PAdr` and `VAdr` cannot 
-- always be resolved at compile-time, meaning that instances can become overlapped
-- resulting in unsolvable constraints.
newtype VrAdr adr = VrAdr adr  deriving Generic
newtype PaAdr adr = PaAdr adr deriving Generic
newtype VeAdr adr = VeAdr adr deriving Generic
newtype StAdr adr = StAdr adr deriving Generic
