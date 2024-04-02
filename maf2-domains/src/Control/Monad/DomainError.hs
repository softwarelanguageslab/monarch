{-# LANGUAGE FlexibleContexts, FlexibleInstances, TypeFamilies, AllowAmbiguousTypes, DeriveFunctor #-}
{-# OPTIONS_GHC -Wno-orphans #-}
-- | This module provides a class of monads that are used to throw errors 
-- in the implementation of our abstract domains.
module Control.Monad.DomainError(DomainError(..), MonadEscape(..), MayEscapeT(..), MayEscape(Value), orElse, try) where

import Control.Monad.Escape

import Lattice.Class hiding (Bottom)
import Lattice.SetLattice
import Lattice.UnitLattice
import Domain.Class 

import Control.Monad.Join
import Data.Kind (Type)
import Control.Monad (ap)
import Data.Set (Set) 
import Data.Functor ((<&>))


-- | Errors in the abstract domain are represented as arbitrary strings
data DomainError = WrongType | IndexOutOfBounds | KeyNotFound | InvalidArgument 
   deriving (Eq, Ord, Show)

class Domain a DomainError => ErrorDomain a 

instance ErrorDomain (Set DomainError) 
 
instance Domain () DomainError where
   inject = const ()
