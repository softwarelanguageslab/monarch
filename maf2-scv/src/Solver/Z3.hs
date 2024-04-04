-- | The Z3 solver
module Solver.Z3(Z3Handle, terminateZ3Solver, runZ3Solver)  where

import System.Process
import System.IO
import Text.Printf
import Control.Monad.State hiding (mzero)
import Data.Maybe

import Solver
import Symbolic.AST
import Symbolic.SMT
import Control.Monad.Join
import Debug.Trace

data Z3SolverState = Z3SolverState {
   -- | Cached setup-code
   setupCode :: String,
   -- | The (stdin, write) input handle 
   inputHandle   :: Handle,
   -- | The (std out, read) output handle 
   outputHandle  :: Handle,
   -- | Handle to the spawned process of Z3
   processHandle :: ProcessHandle
}

-- | Spawns the Z3 process assumes the Z3 binary is on the path.
-- 
-- The result is the Z3SolverState that can be injected into 
-- the state monad.
spawnZ3 :: String -- ^ setup SMTLib code
        -> IO Z3SolverState
spawnZ3 setupCode = do
   (Just hin, Just hout, _, handle) <- createProcess (proc "z3" ["-in"]) { std_in = CreatePipe, std_out = CreatePipe, std_err = Inherit }
   return Z3SolverState {
      setupCode = setupCode,
      inputHandle = hin,
      outputHandle = hout,
      processHandle = handle
   }

-- | Opaque type to represent the running Z3 process
newtype Z3Handle = Z3Handle { getZ3Handle :: ProcessHandle }

-- | Termoinate the solver using the Z3 handle
terminateZ3Solver :: Z3Handle -> IO ()
terminateZ3Solver = terminateProcess . getZ3Handle


-- | A monad in which the Z3 solver can be executed.
--
-- To this end, the monad keeps track of an input and output 
-- stream handle that is connected to a running Z3 process.
--
-- Where the handle to become inactive (due to the process being killed)
-- the Z3 process is spawned again and its setup code reevaluted.
newtype Z3Solver a = Z3Solver (StateT (Maybe Z3SolverState) IO a)
                        deriving (Applicative, Functor, Monad, MonadIO, MonadState (Maybe Z3SolverState))

-- | Terminate the current instance of the solver
terminateZ3 :: Z3Solver ()
terminateZ3 =
   gets (processHandle . fromJust) >>= Z3Solver . lift . terminateProcess

sentinel :: String
sentinel =
   "\"-----------------------------------------------------------\""

-- | Put out the sentinel to the Z3 process.
-- once the sentinel has been found in the output of the process
-- we known that we can stop reading
putSentinel :: Z3Solver ()
putSentinel =
   gets (inputHandle . fromJust) >>=
      Z3Solver . lift . flip hPutStrLn (printf "(display %s)" sentinel)


-- | Read until sentinel ignoring the output of  the sentinel
-- itself.
readUntilSentinel :: Z3Solver String
readUntilSentinel = do
   hout <- gets (outputHandle . fromJust)
   line <- Z3Solver $ lift $ hGetLine hout
   if line == sentinel then
      return []
   else do
      rest <- readUntilSentinel
      return (line ++ rest)

-- | Evaluate the given script 
-- and read the answer from the output of the Z3 process.
eval :: String -> Z3Solver String
eval query = do
   -- write the query to stdin of the attached process
   hin <- gets (inputHandle . fromJust)
   Z3Solver $ lift $ hPutStrLn hin query
   putSentinel
   Z3Solver $ lift $ hFlush hin
   readUntilSentinel

-- | Creates a checkpoint at the current point in evaluation
checkpoint :: Z3Solver ()
checkpoint = void $ eval "(push 1)"

-- | Restures the solver the last checkpoint
restoreCheckpoint :: Z3Solver ()
restoreCheckpoint =
   void $ eval "(pop 1)" >> checkpoint

-- | Run the Z3Solver
runZ3Solver :: Z3Solver a -> IO a
runZ3Solver (Z3Solver m) = evalStateT m Nothing

instance {-# OVERLAPPING #-} FormulaSolver Z3Solver where
   setup setupCode = do
      spawned <- gets isJust
      -- if there is already an active instance of Z3 
      -- terminate it and spawn a new one.
      when spawned terminateZ3
      -- spawn the new instance
      Z3Solver (lift $ spawnZ3 setupCode) >>= (put . Just)
      -- evaluate the setup script
      _ <- eval setupCode
      -- store this as a checkpoint to return to in the 
      -- beginning of a solve script
      checkpoint

   solve script   = do
      restoreCheckpoint
      -- Declare all variables as constants
      let names = variables script
      -- evaluate the mall in the solver
      mapM_ (eval . printf "(declare-const %s V)") names
      -- Evaluate all the assertions, and ignore any errors
      _ <- eval (printf "(assert %s)" (translate script))
      -- Check whether the model is satisfiable
      parseResult <$> eval "(check-sat)"
