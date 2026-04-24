-- Naive fixpoint algorithms
module Analysis.Fixpoint(lfp, lfpTraced, lift) where

import Data.Set (Set)
import RIO (foldMapM)

-- | Naive equality based fixpoint computation
lfp :: (Monad m, Eq a) => (a -> m a) -> a -> m a
lfp f prev = do
  next <- f prev
  if next /= prev then lfp f next else return prev

-- | If the values of the fixpoint computations are sets, 
-- the successors can be computed in parallel.


lfpTraced :: (Monad m, Eq a) => (a -> m a) -> a -> m (a, [a])
lfpTraced f = flip go []
  where go prev' acc = do
          next <- f prev'
          if next /= prev' then go next (prev' : acc) else return (prev', acc)

-- | Lift a function 'a -> Set a' to 'Set a -> Set a'.
lift :: (Monad m, Ord a) => (a -> m (Set a)) -> Set a -> m (Set a)
lift = foldMapM

