-- | A set with a top representation
module Domain.TopSet(TopSet(..), map, member, foldr, foldrM) where

-- TODO: move to domain

import qualified Data.Foldable as Foldable
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Class (Domain (..))
import Domain.Core.BoolDomain.Class (BoolDomain (boolTop))
import Lattice.Class (TopLattice (top), Joinable (join), PartialOrder (..))
import Lattice.SetLattice ()
import Prelude hiding (map, foldr)

-- | A @TopSet@ is a set of lattice values @v@ or a top value of @v@
data TopSet t v = ConstantSet (Set v) | TopSet t
                deriving (Ord, Eq, Show)

-- | Similar as @Data.Set.map@
map :: (Ord b) => (a -> b) -> TopSet t a -> TopSet t b
map f (ConstantSet a) = ConstantSet $ Set.map f a
map _ (TopSet v) = TopSet v

-- | Checks whether the given element is a member of the set,
--  but returns an abstract boolean to deal with overapproximations
member :: (Ord a, BoolDomain b) => a -> TopSet t a -> b
member e (ConstantSet a) = inject $ Set.member e a
member _ _ = boolTop

-- | Folds a function @f@ over a @TopSet@. It doing so, it constrains the output of
-- the function @f@ to be an instance of @TopLattice@ so that the result of the
-- folding operation can be overapproximated.
foldr :: (TopLattice b) => (a -> b -> b) -> b -> TopSet t a -> b
foldr f z (ConstantSet a) = Set.foldr f z a
foldr _ _ (TopSet _) = top

-- | Same as @foldr@ but function @f@ is monadic in its return value
foldrM :: (Monad m, TopLattice b) => (a -> b -> m b) -> b -> TopSet t a -> m b
foldrM f z (ConstantSet a) = Foldable.foldrM f z a
foldrM _ _ (TopSet _) = return top


instance Ord a => Joinable (TopSet t a) where
  -- for correctness: t should be a singleton type
  join (TopSet t) _ = TopSet t
  join _ (TopSet t) = TopSet t
  join (ConstantSet a) (ConstantSet b) = ConstantSet $ join a b

instance Ord a => PartialOrder (TopSet t a) where
  leq _ (TopSet _) = True
  leq (TopSet _) _ = False
  leq (ConstantSet a) (ConstantSet b) = leq a b

instance TopLattice t => TopLattice (TopSet t a) where
  top = TopSet top

-- | Inject single values into a @TopSet@ domain
instance (Ord a, Eq t) => Domain (TopSet t a) a where
  inject = ConstantSet . Set.singleton

