-- | This module defines MacroConc effects as proposed by Stiévenart et al.
module Analysis.SimpleActor.Smallstep.StateSpace.Effect(
    Eff,
    HasEffect(..),
    emit,
    reset
  ) where

import RIO
import qualified RIO.Set as Set

-- | The effects in the MacroConc semantics for actor languages with ordered
--  mailboxes consists of a "Send" (Snd) effect and a "Receive" (Rcv) effect 
data Eff = Snd
         | Rcv
         deriving (Ord, Show, Eq)

-- | Captures that a state "s" has the ability to store and retrieve effects
class HasEffect s where
  effectL :: Lens' s (Set Eff)

-- | Emits the given effect
emit :: HasEffect s => Eff -> s -> s 
emit eff = over effectL (Set.insert eff)

-- | Resets the collected effects
reset :: HasEffect s => s -> s
reset = set effectL Set.empty
