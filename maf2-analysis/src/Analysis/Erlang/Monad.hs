{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE PolyKinds #-}
module Analysis.Erlang.Monad(ErlangError(..), ErlangErrorDomain(..), ErlangM, BasicEnv, Adr, Msg, Cmp(..)) where

import Analysis.Monad
import Syntax.Erlang
import Domain.Erlang.Class
import Control.Monad.AbstractM
import Control.Monad.Escape
import Domain (Domain)

import Data.Kind
import Data.Map (Map)
import Lattice (BottomLattice)
import Analysis.Monad.Fix (MonadFixpoint)
import Syntax.Span (Span)

type BasicEnv adr = Map String adr

-- | Erlang analysis components
data Cmp = ErlangCall    !Body 
         | ErlangModule  !Module
         | ErlangActor   !Body
         deriving (Eq, Ord, Show)

-- | The type of addresess used in an Erlang
-- analysis
type family Adr (m :: k)  :: Type
-- | The type of messages used in an Erlang 
-- analysis
type family Msg (m :: k)  :: Type

-- | Types of errors in an Erlang program
data ErlangError = MatchError

-- | Predicates on abstract errors
class ErlangErrorDomain e where  
   -- | Returns true if the error 
   -- is a match error
   isMatchError :: e -> Bool


type ErlangM m v mb = (
   BottomLattice v,
   -- Base monads
   AbstractM m,
   EnvM m (Adr m) (Env v),
   StoreM (Adr m) v m,
   AllocM m Span (Adr m),
   -- Fixpoints
   MonadFixpoint m Cmp v,
   -- Erlang specific
   ErlangDomain v,
   -- Errors
   Domain (Esc m) ErlangError,
   ErlangErrorDomain (Esc m),
   Domain (Esc m) (Esc m)
  )
