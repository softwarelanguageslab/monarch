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
   PaiAdrE(..),
   StrAdrE(..),
   VecAdrE(..),
   EnvAdr(..),
   PaiAdr,
   StrAdr,
   VecAdr,
   Env,
) where

import Syntax.Ide
import Data.Map (Map)
import qualified Syntax.Scheme.AST as Scheme

data EnvAdr ctx = EnvAdr Ide ctx 
                | PrmAdr String deriving (Eq, Ord, Show)

-- | Addresses parametrized by the type of expression 
-- so that any expression type can be used in the 
-- abstract domain for Scheme.
data PaiAdrE e ctx = PaiAdr e ctx deriving (Eq, Ord, Show)
data StrAdrE e ctx = StrAdr e ctx deriving (Eq, Ord, Show)
data VecAdrE e ctx = VecAdr e ctx deriving (Eq, Ord, Show)

-- For convenience, addresses initialized to Scheme expressions ...
type PaiAdr ctx = PaiAdrE Scheme.Exp ctx
type StrAdr ctx = StrAdrE Scheme.Exp ctx
type VecAdr ctx = VecAdrE Scheme.Exp ctx

-- | With sensible defaults for addresses comes a sensible
-- default for the environment.
type Env ctx =  Map String (EnvAdr ctx)
