{-# OPTIONS_GHC -Wno-missing-methods #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE DeriveAnyClass #-}
module Lattice.ConstantPropagationLattice(CP(..), fromCP) where

import Lattice.Class 
import Lattice.Equal
import Lattice.Trace
import Domain.Class 
import Domain.Core.BoolDomain.Class

import GHC.Generics
import Control.DeepSeq
import qualified Data.Set as Set

data CP a = Constant a | Top
    deriving (Eq, Ord, Show, Generic, NFData)

instance Ord a => Joinable (CP a) where
    join v@(Constant x1) (Constant x2)
      | x1 == x2 = v
    join _ _ = Top

instance (Show a, Ord a) => PartialOrder (CP a) where
    subsumes Top _ = True
    subsumes _ Top = False 
    subsumes (Constant x1) (Constant x2) = x1 == x2

instance TopLattice (CP a) where    
   top = Top

instance (Show a, Ord a) => Domain (CP a) a where
   inject = Constant

instance {-# OVERLAPPING #-} (Eq a) => EqualLattice (CP a) where   
   eql (Constant a) (Constant b) 
      | a == b = inject True 
      | otherwise = inject False
   eql _ _ = boolTop
   
instance Functor CP where
    fmap f (Constant x) = Constant (f x)
    fmap _ Top = Top

instance Applicative CP where
    pure = Constant
    (Constant f) <*> (Constant a) = Constant (f a)
    _ <*> _ = Top

instance Ord adr => Trace adr (CP a) where
  trace = const Set.empty

-- | Convert from a CP lattice to another abstract domain
fromCP :: (TopLattice a, Domain a c) => CP c -> a
fromCP (Constant c) = inject c
fromCP Top          = top

  
