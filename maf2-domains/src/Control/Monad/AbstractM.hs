{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ConstraintKinds #-}

module Control.Monad.AbstractM (AbstractM, domain) where

import Control.Monad.Join 
import Control.Monad.Escape
import Control.Monad.DomainError
import Domain.Core.BoolDomain.Class
import qualified Lattice.Class as Lattice 
import Domain.Class 

-- | Monad used for implementing abstract operations
type AbstractM m = (MonadJoin m, MonadEscape m, Domain (Esc m) DomainError, forall v . Lattice.Joinable v => MonadJoinable m, forall v . Lattice.Joinable v => Joinable m v)

-- | Raises error using `raiseError` if the given value is not in the domain
-- or returns () if it has not
domain :: (AbstractM m, BoolDomain b) => b -> DomainError -> m a
domain b err
   | isTrue b = escape err
   | otherwise = mbottom
