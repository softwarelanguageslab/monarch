{-# LANGUAGE DeriveFunctor #-}
module Lattice.BottomLiftedLattice(
   BottomLifted(..), 
   lowerBottom, 
   toMaybe,
   joinsBL,
   joinWithBL,
   fromBL,
) where

import Lattice.Class
import Lattice.Equal (EqualLattice(eql))
import Domain.Class (Domain(..))
import Control.DeepSeq
import GHC.Generics

data BottomLifted a = Bottom | Value a
   deriving (Eq, Ord, Show, Functor, Generic)

instance (NFData a) => NFData (BottomLifted a)

instance Applicative BottomLifted where
   pure = Value
   Bottom <*> _ = Bottom 
   _ <*> Bottom = Bottom
   (Value f) <*> (Value a) = Value (f a)

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

instance (Domain a b) => Domain (BottomLifted a) b where
   inject = Value . inject

lowerBottom :: (BottomLattice a) => BottomLifted a -> a 
lowerBottom Bottom = bottom 
lowerBottom (Value v) = v

toMaybe :: BottomLifted a -> Maybe a 
toMaybe Bottom = Nothing
toMaybe (Value v) = Just v 

joinsBL :: Joinable a => [a] -> BottomLifted a
joinsBL = joinMap Value

fromBL :: BottomLifted a -> a
fromBL Bottom    = error "this should not happen"
fromBL (Value v) = v  

joinWithBL :: Joinable a => BottomLifted a -> a -> a
joinWithBL Bottom    a = a
joinWithBL (Value v) a = join v a  
