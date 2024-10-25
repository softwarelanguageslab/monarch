-- | Abstract counting
module Domain.Core.AbstractCount (AbstractCount (..), inc) where

import Lattice.Class (BottomLattice (..), Joinable (..), PartialOrder (..))

-- | Value that represents abstract count
data AbstractCount = CountZero | CountOne | CountInf
  deriving (Eq, Ord, Show)

-- |  Increment the abstract count by one
inc :: AbstractCount -> AbstractCount
inc CountZero = CountOne
inc _ = CountInf

instance Joinable AbstractCount where
  join CountZero a = a
  join CountOne CountInf = CountInf
  join CountOne _ = CountOne
  join CountInf _ = CountInf

instance BottomLattice AbstractCount where
  bottom = CountZero

instance PartialOrder AbstractCount where
  leq CountZero _ = True
  leq _ CountZero = False
  leq _ CountInf = True
  leq CountInf _ = False
  leq _ _ = True
