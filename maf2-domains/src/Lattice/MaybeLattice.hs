{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Lattice.MaybeLattice where

import Lattice.Class

import qualified Data.Set as Set 

-- | Joinable for Maybe
instance (Joinable v) => Joinable (Maybe v) where
   join (Just a) (Just b) = Just (join a b)
   join (Just a) Nothing = Just a
   join Nothing (Just a) = Just a
   join _ _ = Nothing

-- | JoinLattice implementation for Maybe
instance (JoinLattice v) => JoinLattice (Maybe v) where
   bottom = Nothing
   subsumes (Just a) (Just b) = subsumes a b
   subsumes (Just _) Nothing = True
   subsumes Nothing Nothing = True
   subsumes _ _ = False

instance (Ord v, SplitLattice v) => SplitLattice (Maybe v) where
   split Nothing  = Set.singleton Nothing
   split (Just v) = Set.map Just (split v)