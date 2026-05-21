-- | Parser for interpreter traces produced by the shadow execution in racket/simpleactor/shadow.rkt.
--
-- Trace format (written by Racket's `write`):
--   trace         ::= '(' record* ')'
--   record        ::= '(' 'record' event mailboxes store ')'
--   event         ::= '(' 'spawn'      shadow-pid ')'
--                   | '(' 'send'       shadow-pid value ')'
--                   | '(' 'receive'    shadow-pid ')'
--                   | '(' 'store-set!' adr value ')'
--   mailboxes     ::= '(' mailbox-entry* ')'
--   mailbox-entry ::= '(' shadow-pid value* ')'
--   store         ::= '(' store-entry* ')'
--   store-entry   ::= '(' adr value ')'
--   shadow-pid    ::= '(' 'shadow-pid' location integer ')'
--   location      ::= '(' 'location' string integer integer ')'
--   adr           ::= '(' 'adr' location integer symbol ')'
{-# LANGUAGE PatternSynonyms #-}
module Syntax.InterpreterTrace
  ( Trace
  , TraceRecord(..)
  , Event(..)
  , ShadowPid(..)
  , Location(..)
  , Adr(..)
  , TraceValue(..)
  , parseTrace
  , parseTraceFromString
  , parseTraceFromFile
  ) where

import Syntax.Scheme.Parser (SExp(..), parseSexp', pattern (:::), smapM)
import Control.Monad.Except
import Control.Monad ((>=>))
import Control.Monad.IO.Class (MonadIO, liftIO)
import qualified Data.Map as Map
import Data.Map (Map)

------------------------------------------------------------
-- Data types
------------------------------------------------------------

data Location = Location
  { locFile :: String
  , locLine :: Integer
  , locCol  :: Integer
  } deriving (Eq, Ord)

instance Show Location where
  show (Location f l c) = f ++ ":" ++ show l ++ ":" ++ show c

data ShadowPid = ShadowPid
  { pidSpawnSite :: Location
  , pidCounter   :: Integer
  } deriving (Eq, Ord)

instance Show ShadowPid where
  show (ShadowPid loc n) = "pid<" ++ show loc ++ "#" ++ show n ++ ">"

data Adr = Adr
  { adrSite    :: Location
  , adrCounter :: Integer
  , adrKind    :: String
  } deriving (Eq, Ord)

instance Show Adr where
  show (Adr loc n k) = "adr<" ++ show loc ++ "#" ++ show n ++ ":" ++ k ++ ">"

data TraceValue
  = TVNum    Integer
  | TVReal   Double
  | TVBool   Bool
  | TVSymbol String
  | TVString String
  | TVNil
  | TVPair   TraceValue TraceValue
  | TVPid    ShadowPid
  | TVAdr    Adr
  deriving (Eq, Ord)

instance Show TraceValue where
  show (TVNum n)      = show n
  show (TVReal r)     = show r
  show (TVBool True)  = "#t"
  show (TVBool False) = "#f"
  show (TVSymbol s)   = "'" ++ s
  show (TVString s)   = show s
  show TVNil          = "()"
  show (TVPair a d)   = "(" ++ show a ++ " . " ++ show d ++ ")"
  show (TVPid p)      = show p
  show (TVAdr a)      = show a

data Event
  = EvSpawn    ShadowPid
  | EvSend     ShadowPid TraceValue
  | EvReceive  ShadowPid
  | EvStoreSet Adr TraceValue
  deriving (Eq, Ord, Show)

data TraceRecord = TraceRecord
  { recEvent     :: Event
  , recMailboxes :: Map ShadowPid [TraceValue]
  , recStore     :: Map Adr TraceValue
  } deriving (Eq, Ord, Show)

type Trace = [TraceRecord]

------------------------------------------------------------
-- Parsing helpers
------------------------------------------------------------

type Parse m = MonadError String m

expected :: Parse m => String -> SExp -> m a
expected ctx e = throwError $ "expected " ++ ctx ++ ", got: " ++ show e

asList :: Parse m => SExp -> m [SExp]
asList = smapM pure

------------------------------------------------------------
-- Parsers
------------------------------------------------------------

parseLocation :: Parse m => SExp -> m Location
parseLocation (Atom "location" _ ::: Str f _ ::: Num l _ ::: Num c _ ::: SNil _) =
  pure $ Location f l c
parseLocation e = expected "location" e

parseShadowPid :: Parse m => SExp -> m ShadowPid
parseShadowPid (Atom "shadow-pid" _ ::: loc ::: Num n _ ::: SNil _) =
  ShadowPid <$> parseLocation loc <*> pure n
parseShadowPid e = expected "shadow-pid" e

parseAdr :: Parse m => SExp -> m Adr
parseAdr (Atom "adr" _ ::: loc ::: Num n _ ::: Atom k _ ::: SNil _) =
  Adr <$> parseLocation loc <*> pure n <*> pure k
parseAdr e = expected "adr" e

parseValue :: Parse m => SExp -> m TraceValue
parseValue (Num n _)                      = pure $ TVNum n
parseValue (Rea r _)                      = pure $ TVReal r
parseValue (Bln b _)                      = pure $ TVBool b
parseValue (Str s _)                      = pure $ TVString s
parseValue (SNil _)                       = pure TVNil
parseValue (Quo (Atom s _) _)            = pure $ TVSymbol s
parseValue e@(Atom "shadow-pid" _ ::: _) = TVPid <$> parseShadowPid e
parseValue e@(Atom "adr" _ ::: _)        = TVAdr <$> parseAdr e
parseValue (Atom s _)                    = pure $ TVSymbol s
parseValue (Pai car cdr _)               = TVPair <$> parseValue car <*> parseValue cdr
parseValue e                             = expected "value" e

parseMailboxEntry :: Parse m => SExp -> m (ShadowPid, [TraceValue])
parseMailboxEntry e@(pid ::: _) = do
  p     <- parseShadowPid pid
  elems <- asList e
  msgs  <- mapM parseValue (drop 1 elems)
  pure (p, msgs)
parseMailboxEntry e = expected "mailbox-entry" e

parseStoreEntry :: Parse m => SExp -> m (Adr, TraceValue)
parseStoreEntry (adrSexp ::: valSexp ::: SNil _) =
  (,) <$> parseAdr adrSexp <*> parseValue valSexp
parseStoreEntry e = expected "store-entry" e

parseEvent :: Parse m => SExp -> m Event
parseEvent (Atom "spawn" _ ::: pid ::: SNil _) =
  EvSpawn <$> parseShadowPid pid
parseEvent (Atom "send" _ ::: pid ::: vlu ::: SNil _) =
  EvSend <$> parseShadowPid pid <*> parseValue vlu
parseEvent (Atom "receive" _ ::: pid ::: SNil _) =
  EvReceive <$> parseShadowPid pid
parseEvent (Atom "store-set!" _ ::: adrSexp ::: vlu ::: SNil _) =
  EvStoreSet <$> parseAdr adrSexp <*> parseValue vlu
parseEvent e = expected "event" e

parseRecord :: Parse m => SExp -> m TraceRecord
parseRecord (Atom "record" _ ::: evSexp ::: mbsSexp ::: storeSexp ::: SNil _) = do
  ev    <- parseEvent evSexp
  mbs   <- Map.fromList <$> (asList mbsSexp >>= mapM parseMailboxEntry)
  store <- Map.fromList <$> (asList storeSexp >>= mapM parseStoreEntry)
  pure $ TraceRecord ev mbs store
parseRecord e = expected "record" e

parseTrace :: Parse m => SExp -> m Trace
parseTrace = asList >=> mapM parseRecord

------------------------------------------------------------
-- Entry points
------------------------------------------------------------

parseTraceFromString :: MonadError String m => String -> m Trace
parseTraceFromString input = do
  sexps <- either throwError return $ parseSexp' Nothing input
  mapM parseRecord sexps

parseTraceFromFile :: (MonadIO m, MonadError String m) => FilePath -> m Trace
parseTraceFromFile path = liftIO (readFile path) >>= parseTraceFromString
