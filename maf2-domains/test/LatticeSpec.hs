{-# OPTIONS_GHC -fno-warn-orphans -fno-warn-missing-signatures #-}
{-# LANGUAGE TypeApplications, FlexibleContexts, ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# HLINT ignore "Avoid lambda using `infix`" #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
module LatticeSpec(spec) where

import Domain hiding (Bottom)
import Lattice.ConstantPropagationLattice
import Lattice.Class
import Domain.Core.SeqDomain.Class as SeqDomain
import Domain.Core.SeqDomain.CPList

import Test.QuickCheck
import Test.Hspec.Core.Spec
import Test.Hspec
import Data.Maybe (fromJust)
import Lattice.BottomLiftedLattice

-- Utilities

pairs :: Applicative m => m x ->  m (x, x)
pairs a = fmap (,) a <*> a

triples :: Applicative m => m x ->  m (x, x, x)
triples m = fmap (,,) m <*> m <*> m

errBot :: Maybe (BottomLifted a) -> BottomLifted a
errBot Nothing = bottom 
errBot (Just a) = a

shouldSubsume :: (Show a, PartialOrder a) => a -> a -> Expectation
a `shouldSubsume` b = a `shouldSatisfy` (`subsumes` b)

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

-- Properties

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

-- precision test for some domains: gamma(abstract_value) should only return true for the concrete value that was abstracted into abstract_value 
-- some domains have the property that for every concrete value there exists an abstract value that only concretises to that concrete value
-- i.e. CP: Constant x only concretises to x
-- TODO

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

numDomainTests :: forall n c b . (Show n, Eq n, NumberDomain n b, TopLattice n, Domain n c, Num c, Show c, AlmostEqLattice n) => Gen (BottomLifted n) -> Gen c ->  Spec
numDomainTests numGen concNum = do
   -- plus is monotone
   it "∀ a,b,c : b ⊑ c → plus(a, b) ⊑ plus(a, c)" $
      forAll (triples numGen) (\(a, b, c) -> subsumes c b ==> errBot (plus @_ @b a c) `shouldSubsume` errBot (plus @_ @b a b))
   -- plus is sound 
   it "∀ a, b: inject(a + b) ⊑ plus(inject(a), inject(b))" $
      forAll (pairs concNum) (\(a, b) -> subsumes (errBot $ plus @_ @b (inject @(BottomLifted n) a) (inject b)) (inject @(BottomLifted n) (a + b)))
   -- plus is associative
   it "∀ a, b, c: plus(a, plus(b, c)) == plus(plus(a, b), c)" $
      forAll (triples numGen) (\(a, b, c) -> errBot (plus @_ @b a (errBot (plus @_ @b b c))) ~=~ errBot (plus @_ @b (errBot (plus @_ @b a b)) c))


    -- minus is monotone
   it "∀ a,b,c : b ⊑ c → minus(a, b) ⊑ minus(a, c)" $
      forAll (triples numGen) (\(a, b, c) -> subsumes c b ==> errBot (minus @_ @b a c) `shouldSubsume` errBot (minus @_ @b a b))
   -- minus is sound 
   it "∀ a, b: inject(a - b) ⊑ minus(inject(a), inject(b))" $
      forAll (pairs concNum) (\(a, b) -> subsumes (errBot $ minus @_ @b (inject @(BottomLifted n) a) (inject b)) (inject @(BottomLifted n) (a - b)))


    -- times is monotone
   it "∀ a,b,c : b ⊑ c → times(a, b) ⊑ times(a, c)" $
      forAll (triples numGen) (\(a, b, c) -> subsumes c b ==> errBot (times @_ @b a c) `shouldSubsume` errBot (times @_ @b a b))
   -- times is sound 
   it "∀ a, b: inject(a * b) ⊑ times(inject(a), inject(b))" $
      forAll (pairs concNum) (\(a, b) -> subsumes (errBot $ times @_ @b (inject @(BottomLifted n) a) (inject b)) (inject @(BottomLifted n) (a * b)))

-- Soundness for sequences
seqDomainTests :: forall l v n b s r . (Show n, Show v, Show l, SeqDomain l, IntDomain n b s r, Idx l ~ n, PartialOrder v, Vlu l ~ v) => Gen (BottomLifted l) -> Gen v -> Gen n -> Spec 
seqDomainTests seqGen valGen numGen = do 
    -- the length of the empty list is 0
    it "0 ⊑ length(empty)" $ 
      fromJust (SeqDomain.length (SeqDomain.empty :: l)) `shouldSubsume` inject @n 0 

    -- injecting into the empty list makes the size 1
    it "∀ v : 1 ⊑ length (insertFront v empty)" $ 
      forAll valGen (\v -> 
        fromJust (SeqDomain.length $ fromJust (SeqDomain.insertFront v (SeqDomain.empty :: l))) `shouldSubsume` inject @n 1)
    it "∀ v : 1 ⊑ length (insertRear v empty)" $ 
      forAll valGen (\v -> 
        fromJust (SeqDomain.length $ fromJust (SeqDomain.insertRear v (SeqDomain.empty :: l))) `shouldSubsume` inject @n 1)

    -- inserting should increase the size by 1 
   --  it "∀ v, l : length (l) + 1 ⊑ length (insertFront v l)" $ 
   --    forAll (fmap (,) valGen <*> seqGen) (\(v, Value l) -> 
   --       errBot @n (SeqDomain.length (errBot @l (SeqDomain.insertFront v l))) `shouldSubsume` (errBot @n (SeqDomain.length l) `plus` inject @n 1))   
   --  it "∀ v, l : length (l) + 1 ⊑ length (insertRear v l)" $ 
   --    forAll (fmap (,) valGen <*> seqGen) (\(v, l) -> 
   --      fromJust (SeqDomain.length $ fromJust (SeqDomain.insertRear v l)) `shouldSubsume` fromJust (fromJust (SeqDomain.length l) `plus` inject @n 1))   
   --  it "∀ v, l, n : n < length (l) => length (l) + 1 ⊑ length (insert v l n)" $ 
   --    forAll (fmap (,,) valGen <*> seqGen <*> numGen) (\(v, l, n) -> 
   --      isTrue (fromJust (n `lt` fromJust (SeqDomain.length l))) ==>
   --      fromJust (SeqDomain.length $ fromJust (SeqDomain.insert n v l)) `shouldSubsume` fromJust (fromJust (SeqDomain.length l) `plus` inject @n 1))   

   --  -- inserting at the front should be returned by head
   --  it "∀ v, l : v ⊑ head (insertFront v l)" $ 
   --    forAll (fmap (,) valGen <*> seqGen) (\(v, l) -> 
   --      fromJust (SeqDomain.head $ fromJust (SeqDomain.insertFront v l)) `shouldSubsume` v)
   -- -- inserting at the rear should be returned by getting the last element
   --  it "∀ v, l : v ⊑ ref (length l) (insertRear v l)" $ 
   --    forAll (fmap (,) valGen <*> seqGen) (\(v, l) -> 
   --      fromJust (SeqDomain.ref (fromJust $ SeqDomain.length l) (fromJust $ SeqDomain.insertRear v l)) `shouldSubsume` v)   

   --  -- inserting/setting at an index should be returned by getting that index 
   --  it "∀ v, l, n : n < length (l) => v ⊑ ref n (insert n v l)" $   
   --    forAll (fmap (,,) valGen <*> seqGen <*> numGen) (\(v, l, n) -> 
   --      isTrue (fromJust (n `ge` inject @n 0) `Domain.and` fromJust (n `lt` fromJust (SeqDomain.length l))) ==>
   --      fromJust (SeqDomain.ref n (fromJust (SeqDomain.insert n v l))) `shouldSubsume` v)   


    -- slice? slicen op a tot b en checken wat op index i staat moet gesubsumed worden door originele lijst index a + i


-- Generators
instance (Arbitrary a) => Arbitrary (CP a) where
   arbitrary = oneof [pure Top, Constant <$> arbitrary]

instance (Arbitrary a, Eq a, Joinable a) => Arbitrary (CPList a) where 
   arbitrary = oneof [SeqDomain.fromList <$> listOf arbitrary, TopList <$> arbitrary]

instance (Arbitrary a) => Arbitrary (BottomLifted a) where 
   arbitrary = Value <$> arbitrary

-- Run tests

spec = do
   -- core lattice operation laws
   describe "laws for CP Int" $ latticeTests (arbitrary :: Gen (CP Integer))
   describe "laws for CP Bool" $ latticeTests (arbitrary :: Gen (CP Bool))
   describe "laws for CP Double" $ latticeTests (arbitrary :: Gen (CP Double))
   describe "laws for CP String" $ latticeTests (arbitrary :: Gen (CP String))
   describe "laws for CP Char" $ latticeTests (arbitrary :: Gen (CP Char))
   describe "laws for CPList (CP Integer)" $ latticeTests (arbitrary :: Gen (CPList (CP Integer)))
   -- bool lattice operations
   describe "bool domain for CP Bool" $ boolLattice (arbitrary :: Gen (CP Bool))
   -- number lattice operations
   describe "number domain for CP Integer" $ numDomainTests @_ @_ @(CP Bool) (arbitrary :: Gen (BottomLifted (CP Integer))) (arbitrary :: Gen Integer)
   describe "number domain for CP Double" $ numDomainTests @_ @_ @(CP Bool) (arbitrary :: Gen (BottomLifted (CP Double))) (arbitrary :: Gen Double)
   -- sequence domain operations
   describe "sequence domain for CPList (CP Integer)" $ seqDomainTests @_ @_ @_ @(CP Bool) @(CP String) @(CP Double) (arbitrary :: Gen (BottomLifted (CPList (CP Integer)))) (arbitrary :: Gen (CP Integer)) (arbitrary :: Gen (CP Integer))