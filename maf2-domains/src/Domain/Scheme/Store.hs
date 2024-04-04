{-# LANGUAGE ConstraintKinds, FlexibleContexts, UndecidableInstances #-}
-- | Memory model for analyses that use the abstract domain for Scheme.
--
-- It specifies the notion of a "store" which is an abstraction of  the actual program memory as a function from a finite set of addresses to an abstract value.
--
-- The memory of a Scheme program is divided into multiple disjoint regions:
--
-- * A region to store the values of variables (Adr)
-- * A region to store strings (SAdr)
-- * A region to store vectors (VAdr)
-- * A region to store pairs (PAdr)
--
-- All other values are entirely immutable and therefore do not have to be allocated in a store.
--
-- The Domain.Scheme.Class defines the type for each of these addresses. This module provides a sensible concrete type for these addresses.
module Domain.Scheme.Store(
   PaiAdr(..),
   StrAdr(..),
   VecAdr(..),
   EnvAdr(..),
) where

import Syntax.Scheme
import Domain.Scheme.Class hiding (Exp)

data EnvAdr ctx = EnvAdr Ide ctx 
                | PrmAdr String deriving (Eq, Ord, Show)
data PaiAdr ctx = PaiAdr Exp ctx deriving (Eq, Ord, Show)
data StrAdr ctx = StrAdr Exp ctx deriving (Eq, Ord, Show)
data VecAdr ctx = VecAdr Exp ctx deriving (Eq, Ord, Show)

instance (Ord ctx, Show ctx) => Address (EnvAdr ctx)
instance (Ord ctx, Show ctx) => Address (PaiAdr ctx)
instance (Ord ctx, Show ctx) => Address (StrAdr ctx)
instance (Ord ctx, Show ctx) => Address (VecAdr ctx)
