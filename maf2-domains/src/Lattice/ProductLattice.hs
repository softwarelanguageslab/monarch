{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.ProductLattice where

import Prelude hiding (and)

import Lattice.Class
import Lattice.Split

import qualified Data.Set as Set 
import Lattice.Equal (EqualLattice(..))
import Domain.Core.BoolDomain.Class
import Lattice.ConstantPropagationLattice (CP(..))
import Domain.Class
    
-- | Joinable for pairs of values
instance (Joinable v, Joinable w) => Joinable (v, w) where
   join (v1, w1) (v2, w2) = (join v1 v2, join w1 w2)

-- | Meetable for pairs of values
instance (Meetable v, Meetable w) => Meetable (v, w) where  
   meet (v1, w1) (v2, w2) = (meet v1 v2, meet w1 w2)
   
-- | EqualLattice for pairs of values
instance (EqualLattice v, EqualLattice w) => EqualLattice (v, w) where  
   eql (v1, w1) (v2, w2) = and (eql v1 v2) (eql w1 w2)

instance (BottomLattice v, BottomLattice w) => BottomLattice (v, w) where  
   bottom = (bottom, bottom)

-- | JoinLattice for pairs of values
instance (PartialOrder v, PartialOrder w) => PartialOrder (v, w) where
   subsumes (v1, w1) (v2, w2) = subsumes v1 v2 && subsumes w1 w2

instance (SplitLattice v, SplitLattice w, Ord v, Ord w) => SplitLattice (v, w) where
   split (v, w) = foldMap (foldMap (flip $ curry Set.singleton) wsplit) vsplit 
      where vsplit = split v
            wsplit = split w 
            
productBool :: BoolDomain b => CP Bool -> CP Bool -> b
productBool Top            Top            = boolTop
productBool (Constant a)   Top            = inject a
productBool Top            (Constant b)   = inject b 
productBool (Constant a)   (Constant b)
   | a == b = inject a
   | otherwise = error "Soundness issue: non-overlapping over-approximations in product"
