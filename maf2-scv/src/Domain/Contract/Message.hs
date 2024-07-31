module Domain.Contract.Message(ContractMessageDomain(..), isEnhancedMessageCP) where 

import Data.Kind
import Domain (BoolDomain)
import Lattice (CP)
import Domain.Scheme.Actors.Message

-- | Typeclass to represent regular and enhanced messages (i.e., messages with contracts)
-- cf. Vandenbogaerde et al. (2024) Blame-Correct Support for Receiver Properties in Recursively-Structured Actor Contracts
class (MessageDomain v) => ContractMessageDomain v where
   -- | Communication contract type associated with this message representation
   type Contract v :: Type
   
   -- | Construct an enhanced message from a string-based tag, payload and communication 
   -- contract
   enhancedMessage :: String -> [Payload v] -> Contract v -> v

   -- | Extract the contract from the message
   contract :: v -> Contract v

   -- | Check whether the message possibly represents enhanced messages.
   -- Not all messages are enhanced as they could correspond to regular 
   -- unmonitored message sends
   isEnhancedMessage :: BoolDomain b => v -> b

isEnhancedMessageCP :: ContractMessageDomain v => v -> CP Bool
isEnhancedMessageCP = isEnhancedMessage
