{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
module MailboxSpec(spec) where

import Test.Hspec
import Test.QuickCheck
import Test.HUnit
import Analysis.Actors.Mailbox
import qualified Analysis.Actors.Mailbox as MB
import Analysis.Actors.Mailbox.Graph
import Data.Set
import qualified Data.Set as Set
import Data.Kind
import Domain.Core.BoolDomain hiding (not)
import Data.Function
import Lattice.ConstantPropagationLattice (CP)
import Lattice.BottomLiftedLattice (BottomLifted)
import Debug.Trace (traceShowId)


-- | Generic graph mailbox tests that should work regardless of
-- the mailbox abstraction.
graphTests :: forall (g :: Type -> Type) . (forall a . Eq a => Eq (g a), forall a . (Ord a, Eq a) => Mailbox (g a) a, forall a . Show a => Show (g a)) => String -> Spec
graphTests nam =
  describe nam $ do
    it "should never be empty after enqueing a message" $
      forAll (arbitrary :: Gen Int) $ \i -> enqueue @(g Int) i (MB.empty @_ @Int) `shouldNotBe` (MB.empty @_ @Int)
    it "should contain the enqueued message" $
      forAll (arbitrary :: Gen Int) $ \i -> hasMessage i (enqueue @(g Int) i (MB.empty @_ @Int))
    it "empty mailboxes should contain no messages" $
      forAll (arbitrary :: Gen Int) $ \i -> not (hasMessage i (MB.empty @(g Int) @Int))
    it "should return false or 'boolTop' for hasMessage after dequeuing that message" $
      forAll (arbitrary :: Gen Int) $ \i ->
           enqueue @(g Int) @Int i (MB.empty @_ @Int)
         & dequeue
         & Set.map snd
         & all (isFalse @(BottomLifted (CP Bool)) . hasMessage' i)
    it "should return an empty set after dequeing from an empty mailbox" $
      dequeue @(g Int) @Int (MB.empty @_ @Int) `shouldBe` Set.empty
    it "should return the enqueued message after dequeing it" $
      forAll (arbitrary :: Gen Int) $ \i ->
           enqueue @(g Int) @Int i (MB.empty @_ @Int)
         & dequeue
         & Set.map fst
         & elem i

spec :: Spec
spec = do
  graphTests @Set "the set mailbox abstraction"
  graphTests @GraphMailbox "the graph mailbox abstraction"
