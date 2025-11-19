module Test.Generator.Lattice
  ( AlmostEq (..),
    AlmostEqLattice(..),
  )
where

import Domain.Core.SeqDomain.CPList (CPList(..))
import qualified Domain.Core.SeqDomain.CPList 
import qualified Domain.Core.SeqDomain as SeqDomain
import qualified Domain.Core.SeqDomain (CPList(..))
import Lattice.BottomLiftedLattice (BottomLifted (..))
import Lattice.Class (Joinable)
import Lattice.ConstantPropagationLattice (CP (..))
import Test.QuickCheck.Arbitrary
import Test.QuickCheck

-- | approximate equality (to deal with floating point imprecision)
-- https://rosettacode.org/wiki/Approximate_equality#Haskell
class (Num a, Eq a, Ord a) => AlmostEq a where
  eps :: a
  infix 4 ~=
  (~=) :: a -> a -> Bool
  a ~= b = (a == b) || (abs (a - b) < eps * abs (a + b)) || (abs (a - b) < eps)

instance AlmostEq Int where eps = 0

instance AlmostEq Integer where eps = 0

instance AlmostEq Double where eps = 1e-14

instance AlmostEq Float where eps = 1e-5

-- approximate equality for CP
class AlmostEqLattice a where
  (~=~) :: a -> a -> Bool

instance (AlmostEq a) => AlmostEqLattice (CP a) where
  (Constant a) ~=~ (Constant b) = a ~= b
  Top ~=~ Top = True
  _ ~=~ _ = False

instance (AlmostEqLattice a) => AlmostEqLattice (BottomLifted a) where
  Bottom ~=~ Bottom = True
  (Value a) ~=~ (Value b) = a ~=~ b
  _ ~=~ _ = False

-- Generators
instance (Arbitrary a) => Arbitrary (CP a) where
  arbitrary = oneof [pure Top, Constant <$> arbitrary]

instance (Arbitrary a, Eq a, Joinable a) => Arbitrary (CPList a) where
  arbitrary = oneof [SeqDomain.fromList <$> listOf arbitrary, TopList <$> arbitrary]

instance (Arbitrary a) => Arbitrary (BottomLifted a) where
  arbitrary = Value <$> arbitrary
