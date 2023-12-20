module Domain.Class (Domain(..)) where

import Lattice.Class

class JoinLattice v => Domain v c where
   inject :: c -> v
   injects :: Foldable t => t c -> v 
   injects = joinMap inject 