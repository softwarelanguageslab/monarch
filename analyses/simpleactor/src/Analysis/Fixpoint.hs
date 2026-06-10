-- Naive fixpoint algorithms
module Analysis.Fixpoint(lfp, lfpTraced, lift) where

import Data.Set (Set)
import RIO (foldMapM, hFlush, stdout)
import qualified Data.Set as Set
import Control.Monad.IO.Class
import qualified Debug.Trace as Debug

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
lift :: (MonadIO m, Ord a) => (a -> m (Set a)) -> Set a -> m (Set a)
lift f s = do 
    liftIO (Debug.traceIO $ "LIFT-PRE: set size in " ++  show (Set.size s))
    result <- Set.union s <$> foldMapM (\(v, i) -> liftIO (putStr (show i ++ " ") >> hFlush stdout) >> f v) (Set.fromList $ zip (Set.toList s) [(0 :: Int)..])
    liftIO (Debug.traceIO $ "LIFT: set size in " ++  show (Set.size s) ++ " set size out " ++ show (Set.size result))
    return result

