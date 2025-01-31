-- | Fixpoint for ASE's small-step machines
{-# LANGUAGE Strict #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
module ASE.Fixpoint where

import Lattice.Class
import RIO hiding (join)
import qualified RIO.Set as Set
import System.Console.ANSI

-- | Type class infrastructure for fixpoint values
class FixpointValue v where
   -- | Checks whenever a fixpoint has been reached for the given value 
   -- compared with the previous value
   isFix :: v -- ^ previous value   
         -> v -- ^ current value 
         -> Bool
   -- | Filters out values that are already subsumed by the previous value
   filterSubsumption :: v -- ^ previous value
                     -> v -- ^ current value 
                     -> v
   -- | Returns true if the partial state has a successor
   hasSuccessor :: v -> Bool
   -- | Size of the set of seen states
   size :: v -> Int

-- | Generic (inefficient) instance
instance {-# OVERLAPPABLE #-} (Joinable a, PartialOrder a) => FixpointValue a where
   -- if the previous one subsumes the new one then no changes were made
   isFix = subsumes
   -- no filtering possible in this simple case
   filterSubsumption = const id
   -- size cannot be computed in the general case
   size = const (-1)
   -- No general way to determine whether a value 
   -- represents successors
   hasSuccessor = const True

-- | Trivial instance for sets of successor states
instance (Ord a, Eq a) => FixpointValue (Set a) where
   isFix a b = Set.size a == Set.size b
   size = Set.size
   filterSubsumption prv = Set.filter (not . (`Set.member` prv))
   hasSuccessor = (/= Set.empty)

-- | Collecting semantics for a given small-step relation
collect :: (Monad m, MonadIO m, Ord a) => (a -> m (Set a)) -> Set a -> m (Set a)
collect f = foldM (\r v -> r `seq` Set.union <$> f v <*> pure r) Set.empty

-- | Compute the fixpoint of the given monadic function.
--
-- The algorithm assumes that the passed function @f@ always 
-- returns the states that have to be (re-)analyzed. As such 
-- it can be used for both a ModF computation as well as 
-- a regular AAM style seen-states computation.
compute :: (Monad m, MonadIO m, BottomLattice a, Joinable a, FixpointValue a) => a -> (a -> m a) -> m a
compute initial f = loop initial initial
   where loop nxt acc = do
            -- compute the successor states
            nxt' <- filterSubsumption acc <$> f nxt
            let acc' = nxt' `seq` join acc nxt'
            liftIO (putStrLn $ "current seen state size = " ++ show (size acc'))
            if not (hasSuccessor nxt') || isFix acc acc'
            -- if the accumulator no longer changes, return the 
            -- result of the computation
            then return acc'
            -- otherwise continue with the successor states
            else loop nxt' acc'
