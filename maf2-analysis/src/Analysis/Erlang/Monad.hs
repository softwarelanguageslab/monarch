{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE PolyKinds #-}
module Analysis.Erlang.Monad(ErlangM) where

import Analysis.Actors.Monad
import Analysis.Monad

import Data.Kind
import Data.Map (Map)

type BasicEnv adr = Map String adr

type family Adr (m :: k)  :: Type
type family Msg (m :: k)  :: Type

type ErlangM m v = (
   ActorM m v (Msg m),
   EnvM m (Adr m) (BasicEnv (Adr m)),
   StoreM m () (Adr m) v,
   AllocM m () (Adr m) v
  )
