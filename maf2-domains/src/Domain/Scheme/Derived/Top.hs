-- | Instance of @TopLifted@ for Scheme domains
module Domain.Scheme.Derived.Top where

import Lattice.Class
import Lattice.TopLiftedLattice (TopLifted(..))

newtype SchemeTopLifted a = SchemeTopLifted (TopLifted a)
                          deriving (Joinable, PartialOrder, Ord, Eq, Show)

