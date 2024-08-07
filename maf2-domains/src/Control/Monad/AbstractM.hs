module Control.Monad.AbstractM (AbstractM, domain) where

import Control.Monad.Join 
import Control.Monad.Escape
import Control.Monad.DomainError
import Domain.Core.BoolDomain.Class
import Lattice.Class 
import Domain.Class 

-- | Monad used for implementing abstract operations
type AbstractM m = (MonadJoin m, MonadEscape m, Domain (Esc m) DomainError)

-- | Raises error using `raiseError` if the given value is not in the domain
-- or returns () if it has not
domain :: (AbstractM m, BoolDomain b, Joinable a, BottomLattice a) => b -> DomainError -> m a
domain b err
   | isTrue b = escape err
   | otherwise = mzero
