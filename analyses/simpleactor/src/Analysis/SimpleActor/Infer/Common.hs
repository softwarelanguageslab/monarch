{-# LANGUAGE DeriveGeneric #-}
-- | Common shorthands shared between all "Infer" modules
module Analysis.SimpleActor.Infer.Common(Adr, Env, Dyn, Actor(..), Clo, Sto) where

import Domain.Scheme.Store (SchemeAdr)
import Syntax.AST
import RIO
import Syntax (spanOf)

-- | The type of addresses used in this analysis,
-- no context needed as this is a very simple and
-- crude pre-analysis.
type Adr = SchemeAdr Exp ()

-- | The environment used during inferencing
type Env = Map String Adr

-- | Type of the dynamic environment
type Dyn = Map String Adr

-- | An actor is described statically by its environment and
-- expression.
newtype Actor = Actor { getActor :: (Exp, Env) } deriving (Ord, Eq, Generic)

instance NFData Actor

instance Show Actor where
  show = show . spanOf . fst . getActor

-- | Type of closures
type Clo = (Exp, Env)

-- | Type of stores
type Sto v = Map Adr v
