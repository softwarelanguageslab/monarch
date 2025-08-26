{-# LANGUAGE UndecidableInstances #-}

module Lattice.Split(SplitLattice(..)) where

import Domain.Core.BoolDomain.Class
import Lattice.Class

import Data.Set (Set)
import qualified Data.Set as Set


------------------------------------------------------------
--- SplitLattice
------------------------------------------------------------


-- | Split operation for lattices
-- cf. https://doi.org/10.1145/3589250.3596141
class SplitLattice v where
   -- Splits the value into a set of values where each value contains only one subvalue
   split :: v -> Set v
   splitAsList :: v -> [v]
   splitAsList = Set.toList . split
   splitOn :: (BoolDomain b, Joinable v, BottomLattice v) => (v -> b) -> v -> (v, v)
   splitOn p = splitAux . map (\v -> (v, p v)) . splitAsList 
   splitOnM :: (Monad m, BoolDomain b, Joinable v, BottomLattice v) => (v -> m b) -> v -> m (v, v)
   splitOnM p = fmap splitAux . mapM (\v -> (v,) <$> p v) . splitAsList

splitAux :: (BoolDomain b, Joinable v, BottomLattice v) => [(v, b)] -> (v, v)
splitAux = foldr addEl (bottom, bottom)
    where addEl (v, b) (t, f) = let t' = if isTrue b  then t `join` v else t
                                    f' = if isFalse b then f `join` v else f 
                                in (t', f')

-- | The default, not-so-interesting instance 
instance {-# OVERLAPPABLE #-} SplitLattice a where 
   split = Set.singleton 
