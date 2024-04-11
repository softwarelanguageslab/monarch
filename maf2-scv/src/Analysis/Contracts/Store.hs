{-# LANGUAGE StrictData #-}

module Analysis.Contracts.Store (ContractStore'(..), ContractStore, runContractAllocT, runContractStoreT) where

import Data.Singletons
import Analysis.Scheme.Store
import Analysis.Monad (AllocT, StackStoreT, runAlloc)
import Data.Function ((&))
import Data.Map (Map)
import Data.TypeLevel.AssocList
import Domain.Contract hiding (messageContracts, flats)
import Domain.Contract.Store
import Domain.Scheme.Actors.Contract
import Syntax.Scheme
import Analysis.Monad (runStoreT')

data ContractStore' f k v = ContractStore
  { messageContracts :: Map (MsCAdr k) (f @@ MessageContract v),
    flats :: Map (FlaAdr k) (f @@ Flat v),
    monitors :: Map (MoαAdr k) (f @@ Moα v)
  }

type ContractStore k v = ContractStore' Id k v

type ContractStoreContents k v =
  '[ MsCAdr k ::-> MessageContract v,
     FlaAdr k ::-> Flat v,
     MoαAdr k ::-> Moα v
   ]

type ContractStoreT k v m = StackStoreT (ContractStoreContents k v) m

runContractStoreT :: (Monad m)
                  => ContractStore' SVar k v 
                  -> ContractStoreT k v m a
                  -> m (a, ContractStore' SVar k v)
runContractStoreT sto m =  do
   r <- m
       & runStoreT' (messageContracts sto) 
       & runStoreT' (flats sto)
       & runStoreT' (monitors sto)
   let (((v, messageContracts'), flats'), monitors') = r
   return (v, ContractStore messageContracts' flats' monitors')


runContractAllocT :: forall k m a . AllocT Exp k (MsCAdr k) (AllocT Exp k (FlaAdr k) (AllocT Exp k (MoαAdr k) m)) a -> m a
runContractAllocT m = m & runAlloc MsCAdr & runAlloc FlaAdr & runAlloc MoαAdr
