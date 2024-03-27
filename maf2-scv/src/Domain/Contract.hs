{-# LANGUAGE DataKinds #-}
{-# LANGUAGE UndecidableInstances #-}

module Domain.Contract (ContractDomain (..), Flat (..), Moα(..)) where

import Syntax.Scheme.AST (Labels)
import Analysis.Contracts.Behavior
import Data.Kind
import Data.Maybe
import Data.Set (Set)
import qualified Data.Set as Set
import Data.TypeLevel.HMap (Assoc)
import qualified Data.TypeLevel.HMap as HMap
import Domain
import Lattice.Class

newtype Flat v = Flat {flatProc :: v} 
  deriving (Eq, Ord, Joinable, JoinLattice)

data Moα v = Moα (Set Labels) v v | Bottom
           deriving (Eq, Ord, Show)
instance (Joinable v) => (Joinable (Moα v)) where   
   join Bottom a = a
   join a Bottom = a
   join (Moα l1 c1 v1) (Moα l2 c2 v2) = 
      Moα (join l1 l2) (join c1 c2) (join v1 v2)
instance (Eq v, Joinable v) => JoinLattice (Moα v) where  
   bottom = Bottom

------------------------------------------------------------
-- ContractDomain
------------------------------------------------------------

class (SchemeDomain v, BehaviorContract v v) => ContractDomain v where
  -- |  Address of pointers to flat contracts
  type FAdr v :: Type
  -- | Address of pointers to monitors on actor references
  type OAdr v :: Type

  --

  -- | Insert a message contract in the domain
  messageContract :: MAdr v -> v

  -- | Extract the message contracts from the domain
  messageContracts :: v -> Set (MAdr v)

  -- | Check if the given value is a message contract
  isMessageContract :: (BoolDomain b) => v -> b

  --

  -- | Check if the value is flat contract 
  isFlat :: (BoolDomain b) => v -> b
  -- | Returns the set of flat contracts
  flats :: v -> Set (FAdr v)
  -- | Inserts a pointer to a flat contract in the abstract domain
  flat :: FAdr v -> v

  -- 
  
  -- | Insert a pointer to a actor contract monitor
  -- in the abstract domain
  αmon :: OAdr v -> v

  -- | Extract the set of abstract pointers to actor contract monitors
  -- from the abstact value
  αmons :: v -> Set (OAdr v)

  -- | Checks if the given value is a pointer to a contract monitor
  isαmon :: BoolDomain b => v -> b

------------------------------------------------------------
-- Instance for ModularSchemeValue
------------------------------------------------------------

instance (IsBehaviorContract m) => ContractDomain (SchemeVal m) where
  type FAdr (SchemeVal m) = (Assoc FlaConf m)
  type OAdr (SchemeVal m) = (Assoc MoαConf m)
  --
  messageContract   = SchemeVal . HMap.singleton @MeCKey . Set.singleton
  messageContracts  = fromMaybe Set.empty . HMap.get @MeCKey . getSchemeVal
  isMessageContract = hasType MeCKey
  --
  flat    = SchemeVal . HMap.singleton @FlaKey . Set.singleton
  flats   = fromMaybe Set.empty . HMap.get @FlaKey . getSchemeVal
  isFlat  = hasType FlaKey
  -- 
  αmon    = SchemeVal . HMap.singleton @MoαKey . Set.singleton
  αmons   = fromMaybe Set.empty . HMap.get @MoαKey . getSchemeVal
  isαmon  = hasType MoαKey
