{-# LANGUAGE FlexibleContexts, FlexibleInstances, TypeFamilies, AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-orphans #-}
-- | This module provides a class of monads that are used to throw errors 
-- in the implementation of our abstract domains.
module Control.Monad.DomainError(DomainError(..)) where

import Control.Monad.Escape

import Domain.Class

import Lattice.UnitLattice()
import Lattice.SetLattice()
import Data.Set (Set)


-- | Errors in the abstract domain are represented as arbitrary strings
data DomainError = WrongType | IndexOutOfBounds | KeyNotFound | InvalidArgument
   deriving (Eq, Ord, Show)

class Domain a DomainError => ErrorDomain a

instance ErrorDomain (Set DomainError)

instance Domain () DomainError where
   inject = const ()
