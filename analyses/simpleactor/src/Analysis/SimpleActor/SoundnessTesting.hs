-- | Soundness testing by running the concrete interpreter and reading back its trace.
module Analysis.SimpleActor.SoundnessTesting (runInterpreter) where

import Control.Monad (when)
import Control.Monad.Except
import Control.Monad.IO.Class (MonadIO, liftIO)
import System.IO (openTempFile, hClose, IOMode(..), openFile)
import System.Directory (removeFile)
import System.Process (createProcess, proc, waitForProcess, terminateProcess, CreateProcess(..), StdStream(..))
import System.Timeout (timeout)
import Data.Maybe (isNothing)
import Syntax.InterpreterTrace (Trace, parseTraceFromFile)

-- | Run the given SimpleActor file under Racket with shadow execution enabled,
-- collect the trace written to a temporary file, and return it.
-- The timeout is given in milliseconds; if the interpreter exceeds it the
-- process is terminated and an error is returned.
runInterpreter :: (MonadIO m, MonadError String m) => Int -> FilePath -> m Trace
runInterpreter timeoutMs filename = do
    -- openTempFile does not delete the file on close; we must call removeFile
    -- explicitly below after reading the trace.
    (tmpPath, tmpHandle) <- liftIO $ openTempFile "/tmp" "simpleactor-trace.sexp"
    liftIO $ hClose tmpHandle
    devNull <- liftIO $ openFile "/dev/null" ReadWriteMode
    (_, _, _, ph) <- liftIO $ createProcess
        (proc "racket" [filename])
            { env     = Just [("TRACE_OUTPUT", tmpPath)]
            , std_out = UseHandle devNull
            }
    timedOut <- fmap isNothing $ liftIO $ timeout (timeoutMs * 1000) (waitForProcess ph)
    when timedOut $ liftIO (terminateProcess ph)
    result <- parseTraceFromFile tmpPath
    liftIO $ removeFile tmpPath
    return result
