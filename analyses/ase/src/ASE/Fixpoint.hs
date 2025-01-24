-- | Fixpoint for ASE's small-step machines
module ASE.Fixpoint where 

import Lattice.Class
import RIO hiding (join)
import qualified RIO.Set as Set


-- | Collecting semantics for a given small-step relation
collect :: (Monad m, Ord a) => (a -> m (Set a)) -> Set a -> m (Set a)
collect f s = foldM (\r v -> Set.union <$> (f v) <*> pure r) Set.empty (Set.toList s)

-- | Compute the fixpoint of the given monadic function.
--
-- The algorithm assumes that the passed function @f@ always 
-- returns the states that have to be (re-)analyzed. As such 
-- it can be used for both a ModF computation as well as 
-- a regular AAM style seen-states computation.
compute :: (Monad m, MonadIO m, BottomLattice a, Joinable a, PartialOrder a, a ~ Set b, Ord b) => a -> (a -> m a) -> m a
compute initial f = loop initial initial
   where loop nxt acc = do 
            -- compute the successor states
            nxt' <- Set.filter (not . flip Set.member acc) <$> f nxt 
            let acc' = join acc nxt'
            liftIO (putStrLn $ "current seen state size = " ++ (show $ Set.size acc'))
            if Set.size acc == Set.size acc' 
            -- if the accumulator no longer changes, return the 
            -- result of the computation
            then (return acc')
            -- otherwise continue with the successor states
            else loop nxt' acc'
