-- | Provides and manages file handles that can be accessed from several threads, can be used
-- as a drop-in replacement for System.IO
module System.ConcurrentHandle (ConcurrentHandle, Handle, openFile, hPutStr, hPutStrLn, protectHandle, module System.IO) where

import System.IO (FilePath, IOMode)
import qualified System.IO as IO
import Control.Concurrent.Lock (Lock)
import qualified Control.Concurrent.Lock as Lock

-- | The concurrent version of the 'Handle' datatype
data ConcurrentHandle = ConcurrentHandle { lock :: Lock, handle :: IO.Handle }

-- For convenience
type Handle = ConcurrentHandle

-- | Protect an existing handle, note that this might be unsafe as the original
-- handle is still accessible due to the lack of linear typing in standard Haskell.
protectHandle :: IO.Handle -> IO ConcurrentHandle
protectHandle = (ConcurrentHandle <$> Lock.new <*>) . pure

-- | Open a file and protect its handle for thread-safe access
openFile :: FilePath -> IOMode -> IO ConcurrentHandle
openFile path mode = ConcurrentHandle <$> Lock.new <*> IO.openFile path mode

-- | Atomically write the given string to the handle
hPutStr :: ConcurrentHandle -> String -> IO ()
hPutStr ConcurrentHandle { .. } str = Lock.acquire lock >> IO.hPutStr handle str >> Lock.release lock

-- | Atomically write the given string followed by a newline
hPutStrLn :: ConcurrentHandle -> String -> IO ()
hPutStrLn hdl = hPutStr hdl . (++"\n")
