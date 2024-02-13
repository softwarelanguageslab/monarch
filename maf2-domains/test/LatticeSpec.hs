{-# OPTIONS_GHC -fno-warn-orphans -fno-warn-missing-signatures #-}
{-# LANGUAGE TypeApplications, FlexibleContexts, ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Avoid lambda using `infix`" #-}
module LatticeSpec(spec) where

import Domain hiding (Bottom)
import Lattice.ConstantPropagationLattice
import Lattice.Class
import Test.QuickCheck
import Test.Hspec
import Control.Applicative (Applicative(liftA2))
import Control.Monad.Join
import Control.Monad.DomainError

-- Utilities

pairs :: Applicative m => m x ->  m (x, x)
pairs a = fmap (,) a <*> a

triples :: Applicative m => m x ->  m (x, x, x)
triples m = fmap (,,) m <*> m <*> m

-- Testing instance for `DomainError`


errBot :: JoinLattice a => Maybe a -> a
errBot (Just v) = v
errBot _ = bottom

-- Properties

latticeTests :: (Show v, Eq v, JoinLattice v) => Gen v -> Spec
latticeTests latGen = do
   describe "join" $ do
      -- join is commutative
      it "∀ a, b: a ⊔ b = b ⊔ a" $
         forAll (pairs latGen) (\(a,b) -> join a b == join b a)

      -- join is associative
      it "∀ a, b, (a ⊔ b) ⊔ c = a ⊔ (b ⊔ c)" $
         forAll (triples latGen) (\(a, b, c) -> join (join a b) c == join a (join c b))

      -- join is idempotent
      it "∀ a, a ⊔ a = a" $
         forAll latGen (\a -> join a a == a)

      -- join is compatible with subsumption 
      it "∀ a, b: a ⊑ b → a ⊔ b = b" $
         forAll (pairs latGen) (\(a, b) -> subsumes b a ==> (join a b == b))

   describe "subsumes" $ do
      -- bottom is subsumed by everything 
      it "∀v : ⊥ ⊑ v" $
         forAll latGen (\v -> subsumes v bottom)

boolLattice :: forall b . (Show b, Eq b, BoolDomain b) => Gen b -> Spec
boolLattice boolGen = do
   it "isTrue(inject(true)) ∧ isFalse(inject(false))" $
     isTrue (inject True :: b) && isFalse (inject False :: b)

   it "isTrue(⊤) ∧ isFalse(⊤)" $
     isTrue (boolTop :: b) && isFalse (boolTop :: b)

   it "¬isTrue(⊥) ∧ ¬isFalse(⊥)" $
     Prelude.not (isTrue (bottom :: b)) && Prelude.not (isFalse (bottom :: b))

   it "∀ a: isTrue(a) ⇒ isFalse(not(a)) ∧ isFalse(a) ⇒ isTrue(not(a))" $
      forAll boolGen (\a ->
         (isTrue a ==> isFalse (Domain.not a)) .&. (isFalse a ==> isTrue (Domain.not a)))

   it "∀ a: not(not(a)) == a" $
      forAll boolGen (\a -> Domain.not (Domain.not a) == a)


numDomainTests :: forall n c . (Show n, Eq n, NumberDomain n, Domain n c, Num c, Show c) => Gen n -> Gen c ->  Spec
numDomainTests numGen concNum = do
   -- plus preserves bottom
   it "∀ a : plus(a, ⊥) = plus(a, ⊥) = ⊥" $
      forAll numGen (\a -> plus bottom a == Just bottom && Just bottom == plus a bottom)
   -- plus is monotone
   it "∀ a,b,c : b ⊑ c → plus(a, b) ⊑ plus(a, c)" $
      forAll (triples numGen) (\(a, b, c) -> subsumes c b ==> errBot (plus a c) `subsumes` errBot (plus a b))
   -- plus is sound 
   it "∀ a, b: inject(a + b) ⊑ plus(inject(a), inject(b))" $
      forAll (pairs concNum) (\(a, b) -> subsumes (errBot $ plus (inject @n a) (inject b)) (inject @n (a + b)))
   -- plus is associative
   it "∀ a, b, c: plus(a, plus(b, c)) == plus(plus(a, b), c)" $
      forAll (triples numGen) (\(a, b, c) -> errBot (plus a (errBot (plus b c))) == errBot (plus (errBot (plus a b)) c))


   -- minus preserves bottom
   it "∀ a : minus(a, ⊥) = minus(a, ⊥) = ⊥" $
      forAll numGen (\a -> minus bottom a == Just bottom && Just bottom == minus a bottom)
    -- plus is monotone
   it "∀ a,b,c : b ⊑ c → minus(a, b) ⊑ minus(a, c)" $
      forAll (triples numGen) (\(a, b, c) -> subsumes c b ==> errBot (minus a c) `subsumes` errBot (minus a b))
   -- minus is sound 
   it "∀ a, b: inject(a - b) ⊑ minus(inject(a), inject(b))" $
      forAll (pairs concNum) (\(a, b) -> subsumes (errBot $ minus (inject @n a) (inject b)) (inject @n (a - b)))


  -- times preserves bottom
   it "∀ a : times(a, ⊥) = times(a, ⊥) = ⊥" $
      forAll numGen (\a -> times bottom a == Just bottom && Just bottom == times a bottom)
    -- plus is monotone
   it "∀ a,b,c : b ⊑ c → times(a, b) ⊑ times(a, c)" $
      forAll (triples numGen) (\(a, b, c) -> subsumes c b ==> errBot (times a c) `subsumes` errBot (times a b))
   -- times is sound 
   it "∀ a, b: inject(a * b) ⊑ times(inject(a), inject(b))" $
      forAll (pairs concNum) (\(a, b) -> subsumes (errBot $ times (inject @n a) (inject b)) (inject @n (a * b)))

-- Soundness for dictionaries

-- Generators

instance (Arbitrary a) => Arbitrary (CP a) where
   arbitrary = oneof [pure Bottom, pure Top, Constant <$> arbitrary]

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
   -- describe "number domain for cpDouble" $ numDomainTests (arbitrary :: Gen (CP Double)) arbitrary
