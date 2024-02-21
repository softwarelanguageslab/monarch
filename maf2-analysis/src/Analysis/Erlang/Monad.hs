{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE PolyKinds #-}
module Analysis.Erlang.Monad(ErlangError(..),ErlangCallM(..), ErlangM, BasicEnv, Adr, Msg) where

import Analysis.Actors.Monad
import Analysis.Monad
import Syntax.Erlang
import Domain.Erlang.Class
import Control.Monad.AbstractM
import Control.Monad.DomainError
import Domain (Domain)

import Data.Kind
import Data.Map (Map)

type BasicEnv adr = Map String adr
type Clo adr = (BasicEnv adr, [Clause])

-- | The type of addresess used in an Erlang
-- analysis
type family Adr (m :: k)  :: Type
-- | The type of messages used in an Erlang 
-- analysis
type family Msg (m :: k)  :: Type

-- | Introduces call semantics into the Erlang
-- semantics
class ErlangCallM m v where   
   call :: Clo (Adr m) -> m v

-- | Types of errors in an Erlang program
data ErlangError = MatchError

-- | Predicates on abstract errors
class ErlangErrorDomain e where  
   -- | Returns true if the error 
   -- is a match error
   isMatchError :: e -> Bool


type ErlangM m v = (
   -- Base monads
   AbstractM m,
   EnvM m (Adr m) (BasicEnv (Adr m)),
   StoreM m () (Adr m) v,
   AllocM m Loc () (Adr m),
   Env v ~ BasicEnv (Adr m),
   -- Erlang specific
   ActorM m v (Msg m),
   ErlangDomain v,
   ErlangCallM m v,
   -- Errors
   Domain (Esc m) ErlangError,
   ErlangErrorDomain (Esc m)
  )
