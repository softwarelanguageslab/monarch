{-# LANGUAGE DataKinds #-}
{-# LANGUAGE UndecidableInstances #-}
module Domain.Contract(ContractDomain(..), Flat(..)) where

import Lattice.Class
import Domain.Scheme.Class hiding (Exp)
import Domain.Scheme.Actors.Contract
import Control.Monad.AbstractM
import Analysis.Contracts.Behavior
import Domain.Scheme.Modular
import Data.TypeLevel.HMap (Assoc, BindingFrom, Sigma((:&:)))
import qualified Data.TypeLevel.HMap as HMap
import Control.Monad.Join
import Control.Monad.DomainError
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Maybe
import Domain
import Data.Kind

newtype Flat v = Flat { flatProc :: v } 
                deriving (Eq, Ord, Joinable, JoinLattice) 

------------------------------------------------------------
-- ContractDomain
------------------------------------------------------------

class (SchemeDomain v, BehaviorContract v v) => ContractDomain v where
   -- | Address of pointers to flat contracts
   type FAdr v :: Type

   -- | Insert a message contract in the domain 
   messageContract :: MAdr v -> v
   -- | Extract the message contracts from the domain
   messageContracts :: v -> Set (MAdr v)
   -- | Check if the given value is a message contract
   isMessageContract :: BoolDomain b => v -> b
   --
   isFlat :: (BoolDomain b) => v -> b
   flats  :: v -> Set (FAdr v)

------------------------------------------------------------
-- Instance for ModularSchemeValue
------------------------------------------------------------

instance (IsBehaviorContract m) => ContractDomain (SchemeVal m) where
   type FAdr (SchemeVal m) = (Assoc FlaConf m)
   messageContract   = SchemeVal . HMap.singleton @MeCKey . Set.singleton
   messageContracts  = fromMaybe Set.empty . HMap.get @MeCKey . getSchemeVal
   isMessageContract = check . Set.toList . HMap.keys . getSchemeVal
      where
         check []        = bottom
         check [MeCKey] = inject True
         check xs
            | MeCKey `elem` xs = boolTop
            | otherwise = inject False
   -- 
   

