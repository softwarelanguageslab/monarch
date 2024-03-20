{-# LANGUAGE PatternSynonyms #-}
-- | This module runs the Racket interpreter for our actor language. 
-- Then it parses the log of its output and checks it against the abstract
-- output of the interpreter.
module Interpreter.Actors where

import Syntax.Scheme.Parser (SExp, pattern (:::))
import qualified Syntax.Scheme.Parser as SExp
import Data.Functor
import Data.Either

------------------------------------------------------------
-- Log parsing
------------------------------------------------------------

-- | A location in the source file
data LogLoc   = LogLoc { filename :: String, line :: Integer, column :: Integer } deriving Show

-- | Encoding of values
data Value -- TODO
deriving instance Show Value
   
-- | Types of log entries
data LogEntry = Spawn  LogLoc LogLoc 
              | Become LogLoc LogLoc
              | Send   String [Value] LogLoc
              deriving Show

-- | Parse a log location 
parseLoc :: SExp -> LogLoc
parseLoc (SExp.Atom "log:loc*" _ ::: SExp.Str filename _ ::: SExp.Num line _ ::: SExp.Num loc _ ::: SExp.SNil _) = 
   LogLoc filename line loc
parseLoc _ = error "incorrect format for log:loc"

parsePayload :: SExp -> [Value]
parsePayload = const [] -- TODO

-- | Parse an S-Expression into log-entries
parse :: SExp -> LogEntry
parse (SExp.Atom "log:spawn" _ ::: behloc ::: spawnloc ::: SExp.SNil _) = 
   Spawn (parseLoc behloc) (parseLoc spawnloc)
parse (SExp.Atom "log:become" _ ::: behloc ::: becomeloc ::: SExp.SNil _) = 
   Become (parseLoc behloc) (parseLoc becomeloc)
parse (SExp.Atom "log:send*" _ ::: SExp.Quo (SExp.Atom tag _) _ ::: SExp.Quo payload _ ::: loc ::: SExp.SNil _) =
   Send tag (parsePayload payload) (parseLoc loc)
parse e = error $ "unrecognized log entry" ++ (show e)

------------------------------------------------------------
-- Log loading
------------------------------------------------------------

loadLog :: String -> IO [LogEntry]
loadLog filename = 
  map parse . fromRight (error "failed to parse") . SExp.parseSexp <$> readFile filename
