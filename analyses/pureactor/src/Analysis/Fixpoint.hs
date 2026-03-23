module Analysis.Fixpoint (lfp) where

-- | Naive equality based fixpoint computation
lfp :: Eq a => (a -> a) -> a -> a
lfp f prev =
  let next = f prev
  in if next /= prev then lfp f next else prev

