{-# LANGUAGE FlexibleContexts #-}
module Analysis.Actors.Monad(ActorEvalM(..), module Analysis.Scheme.Monad) where

import Syntax.Scheme.AST
-- use the monads from the base-semantics
import Analysis.Monad
import Analysis.Scheme.Monad
import Analysis.Actors.Mailbox
import Domain.Scheme hiding (Exp)

class (SchemeM m v, ActorDomain v, Message msg v) => ActorEvalM m v msg | m -> msg where
   -- | Spawn a new actor with the given behavior, returns an actor reference
   -- corresponding to the newly spawned actor
   spawn :: Exp -> m v
   -- | Send the given message to the given actor
   send :: ARef v -> msg -> m ()
   -- | Change the behavior of the actor to the given new behavior
   become :: Exp -> m ()
   -- | Receive a message from the actor's mailbox 
   receive :: m msg  
