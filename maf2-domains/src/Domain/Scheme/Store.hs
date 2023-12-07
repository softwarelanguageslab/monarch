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
   VrAdr,
   PaAdr,
   VeAdr,
   StAdr,
) where

import Domain
import Domain.Scheme.Class

import Data.Kind
import Data.TypeLevel.List

import GHC.Generics

-- | The types below define wrappers for each of the types of addresses
-- in our disjoint regions of memory
-- 
-- We do this since naked type aliases such as `PAdr` and `VAdr` cannot 
-- always be resolved at compile-time, meaning that instances can become overlapped
-- resulting in unsolvable constraints.
data VrAdr
data PaAdr 
data VeAdr 
data StAdr 
