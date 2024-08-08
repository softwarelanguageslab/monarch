module Analysis.SimpleActor.Monad(Error(..), MonadActor(..), MonadMailbox(..), MonadSpawn(..), EvalM) where

import Domain.SimpleActor.Class
import Syntax.AST

import Domain.Class
import Analysis.Monad.Allocation
import Analysis.Monad.Environment
import Analysis.Monad.Store
import Control.Monad.IO.Class
import Control.Monad.Join
import Control.Monad.Escape
import Control.Monad.DomainError 

import Control.Monad.Reader
import Control.Monad.State

------------------------------------------------------------
-- Errors
------------------------------------------------------------

data Error = MatchError | InvalidArgument | BlameError Label

------------------------------------------------------------
-- Monad typeclasses
------------------------------------------------------------

class MonadMailbox v m | m -> v where 
   send      :: ARef v -> v -> m ()
   receive   :: (v -> m a) -> m a

class MonadSpawn v m | m -> v where    
   spawn     :: (ARef v -> m ()) -> m (ARef v)

class (MonadMailbox v m, MonadSpawn v m) => MonadActor v m | m -> v where
   withSelf  :: ARef v -> m a -> m a
   getSelf   :: m (ARef v)
   terminate :: m ()
   waitUntilAllFinished :: m ()

------------------------------------------------------------
-- Monad
------------------------------------------------------------

-- | Evaluation monad
type EvalM v m = (
   MonadIO m,
   MonadJoin m,
   EnvM m (Adr v) (Env v),
   AllocM m Ide (Adr v),
   StoreM m (Adr v) v,
   MonadActor v m,
   MonadEscape m,
   Domain (Esc m) DomainError,
   Domain (Esc m) Error,
   ValueDomain v
   )

------------------------------------------------------------
-- Instances
------------------------------------------------------------


