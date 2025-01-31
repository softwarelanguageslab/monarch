{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Lattice.Class (
   Joinable(..), 
   TopLattice(..),
   WidenLattice(..), 
   BottomLattice(..),
   PartialOrder(..),
   Lattice,
   Meetable(..), 
   justOrBot, 
   overlap,
   joins,
   joins1,
   joinMap,
   joinMapM,
) where

import Data.Void
import Data.Foldable (foldrM)

------------------------------------------------------------
--- Joinable / JoinLattice
------------------------------------------------------------

class Joinable v where
   join :: v -> v -> v


-- | Denotes a class of values `v` that 
-- have a partial order `leq` between them
class PartialOrder v where 
   -- | Returns true if the first argument 
   -- is smaller or equal to the second
   leq :: v -> v -> Bool
   leq = flip subsumes
   -- | Subsumes is the same as `leq` but 
   -- with its arguments flipped
   subsumes :: v -> v -> Bool
   subsumes = flip leq
   {-# MINIMAL leq | subsumes #-}


joins :: (Joinable v, BottomLattice v, Foldable t) => t v -> v
joins = foldr join bottom

joins1 :: (Joinable v, Foldable t) => t v -> v
joins1 = foldr1 join 

-- | Like foldMap, folding all mapped values using a join
joinMap :: (Joinable v, BottomLattice v, Foldable t) => (a -> v) -> t a -> v  
joinMap f = foldr (join . f) bottom 

-- | A version of @joinMap@ that is monadic in its return value
joinMapM :: (Monad m, Joinable v, BottomLattice v, Foldable t) => (a -> m v) -> t a -> m v
joinMapM f = foldrM (\x v -> join <$> (f x) <*> return v) bottom

-- | A lattice with a top element
class TopLattice v where 
   -- | Returns the top value of the lattice,
   -- such that forall v, `subsumes top v` is true.
   top :: v

-- | A lattice with a bottom element
class BottomLattice v where 
   -- | Returns the bottom value of the lattice
   -- such that forall v, `subsumes v bottom` is true
   bottom :: v

-- | A type alias for convenience, combines
-- the constraints that we normally need throughout 
-- our analyses
class (BottomLattice v, PartialOrder v, Joinable v, Eq v) => Lattice v
instance (BottomLattice v, PartialOrder v, Joinable v, Eq v) => Lattice v

-- | All values that are joinable and implement `eq` are also 
-- partially ordered
instance {-# OVERLAPPABLE #-} (Eq v, Joinable v) => (PartialOrder v) where
   leq a b =
      join a b == b

-- | Returns the value in `Maybe a` if it is `Just` otherwise `bottom` 
justOrBot :: BottomLattice a => Maybe a -> a
justOrBot (Just v) = v
justOrBot _ = bottom

------------------------------------------------------------
--- WidenLattice
------------------------------------------------------------

class (Joinable v) => WidenLattice v where 
   -- | A widening operator, can be implemented
   -- for infinite domains. 
   widen :: v   -- ^ left value 
         -> v   -- ^ right value 
         -> Int -- ^ number of iterations 
         -> v   -- ^ widened value

------------------------------------------------------------
--- Meetable
------------------------------------------------------------

class Meetable v where
   meet :: v -> v -> v

overlap :: (Meetable v, BottomLattice v, Eq v) => v -> v -> Bool
overlap v1 v2 = v1 `meet` v2 /= bottom 

------------------------------------------------------------
-- Misc instances
------------------------------------------------------------

instance Joinable Void where 
   join = absurd
-- | Void cannot have a bottom value since it does 
-- not have any inhabitants. This instance is here 
-- to satisfy unreachable code paths but it is inherentely unsafe!
instance BottomLattice Void where 
   bottom = error "void does not have a bottom"
instance Meetable Void where  
   meet = absurd

------------------------------------------------------------
-- Useful correspondances to other algebraic structures
------------------------------------------------------------

-- |  A join lattice is also a @Semigroup@
instance  {-# OVERLAPPABLE #-} (Joinable a) => Semigroup a where   
   (<>) = join
 
-- | A structure with a join and a bottom is also a @Monoid@
instance {-# OVERLAPPABLE #-} (Joinable a, BottomLattice a) => Monoid a where    
   mempty = bottom
