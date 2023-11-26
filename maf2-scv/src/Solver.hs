module Solver(FormulaSolver(..)) where

class Monad m => FormulaSolver m where 
   -- | Initialize the solver and sets a checkpoint
   -- after the code passed as part of the setup.
   --
   -- This can be used to initialize certain predicates
   -- and functions a single time and keep them around
   -- for the entire analysis.
   setup :: String -> m ()
   -- | Solve the given SMTLib script. Returns whether
   -- there is some model for the given assertions in the SMTLib 
   -- script by outputting SMTLib compatible output.
   solve :: String -> m String
   
