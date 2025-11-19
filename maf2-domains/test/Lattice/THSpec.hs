{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Lattice.THSpec(spec) where

import Lattice.TH
import Lattice.Class
import Lattice.ConstantPropagationLattice (CP(..))
import Lattice.BottomLiftedLattice
import Test.Generator.Lattice

import Test.Hspec
import Test.QuickCheck


-- Test data types using pointWiseLattice

-- A simple product type with two fields
data Pair a b = Pair a b
  deriving (Eq, Show)

$(pointWiseLattice ''Pair)

-- A product type with three fields
data Triple a b c = Triple a b c
  deriving (Eq, Show)

$(pointWiseLattice ''Triple)

-- A product type with a single field, should be implemented as a NewType
-- but that is currently not supported by the Template Haskell code.
data Single a = Single a deriving (Eq, Show)

$(pointWiseLattice ''Single)

-- QuickCheck instances for test data types
instance (Arbitrary a, Arbitrary b) => Arbitrary (Pair a b) where
  arbitrary = Pair <$> arbitrary <*> arbitrary

instance (Arbitrary a, Arbitrary b, Arbitrary c) => Arbitrary (Triple a b c) where
  arbitrary = Triple <$> arbitrary <*> arbitrary <*> arbitrary

instance (Arbitrary a) => Arbitrary (Single a) where
  arbitrary = Single <$> arbitrary

-- Helper for generating pairs of values
genPair :: Gen a -> Gen (a, a)
genPair g = (,) <$> g <*> g

-- Helper for generating triples of values
genTriple :: Gen a -> Gen (a, a, a)
genTriple g = (,,) <$> g <*> g <*> g

-- Tests

spec :: Spec
spec = do
  describe "Joinable instances" $ do
    describe "Pair (CP Int) (CP Bool)" $ do
      let pairGen = arbitrary :: Gen (Pair (CP Int) (CP Bool))

      it "join is commutative: ∀ a, b: a ⊔ b = b ⊔ a" $
        forAll (genPair pairGen) $ \(a, b) ->
          join a b `shouldBe` join b a

      it "join is associative: ∀ a, b, c: (a ⊔ b) ⊔ c = a ⊔ (b ⊔ c)" $
        forAll (genTriple pairGen) $ \(a, b, c) ->
          join (join a b) c `shouldBe` join a (join b c)

      it "join is idempotent: ∀ a: a ⊔ a = a" $
        forAll pairGen $ \a ->
          join a a `shouldBe` a

      it "applies join pointwise" $
        let p1 = Pair (Constant 1) (Constant True)
            p2 = Pair (Constant 2) (Constant False)
        in join p1 p2 `shouldBe` Pair Top Top

    describe "Triple (CP Int) (CP Int) (CP Bool)" $ do
      let tripleGen = arbitrary :: Gen (Triple (CP Int) (CP Int) (CP Bool))

      it "join is commutative" $
        forAll (genPair tripleGen) $ \(a, b) ->
          join a b `shouldBe` join b a

      it "applies join pointwise" $
        let t1 = Triple (Constant 1) (Constant 2) (Constant True)
            t2 = Triple (Constant 1) (Constant 3) (Constant False)
        in join t1 t2 `shouldBe` Triple (Constant 1) Top Top

    describe "Single (CP Int)" $ do
      let singleGen = arbitrary :: Gen (Single (CP Int))

      it "join is commutative" $
        forAll (genPair singleGen) $ \(a, b) ->
          join a b `shouldBe` join b a

  describe "PartialOrder instances" $ do
    describe "Pair (CP Int) (CP Bool)" $ do
      it "leq checks all fields pointwise" $ do
        let p1 = Pair (Constant 1) (Constant True)
            p2 = Pair Top Top
        p1 `shouldSatisfy` (`leq` p2)
        p2 `shouldNotSatisfy` (`leq` p1)

      it "leq with partial match returns false" $ do
        let p1 = Pair (Constant 1) Top
            p2 = Pair Top (Constant True)
        p1 `shouldNotSatisfy` (`leq` p2)
        p2 `shouldNotSatisfy` (`leq` p1)

      it "∀ a, b: a ⊑ b ⇒ a ⊔ b = b" $
        forAll (genPair (arbitrary :: Gen (Pair (CP Int) (CP Bool)))) $ \(a, b) ->
          leq a b ==> join a b == b

      it "subsumes is reflexive: ∀ a: a ⊑ a" $
        forAll (arbitrary :: Gen (Pair (CP Int) (CP Bool))) $ \a ->
          a `leq` a

    describe "Triple (CP Int) (CP Int) (CP Bool)" $ do
      it "leq checks all fields pointwise" $ do
        let t1 = Triple (Constant 1) (Constant 2) (Constant True)
            t2 = Triple Top (Constant 2) Top
        t1 `shouldSatisfy` (`leq` t2)
        t2 `shouldNotSatisfy` (`leq` t1)

  describe "TopLattice instances" $ do
    describe "Pair (CP Int) (CP Bool)" $ do
      it "top subsumes all values" $
        forAll (arbitrary :: Gen (Pair (CP Int) (CP Bool))) $ \a ->
          a `leq` (top :: Pair (CP Int) (CP Bool))

      it "top has all fields set to top" $
        (top :: Pair (CP Int) (CP Bool)) `shouldBe` Pair Top Top

    describe "Triple (CP Int) (CP Int) (CP Bool)" $ do
      it "top has all fields set to top" $
        (top :: Triple (CP Int) (CP Int) (CP Bool)) `shouldBe` Triple Top Top Top

  describe "BottomLattice instances" $ do
    describe "Pair (CP Int) (CP Bool)" $ do
      it "bottom is subsumed by all values" $
        forAll (arbitrary :: Gen (Pair (BottomLifted (CP Int)) (BottomLifted (CP Bool)))) $ \a ->
          (bottom :: Pair (BottomLifted (CP Int)) (BottomLifted (CP Bool))) `leq` a

