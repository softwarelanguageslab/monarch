module Control.Monad.Cond (condM, unlessM, whenM, otherwiseM) where

import Control.Monad hiding (guard)

-- | A conditional where the boolean expressions are represented 
-- by a monadic computation
condM :: Monad m => [(m Bool, m a)] -> m a
condM [] = error "no satisfiable branch found :("
condM ((guard, action):rest) = guard >>= (\v -> if v then action else condM rest)

-- | A version of `unless` where the boolean may come from a monadic
-- computation
unlessM :: Monad m => m Bool -> m () -> m ()
unlessM mb m  = mb >>= (`unless` m)

-- | A version of `when` where the boolean may come from a mondic
-- computation
whenM :: Monad m => m Bool -> m () -> m ()
whenM mb m = mb >>= (`when` m)

otherwiseM :: Monad m => m Bool 
otherwiseM = return True
