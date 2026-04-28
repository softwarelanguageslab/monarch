{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module MailboxSpec(spec) where

import Test.Hspec
import Test.QuickCheck
import Analysis.Actors.Mailbox
import qualified Analysis.Actors.Mailbox as MB
import Analysis.Actors.Mailbox.Graph
import Data.Set
import qualified Data.Set as Set
import Data.Kind
import Data.Function

-- | Newtype wrapper around 'Graph' so it can be used as a higher-kinded type argument
-- in 'graphTests'. Type synonyms cannot be partially applied, so this wrapper is needed.
newtype GraphMailbox a = GraphMailbox { unGraphMailbox :: Graph a }
   deriving (Eq, Ord, Show)

instance (Eq a, Ord a) => Mailbox (GraphMailbox a) a where
  empty = GraphMailbox (MB.empty @(Graph a) @a)
  enqueue msg (GraphMailbox g) = GraphMailbox (MB.enqueue msg g)
  dequeue (GraphMailbox g) = Set.map (fmap GraphMailbox) (MB.dequeue g)
  peek (GraphMailbox g) = MB.peek g
  hasMessage' msg (GraphMailbox g) = MB.hasMessage' msg g
  mapMessages f (GraphMailbox g) = GraphMailbox (MB.mapMessages f g)


-- | Generic graph mailbox tests that should work regardless of
-- the mailbox abstraction.
graphTests :: forall (g :: Type -> Type) . (forall a . Eq a => Eq (g a), forall a . (Ord a, Eq a) => Mailbox (g a) a, forall a . Show a => Show (g a)) => String -> Spec
graphTests nam =
  describe nam $ do
    it "should never be empty after enqueing a message" $
      forAll (arbitrary :: Gen Int) $ \i -> enqueue @(g Int) i (MB.empty @_ @Int) `shouldNotBe` (MB.empty @_ @Int)
    -- TODO: implement 'hasMessage' in the mailbox abstraction
    -- it "should contain the enqueued message" $
    --   forAll (arbitrary :: Gen Int) $ \i -> hasMessage i (enqueue @(g Int) i (MB.empty @_ @Int))
    -- it "empty mailboxes should contain no messages" $
    --   forAll (arbitrary :: Gen Int) $ \i -> not (hasMessage i (MB.empty @(g Int) @Int))
    -- it "should return false or 'boolTop' for hasMessage after dequeuing that message" $
    --   forAll (arbitrary :: Gen Int) $ \i ->
    --        enqueue @(g Int) @Int i (MB.empty @_ @Int)
    --      & dequeue
    --      & Set.map snd
    --      & all (isFalse @(BottomLifted (CP Bool)) . hasMessage' i)
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
