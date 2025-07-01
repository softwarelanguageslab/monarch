{-# LANGUAGE AllowAmbiguousTypes #-}
-- | A bounded list abstraction abstracts lists of bounded length. 
module Domain.Core.SeqDomain.BoundedList(BoundedList(elements), ref, fromList) where

import qualified Prelude hiding (lookup)
import Lattice.Class
import Prelude hiding (length)
import Lattice.IntervalLattice 
import Domain.Core.NumberDomain.Class
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.Monad.AbstractM
import Data.List.Extra (zipWithLongest)
import Control.Monad.Join
import Data.Maybe
import Domain.Class

maybeBot :: BottomLattice a => Maybe a -> a
maybeBot = fromMaybe bottom

data BoundedList a = BoundedList {
   length    :: Interval Int,
   elements  :: [a]
} deriving (Eq, Ord, Show)

instance (BottomLattice a, Joinable a) => Joinable (BoundedList a) where
   join l1 l2 = BoundedList {
      length    = join (length l1) (length l2),
      elements  = zipWithLongest (\a b -> join (maybeBot a) (maybeBot b)) (elements l1) (elements l2)
   }

instance (BottomLattice a) => BottomLattice (BoundedList a) where   
   bottom = BoundedList bottom []

ref :: forall bln i a m . (NumberDomain i bln, Domain i Int, Joinable a, BottomLattice a, AbstractM m) => BoundedList a -> i -> m a
ref (BoundedList length elements) i
      | length == bottom = mbottom
      | otherwise        = rangedRef length
   where rangedRef (Interval (Bounded l1) (Bounded u1)) = 
            let values = mjoins (zipWith lookup [0..u1] elements)
            in conds @bln
               [(lt i (inject l1),  values),
                (gt i (inject u1), escape IndexOutOfBounds)]
               (mjoin values (escape IndexOutOfBounds))
         rangedRef _ = error "unreachable" -- this case is unreachable since we never make unbounded lengths
         lookup n e = cond (eq @_ @bln i (inject n)) (return e) (return bottom)

fromList :: [a] -> BoundedList a
fromList as = BoundedList (inject (Prelude.length as)) as
