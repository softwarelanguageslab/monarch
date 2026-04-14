module Analysis.Fixpoint (lfp, lfpTraced) where

-- | Naive equality based fixpoint computation
lfp :: (Monad m, Eq a) => (a -> m a) -> a -> m a
lfp f prev = do
  next <- f prev
  if next /= prev then lfp f next else return prev

lfpTraced :: (Monad m, Eq a) => (a -> m a) -> a -> m (a, [a])
lfpTraced f = flip go []
  where go prev' acc = do
          next <- f prev'
          if next /= prev' then go next (prev' : acc) else return (prev', acc)

