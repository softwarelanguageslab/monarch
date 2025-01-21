-- | Fixpoint for ASE's small-step machines
module ASE.Fixpoint where 

import Lattice.Class
import RIO hiding (join)


-- | Collecting semantics for a given small-step relation
collect :: (Monad m, Foldable t, Monoid (t a), Joinable (t a)) => (a -> m (t a)) -> t a -> m (t a)
collect = foldMapM

-- | Compute the fixpoint of the given monadic function.
--
-- The algorithm assumes that the passed function @f@ always 
-- returns the states that have to be (re-)analyzed. As such 
-- it can be used for both a ModF computation as well as 
-- a regular AAM style seen-states computation.
compute :: (Monad m, BottomLattice a, Joinable a, PartialOrder a) => a -> (a -> m a) -> m a
compute initial f = loop initial initial
   where loop nxt acc = do 
            -- compute the successor states
            nxt' <- f nxt 
            let acc' = join acc nxt'
            if subsumes acc acc'
            -- if the accumulator no longer changes, return the 
            -- result of the computation
            then (return acc')
            -- otherwise continue with the successor states
            else loop nxt' acc'
