{-# LANGUAGE FlexibleContexts, UndecidableInstances, PatternSynonyms, FlexibleInstances, ConstraintKinds #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures -fno-warn-missing-fields -fno-warn-missing-pattern-synonym-signatures -fno-warn-incomplete-patterns #-}
module Domain.Scheme (SchemeAdrs, Address(..),  module Domain.Scheme.Class, module Domain.Scheme.Modular) where

import Data.Coerce hiding (coerce)
import qualified Data.Coerce as Coerce
import Control.Applicative (Applicative(liftA2))
import Data.Kind
import Data.Set (Set)
import Data.Default
import qualified Data.Set as Set
import Control.Monad ((>=>), (<=<))
import qualified Control.Monad as M

import Prelude hiding (null)
import Data.List hiding (null)
import Control.Monad.Join
import Data.Maybe (isJust)
import Data.DMap ((:->))
import Data.Kind
import Data.Hashable
import Data.Typeable

import Domain
import Domain.Scheme.Class
import Domain.Scheme.Modular



----------------------------------------------
-- Store interactions
----------------------------------------------

-- | A mapping from Scheme addresses
-- to their corresponding values.
-- 
-- For a given `v` for which an instance of 
-- `SchemeDomain` exists, it computes an association list
-- mapping addresses to the heap allocated-values of the domain.
-- 
-- This can be used as the basis for a `Data.DMap`. 
type SchemeAdrs v = '[
   Adr  v :-> Vlu (Adr v),
   PAdr v :-> Vlu (PAdr v),
   VAdr v :-> Vlu (VAdr v),
   SAdr v :-> Vlu (SAdr v) 
   ]

