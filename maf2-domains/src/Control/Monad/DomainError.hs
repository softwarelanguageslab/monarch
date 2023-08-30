{-# LANGUAGE FlexibleContexts, FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
-- | This module provides a class of monads that are used to throw errors 
-- in the implementation of our abstract domains.
module Control.Monad.DomainError(DomainError(..), MonadDomainError(..)) where

import Control.Monad.Join
import Domain.Lattice (join)

-- | Errors in the abstract domain are represented as arbitrary strings
newtype DomainError = DomainError String deriving (Eq, Ord, Show)

-- | Monad to handle errors in the abstract domain
class MonadDomainError m where
   raiseError :: DomainError -> m a

-- | Example instance of MonadDomainError which ignores all errors
-- but halts the analysis by returning an `mzero`
instance MonadDomainError Maybe where 
   raiseError = const Nothing
instance MonadJoin Maybe where 
   mzero = Nothing
   mjoin Nothing mb = mb 
   mjoin ma Nothing = ma 
   mjoin (Just a) (Just b) = return $ join a b
   
