-- | Abstract counting
module Domain.Core.AbstractCount (
  AbstractCount (..),
  -- TODO: this export should actually be removed so that
  -- clients use Domain.Core.Count.Class directly 
  module Domain.Core.Count.Class
) where


import Domain.Core.Count.Class
import Lattice.Class (Joinable (..), PartialOrder (..))
import GHC.Generics
import Control.DeepSeq

-- | Value that represents abstract count
data AbstractCount = CountOne | CountInf
  deriving (Eq, Ord, Show, Generic)

instance NFData AbstractCount where

instance Count AbstractCount where 
  inc _ = CountInf
  infty = CountInf
  one   = CountOne



instance Joinable AbstractCount where
  join CountOne CountOne  = CountOne
  join _        _         = CountInf 
  
instance PartialOrder AbstractCount where
  leq CountInf CountOne = False 
  leq _        _        = True 
