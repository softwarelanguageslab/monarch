{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
-- | The Z3 solver
module Solver.Z3(Z3Solver, runZ3Solver, runZ3SolverWithSetup)  where

import System.Process
import System.IO
import Text.Printf
import Control.Monad.State hiding (mzero)
import Data.Maybe

import Solver
import Symbolic.SMT
import qualified Syntax.Scheme.Parser as SExp
import Data.Functor.Classes (readData)
import Data.Either (fromRight)
import Data.Functor

data Z3SolverState = Z3SolverState {
   -- | Buffer of output from Z3
   buffer :: [String],
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
spawnZ3 setupCode' = do
   (Just hin, Just hout, _, handle) <- createProcess (proc "z3" ["-in"]) { std_in = CreatePipe, std_out = CreatePipe, std_err = Inherit }
   return Z3SolverState {
      buffer = [],
      setupCode = setupCode',
      inputHandle = hin,
      outputHandle = hout,
      processHandle = handle
   }


-- | A monad in which the Z3 solver can be executed.
--
-- To this end, the monad keeps track of an input and output 
-- stream handle that is connected to a running Z3 process.
--
-- Where the handle to become inactive (due to the process being killed)
-- the Z3 process is spawned again and its setup code reevaluted.
newtype Z3Solver i a = Z3Solver  { getZ3Solver :: StateT (Maybe Z3SolverState) IO a }
                        deriving (Applicative, Functor, Monad, MonadState (Maybe Z3SolverState), MonadIO)

-- | Terminate the current instance of the solver
terminateZ3 :: Z3Solver i ()
terminateZ3 =
   gets (processHandle . fromJust) >>= Z3Solver . lift . terminateProcess

-- | Read until a valid datum (from the S-expressions) is found 
-- in the input handle. Reads line-by-line.
readDatum :: Z3Solver i SExp.SExp
readDatum = do
   hout <- gets (outputHandle . fromJust)
   line <- liftIO $ hGetLine hout
   liftIO $ print line
   currentBuffer <- modify (\(Just st) -> Just $ st { buffer = line : buffer st }) >> gets (buffer . fromJust)
   case SExp.parseDatum "z3-in" (concat $ reverse currentBuffer) of 
      -- continue reading lines until a valid datum is found
      Left _ -> readDatum
      -- otherwise return the result
      Right (result, rest) -> do
         modify (\(Just st) -> Just $ st { buffer = [rest] }) 
         liftIO $ print result
         return result

-- | Ensure that the given S-expression is a symbol with the given contents
ensureAtom :: String -> SExp.SExp -> Z3Solver i ()
ensureAtom expected (SExp.Atom nam _) 
   | nam == expected = return () 
   | otherwise = error $ "expected " ++ expected ++ " but got " ++ nam
ensureAtom expected expr = 
   error $ "expected atom with contents " ++ expected ++ " but got " ++ show expr ++ " instead"

-- | Assumes that the given S-expression is an atom and returns its name 
-- otherwise results in an error.
fromAtom :: SExp.SExp -> Z3Solver i String
fromAtom (SExp.Atom name _) = return name 
fromAtom expr = error $ "not an artom " ++ show expr

-- | Evaluate the given script 
-- and read the answer from the output of the Z3 process.
eval :: String -> Z3Solver i SExp.SExp
eval query = do
   -- write the query to stdin of the attached process
   hin <- gets (inputHandle . fromJust)
   Z3Solver $ lift $ hPutStrLn hin query
   Z3Solver $ lift $ hFlush hin
   readDatum

-- | Runs the command and ensures that it is successfully executed, 
-- but requires that there is no other output. (assumes the :print-success option)
command :: String -> Z3Solver i () 
command = eval >=> ensureAtom "success"

-- | Creates a checkpoint at the current point in evaluation
checkpoint :: Z3Solver i ()
checkpoint = command "(push 1)"

-- | Restores the solver the last checkpoint
restoreCheckpoint :: Z3Solver i ()
restoreCheckpoint =
   command "(pop 1)" >> checkpoint

-- | Run the Z3Solver
runZ3Solver :: Z3Solver i a -> IO a
runZ3Solver (Z3Solver m) = evalStateT m Nothing

runZ3SolverWithSetup :: Show i => Ord i => String -> Z3Solver i a -> IO a
runZ3SolverWithSetup setupCode' m = evalStateT (getZ3Solver $ setup setupCode' >> m) Nothing

-- TODO: ShowableVariable is no longer used remove
instance {-# OVERLAPPING #-} (Show i, Ord i) => FormulaSolver i (Z3Solver i) where
   setup setupCode' = do
      spawned <- gets isJust
      -- if there is already an active instance of Z3 
      -- terminate it and spawn a new one.
      when spawned terminateZ3
      -- spawn the new instance
      Z3Solver (lift $ spawnZ3 setupCode') >>= (put . Just)
      -- evaluate the setup script
      _ <- eval setupCode'
      -- store this as a checkpoint to return to in the 
      -- beginning of a solve script
      checkpoint

   getModel = eval "(get-model)" <&> (fromRight (error "could not parse model") . parseModel)

   solve count script   = do
      restoreCheckpoint
      -- Declare all variables as constants
      let (translatedScript, names, freshs) = translate count script
      -- evaluate the mall in the solver
      mapM_ (eval . printf "(declare-const %s V)" ) names
      mapM_ (eval . printf "(declare-const %s V)" ) freshs
      -- Evaluate all the assertions, and ignore any errors
      _ <- eval (printf "(assert %s)" translatedScript)
      -- Check whether the model is satisfiable
      result <- parseResult <$> (fromAtom =<< eval "(check-sat)")
      Z3Solver $ liftIO (putStrLn $ "solved script " ++ translatedScript ++ " with result " ++ show result)
      return result
