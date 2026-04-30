module Domain.Core.VectorDomain.Class (VectorDomain(..)) where 

import Lattice 
import Control.Monad.AbstractM
import qualified Control.Monad.Join as MonadJoin

import Data.Kind 

class (Eq v, Lattice.Joinable v) => VectorDomain v where
   type VContent v :: Type
   type VIndex   v :: Type

   makeVector :: VIndex v -> VContent v -> v
   vectorRef :: (AbstractM m, MonadJoin.Joinable m (VContent v)) => v -> VIndex v -> m (VContent v)
   vectorSet :: (AbstractM m, MonadJoin.Joinable m v) => v -> VIndex v -> VContent v -> m v
   vectorLength :: v -> VIndex v
