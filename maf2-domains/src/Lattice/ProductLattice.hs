{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.ProductLattice where

import Lattice.Class
    
-- | Joinable for pairs of values
instance (Joinable v, Joinable w) => Joinable (v, w) where
   join (v1, w1) (v2, w2) = (join v1 v2, join w1 w2)

-- | JoinLattice for pairs of values
instance (JoinLattice v, JoinLattice w) => JoinLattice (v, w) where
   bottom = (bottom, bottom)
   subsumes (v1, w1) (v2, w2) = subsumes v1 v2 && subsumes w1 w2