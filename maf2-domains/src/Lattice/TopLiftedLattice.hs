-- | Lifts an infinite domain such that a widening 
-- operator is implemented that widens to `Top.
{-# LANGUAGE DeriveFunctor #-}
module Lattice.TopLiftedLattice(TopLifted(..), fromTL) where

import Lattice.Class
import Lattice.Split 
import Domain.Class (Domain(..))

import qualified Data.Set as Set

data TopLifted a = Value a 
                 | Top
   deriving (Eq, Ord, Functor, Show) 

-- | Convert a top lifted value to the same value with a top element
fromTL :: a -- ^  the top element 
       -> TopLifted a 
       -> a 
fromTL a Top = a 
fromTL a (Value b) = b

instance Foldable TopLifted where   
   foldr f z Top = z 
   foldr f z (Value a) = f a z

instance Applicative TopLifted where 
   pure = Value
   liftA2 f Top _ = Top 
   liftA2 _ _ Top = Top 
   liftA2 f (Value a) (Value b) = Value $ f a b

instance Traversable TopLifted where   
   traverse f Top = pure Top 
   traverse f (Value a) = Value <$> (f a)

instance (Joinable v) => Joinable (TopLifted v) where 
   join Top _   = Top 
   join _   Top = Top 
   join (Value v1) (Value v2) = Value (join v1 v2)
 
instance (BottomLattice v) => BottomLattice (TopLifted v) where   
   bottom = Value bottom

instance (PartialOrder v) => PartialOrder (TopLifted v) where 
   subsumes Top _ = True 
   subsumes _ Top = False
   subsumes (Value v1) (Value v2) = subsumes v1 v2

instance TopLattice (TopLifted v) where 
   top = Top

instance Lattice a => Semigroup (TopLifted a) where
  (<>) = join
instance Lattice a => Monoid (TopLifted a) where
  mempty = bottom 

instance (SplitLattice v, Ord v) => SplitLattice (TopLifted v) where
   split (Value v) = Set.map Value (split v) 
   split Top = Set.singleton Top 

instance (Eq a, Joinable a, Domain a b) => Domain (TopLifted a) b where  
   inject = Value . inject
