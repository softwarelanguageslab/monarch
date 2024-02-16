{-# LANGUAGE ConstraintKinds #-}
module Analysis.Erlang.Monad(ErlangM) where

import Analysis.Actors.Mailbox
import Analysis.Actors.Monad
import Analysis.Monad

import Data.Map (Map)

type BasicEnv adr = Map String adr

type ErlangM m msg adr ref v = (
   ActorM m ref msg,
   EnvM m adr (BasicEnv adr),
   StoreM m () adr v,
   AllocM m () adr v
  )
