{-# OPTIONS_GHC -Wno-unused-top-binds #-}
{-# OPTIONS_GHC -Wno-partial-fields #-}
module Domain.Contract.Message(ContractMessageDomain(..), isEnhancedMessageCP) where 

import Data.Kind
import Domain (BoolDomain, inject)
import Lattice (CP)
import Lattice.Class
import Domain.Scheme.Actors.Message

-- | Typeclass to represent regular and enhanced messages (i.e., messages with contracts)
-- cf. Vandenbogaerde et al. (2024) Blame-Correct Support for Receiver Properties in Recursively-Structured Actor Contracts
class (MessageDomain v, BottomLattice (Contract v)) => ContractMessageDomain v where
   -- | Communication contract type associated with this message representation
   type Contract v :: Type
   
   -- | Construct an enhanced message from a regular message
   enhanceMessage :: v -> Contract v -> v

   -- | Extract the contract from the message
   contract :: v -> Contract v

   -- | Check whether the message possibly represents enhanced messages.
   -- Not all messages are enhanced as they could correspond to regular 
   -- unmonitored message sends
   isEnhancedMessage :: BoolDomain b => v -> b

isEnhancedMessageCP :: ContractMessageDomain v => v -> CP Bool
isEnhancedMessageCP = isEnhancedMessage

-- | A representation of an enhanced message 
-- parametrized by the contract type and 
-- an underlying 'regular' message type
data SimpleEnhancedMessage c msg = 
     RegularMessage { getInnerMsg :: msg } 
   | EnhancedMessage { getInnerMsg :: msg, getContract :: c }
-- TODO: above representation is problematic from a `join` 
-- point of view since it cannot represent messages that can 
-- be either enhanced or regular. At the moment this is 
-- not a big problem since we do not join message representations.

-- | An enhanced message is also a message in actor scheme if the underlying 
-- message representation is also a message.
instance (MessageDomain msg) => MessageDomain (SimpleEnhancedMessage c msg) where 
   type Payload (SimpleEnhancedMessage c msg) = Payload msg
   type Tag (SimpleEnhancedMessage c msg) = Tag msg

   message t = RegularMessage . message t
   payload = payload . getInnerMsg
   tag     = tag . getInnerMsg

-- | An enhanced message satisfies the constraints from the contract message domain
instance (MessageDomain msg, Joinable c, BottomLattice c) => ContractMessageDomain (SimpleEnhancedMessage c msg) where   
   type Contract (SimpleEnhancedMessage c msg) = c

   enhanceMessage (RegularMessage msg) c = EnhancedMessage msg c
   enhanceMessage (EnhancedMessage msg c) c' = EnhancedMessage msg (join c c')
   contract (RegularMessage _) = bottom
   contract (EnhancedMessage _ c) = c

   isEnhancedMessage (RegularMessage _) = inject False
   isEnhancedMessage (EnhancedMessage _ _) = inject True
