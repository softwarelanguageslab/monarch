-- | Abstract counting
module Domain.Core.AbstractCount (AbstractCount (..), inc) where

import Lattice.Class (Joinable (..), PartialOrder (..))

-- | Value that represents abstract count
data AbstractCount = CountOne | CountInf
  deriving (Eq, Ord, Show)

-- |  Increment the abstract count by one
inc :: AbstractCount -> AbstractCount
inc _ = CountInf

instance Joinable AbstractCount where
  join CountOne CountOne  = CountOne
  join _        _         = CountInf 
  
instance PartialOrder AbstractCount where
  leq CountInf CountOne = False 
  leq _        _        = True 
