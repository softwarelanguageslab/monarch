{-# OPTIONS_GHC -fno-warn-orphans -fno-warn-missing-signatures #-}
{-# LANGUAGE TypeApplications, FlexibleContexts, ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Avoid lambda using `infix`" #-}
module LatticeSpec(spec) where

import Domain hiding (Bottom)
import Lattice.ConstantPropagationLattice
import Lattice.Class
import Test.QuickCheck
import Test.Hspec.Core.Spec
import Test.Hspec
import Data.Maybe (fromJust)

-- Utilities

pairs :: Applicative m => m x ->  m (x, x)
pairs a = fmap (,) a <*> a

triples :: Applicative m => m x ->  m (x, x, x)
triples m = fmap (,,) m <*> m <*> m

-- Properties

-- TODO: a lot of code is broken here because of changes to the 
-- representation of the constant propagation lattice.

latticeTests :: (Show v, Eq v, Joinable v, PartialOrder v) => Gen v -> Spec
latticeTests latGen = do
   describe "join" $ do
      -- join is commutative
      it "∀ a, b: a ⊔ b = b ⊔ a" $
         forAll (pairs latGen) (\(a,b) -> join a b `shouldBe` join b a)

      -- join is associative
      it "∀ a, b, (a ⊔ b) ⊔ c = a ⊔ (b ⊔ c)" $
         forAll (triples latGen) (\(a, b, c) -> join (join a b) c `shouldBe` join a (join c b))

      -- join is idempotent
      it "∀ a, a ⊔ a = a" $
         forAll latGen (\a -> join a a `shouldBe` a)

      -- join is compatible with subsumption 
      it "∀ a, b: a ⊑ b → a ⊔ b = b" $
         forAll (pairs latGen) (\(a, b) -> subsumes b a ==> (join a b == b))

boolLattice :: forall b . (Show b, Eq b, BoolDomain b) => Gen b -> Spec
boolLattice boolGen = do
   it "isTrue(inject(true)) ∧ isFalse(inject(false))" $
     isTrue (inject True :: b) && isFalse (inject False :: b)

   it "isTrue(⊤) ∧ isFalse(⊤)" $
     isTrue (boolTop :: b) && isFalse (boolTop :: b)

   it "∀ a: isTrue(a) ⇒ isFalse(not(a)) ∧ isFalse(a) ⇒ isTrue(not(a))" $
      forAll boolGen (\a ->
         (isTrue a ==> isFalse (Domain.not a)) .&. (isFalse a ==> isTrue (Domain.not a)))

   it "∀ a: not(not(a)) == a" $
      forAll boolGen (\a -> Domain.not (Domain.not a) `shouldBe` a)

numDomainTests :: forall n c . (Show n, Eq n, NumberDomain n, Domain n c, Num c, Show c) => Gen n -> Gen c ->  Spec
numDomainTests numGen concNum = do
   -- plus is monotone
   it "∀ a,b,c : b ⊑ c → plus(a, b) ⊑ plus(a, c)" $
      forAll (triples numGen) (\(a, b, c) -> subsumes c b ==> fromJust (plus a c) `subsumes` fromJust (plus a b))
   -- plus is sound 
   it "∀ a, b: inject(a + b) ⊑ plus(inject(a), inject(b))" $
      forAll (pairs concNum) (\(a, b) -> subsumes (fromJust $ plus (inject @n a) (inject b)) (inject @n (a + b)))
   -- plus is associative
   it "∀ a, b, c: plus(a, plus(b, c)) == plus(plus(a, b), c)" $
      forAll (triples numGen) (\(a, b, c) -> fromJust (plus a (fromJust (plus b c))) `shouldBe` fromJust (plus (fromJust (plus a b)) c))


    -- minus is monotone
   it "∀ a,b,c : b ⊑ c → minus(a, b) ⊑ minus(a, c)" $
      forAll (triples numGen) (\(a, b, c) -> subsumes c b ==> fromJust (minus a c) `subsumes` fromJust (minus a b))
   -- minus is sound 
   it "∀ a, b: inject(a - b) ⊑ minus(inject(a), inject(b))" $
      forAll (pairs concNum) (\(a, b) -> subsumes (fromJust $ minus (inject @n a) (inject b)) (inject @n (a - b)))


    -- times is monotone
   it "∀ a,b,c : b ⊑ c → times(a, b) ⊑ times(a, c)" $
      forAll (triples numGen) (\(a, b, c) -> subsumes c b ==> fromJust (times a c) `subsumes` fromJust (times a b))
   -- times is sound 
   it "∀ a, b: inject(a * b) ⊑ times(inject(a), inject(b))" $
      forAll (pairs concNum) (\(a, b) -> subsumes (fromJust $ times (inject @n a) (inject b)) (inject @n (a * b)))

-- Soundness for dictionaries

-- Generators
instance (Arbitrary a) => Arbitrary (CP a) where
   arbitrary = oneof [pure Top, Constant <$> arbitrary]

-- Run tests

spec = do
   -- core lattice operation laws
   describe "laws for cpInt" $ latticeTests (arbitrary :: Gen (CP Integer))
   describe "laws for cpBool" $ latticeTests (arbitrary :: Gen (CP Bool))
   describe "laws for cpDouble" $ latticeTests (arbitrary :: Gen (CP Double))
   describe "laws for cpString" $ latticeTests (arbitrary :: Gen (CP String))
   describe "laws for cpChar" $ latticeTests (arbitrary :: Gen (CP Char))
   -- bool lattice operations
   describe "bool domain for cpBool" $ boolLattice (arbitrary :: Gen (CP Bool))
   -- number lattice operations
   describe "number domain for cpInt" $ numDomainTests (arbitrary :: Gen (CP Integer)) (arbitrary :: Gen Integer)
   -- properties for cpDouble do not hold because of float imprecision
  -- describe "number domain for cpDouble" $ numDomainTests (arbitrary :: Gen (CP Double)) (arbitrary :: Gen Double)
