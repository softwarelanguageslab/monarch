{-# LANGUAGe UndecidableInstances #-}
module Domain.Contract.Communication where

import Data.TypeLevel.HMap (Assoc)
import qualified Data.TypeLevel.HMap as HMap
import Lattice
import Domain

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Kind

class CommunicationContract v where
   -- | Type of address to message contracts
   type MCAdr v :: Type

   -- | Checks if the given value is a communication contract
   isCommunicationContract :: BoolDomain b => v -> b

   -- | Constructs an abstraction of the "ensures" communication contract from 
   -- a list of message contracts
   ensuresContract :: [MCAdr v] -> v

   -- | Returns a list of pointers to message contracts contained 
   -- within the ensure contract.
   ensureMessageContracts :: v -> Set (MCAdr v)

------------------------------------------------------------
-- Instance 
------------------------------------------------------------

newtype UnorderedEnsuresContract ptr = UnorderedEnsuresContract { getMessageContracts :: Set ptr } 
                                     deriving (Ord, Eq, Joinable, PartialOrder, BottomLattice, Meetable)

instance (Ord ptr) => CommunicationContract (UnorderedEnsuresContract ptr) where  
   type MCAdr (UnorderedEnsuresContract ptr) = ptr

   isCommunicationContract v 
      | v == bottom = bottom
      | otherwise = inject True
   ensuresContract = UnorderedEnsuresContract . Set.fromList
   ensureMessageContracts = getMessageContracts

------------------------------------------------------------
-- Instance for ModularSchemeValue     
------------------------------------------------------------

type IsCommunicationContract m = (
   IsSchemeValue m, 
   CommunicationContract (Assoc ComConf m), 
   MCAdr (Assoc ComConf m) ~ MCAdr (SchemeVal m),
   MCAdr (Assoc ComConf m) ~ Assoc PMeConf m
   )  


instance (IsCommunicationContract m) => CommunicationContract (SchemeVal m) where   
   type MCAdr (SchemeVal m) = (Assoc PMeConf m)

   isCommunicationContract = hasType ComKey
   ensuresContract = SchemeVal . HMap.singleton @ComKey . ensuresContract
   ensureMessageContracts = maybe Set.empty ensureMessageContracts . HMap.get @ComKey . getSchemeVal
