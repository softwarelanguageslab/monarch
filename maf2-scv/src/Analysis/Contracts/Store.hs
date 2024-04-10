{-# LANGUAGE StrictData #-}

module Analysis.Contracts.Store (ContractStore (..), runContractAllocT) where

import Analysis.Monad (AllocT, StackStoreT, runAlloc)
import Data.Function ((&))
import Data.Map (Map)
import Data.TypeLevel.AssocList
import Domain.Contract
import Domain.Contract.Store
import Domain.Scheme.Actors.Contract
import Syntax.Scheme

data ContractStore k v = ContractStore
  { messageContracts :: Map (MsCAdr k) (MessageContract v),
    flats :: Map (FlaAdr k) (Flat v),
    monitors :: Map (MoαAdr k) (Moα v)
  }

type ContractStoreContents k v =
  '[ MsCAdr k ::-> MessageContract v,
     FlaAdr k ::-> Flat v,
     MoαAdr k ::-> Moα v
   ]

type ContractStoreT k v m = StackStoreT (ContractStoreContents k v) m

runContractAllocT :: forall k m a . AllocT Exp k (MsCAdr k) (AllocT Exp k (FlaAdr k) (AllocT Exp k (MoαAdr k) m)) a -> m a
runContractAllocT m = m & runAlloc MsCAdr & runAlloc FlaAdr & runAlloc MoαAdr
