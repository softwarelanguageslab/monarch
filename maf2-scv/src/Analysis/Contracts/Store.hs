module Analysis.Contracts.Store(ContractStore(..)) where

import Domain.Contract.Store
import Data.Map (Map)
import Domain.Scheme.Actors.Contract
import Domain.Contract

data ContractStore k v = ContractStore {
   messageContracts :: Map (MsCAdr k) (MessageContract v),
   flats :: Map (FlaAdr k) (Flat v), 
   monitors :: Map (MoαAdr k) (Moα v)
}

type ContractStoreContents k v = 
   '[ Map (MsCAdr k) (MessageContract v) , Map (FlaAdr k) (Flat v) , Map (MoαAdr k) (Moα v) ]
