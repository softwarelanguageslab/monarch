{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
-- | Shared semantics for different languages
module Analysis.Semantics(evalSequence) where 

import Analysis.Monad

evalSequence :: forall m v e . (EvalM m v e) => [e] -> m v
evalSequence []  = error "evalSequence: sequence cannot be empty"
evalSequence [x] = eval x
evalSequence (x:xs) = eval @_ @v x >> evalSequence xs
