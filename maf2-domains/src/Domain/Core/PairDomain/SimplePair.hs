module Domain.Core.PairDomain.SimplePair (SimplePair(..)) where

import Lattice 
import Domain.Core.PairDomain.Class 

--import Domain.Core.PairDomain

data SimplePair c = SimplePair c c deriving (Eq, Show, Ord)

instance (Joinable c) => Joinable (SimplePair c) where
   join (SimplePair car1 cdr1) (SimplePair car2 cdr2) =
      SimplePair (join car1 car2) (join cdr1 cdr2)

instance (BottomLattice c) => BottomLattice (SimplePair c) where
   bottom = SimplePair bottom bottom

instance (Lattice c) => PairDomain (SimplePair c) where
   type Content (SimplePair c) = c
   car (SimplePair vcar _) = vcar
   cdr (SimplePair _ vcdr) = vcdr
   cons = SimplePair
