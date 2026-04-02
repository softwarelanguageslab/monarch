module Analysis.Fixpoint (lfp, lfpTraced) where

-- | Naive equality based fixpoint computation
lfp :: Eq a => (a -> a) -> a -> a
lfp f prev =
  let next = f prev
  in if next /= prev then lfp f next else prev

lfpTraced :: Eq a => (a -> a) -> a -> (a, [a])
lfpTraced f = flip go []
  where go prev' acc =
          let next = f prev'
          in if next /= prev' then go next (prev' : acc) else (prev', acc)

