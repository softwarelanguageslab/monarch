-- | Module to simplify CFCP, and Racket syntax to 
-- our simplified language such that the resulting
-- program is free of monitoring and specialized
-- contract constructs.
module Syntax.Simplifier(translate) where

import Control.Monad.IO.Class
import System.Process
import System.IO

-- | Translate a string representing a Racket 
-- program as an S-expression to a string 
-- of our simplified language
--
-- This requires `MonadIO` for now as we 
-- are calling into a Racket executable 
-- to perform the translation. In the future, 
-- this should  be implemented directly in Haskell.
--
-- NOTE: requires the `racket` directory in the current 
-- path.
translate :: (MonadFail m, MonadIO m) => String -> m String
translate input = do 
   -- TODO: embed racket code in binary and copy to
   -- tempfile instead
   (Just stdin', Just stdout', _,_) <- liftIO $ createProcess (proc "/Users/bram/.local/bin/racket" ["racket/run/translate-full.rkt"]) { std_in = CreatePipe, std_out = CreatePipe }
   liftIO $ hPutStrLn stdin' input
   liftIO $ hGetContents stdout'
