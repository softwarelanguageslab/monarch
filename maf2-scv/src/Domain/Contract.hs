module Domain.Contract(ContractDomain(..)) where

import Domain.Scheme.Class
import Domain.Scheme.Actors.Contract
import Data.Set (Set)
import Data.Kind
import Control.Monad.AbstractM

class (SchemeDomain v) => ContractDomain v c | v -> c where
   -- | Address where message contracts are allocated
   type ContractAdr v :: Type

   -- | Inject a message contract in the domain 
   messageContract :: MessageContract v -> v
   -- | Extract the message contracts from the domain
   messageContracts :: AbstractM m => (MessageContract v -> m a) -> v -> m a

   -- | Inject a behavior contract in the domain
   injectBehaviorContract :: c -> v
