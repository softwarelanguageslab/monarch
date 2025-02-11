{-# LANGUAGE UndecidableInstances #-}
module Domain.Core.PairDomain.TopLifted() where

import Domain.Core.PairDomain.Class 
import Lattice.Class
import Lattice.TopLiftedLattice


instance (PairDomain a, TopLattice (Content a)) => PairDomain (TopLifted a) where   
   type Content (TopLifted a) = Content a 
   car = fromTL top . fmap car
   cdr = fromTL top . fmap cdr
   cons a = Value . cons a
