{-# LANGUAGE DeriveFunctor #-}
module Lattice.BottomLiftedLattice(BottomLifted(..), lowerBottom) where

import Lattice.Class
import Lattice.Equal (EqualLattice(eql))

data BottomLifted a = Bottom | Value a
                    deriving (Eq, Ord, Show, Functor)

instance (Joinable a) => Joinable (BottomLifted a) where  
   join Bottom a = a 
   join a Bottom = a 
   join (Value a) (Value b) = Value $ join a b

instance (Meetable a) => Meetable (BottomLifted a) where   
   meet Bottom _ = Bottom
   meet _ Bottom = Bottom 
   meet (Value a) (Value b) = Value $ meet a b

instance (EqualLattice a) => EqualLattice (BottomLifted a) where  
   eql Bottom _ = bottom 
   eql _ Bottom = bottom 
   eql (Value v1) (Value v2) = eql v1 v2

instance BottomLattice (BottomLifted a) where   
   bottom = Bottom

instance (PartialOrder a) => PartialOrder (BottomLifted a) where 
   subsumes _ Bottom = True
   subsumes (Value a) (Value b) = subsumes a b
   subsumes _ _ = False

instance (TopLattice a) => TopLattice (BottomLifted a) where 
   top = Value top

lowerBottom :: (BottomLattice a) => BottomLifted a -> a 
lowerBottom Bottom = bottom 
lowerBottom (Value v) = v
