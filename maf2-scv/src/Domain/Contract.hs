{-# LANGUAGE DataKinds #-}
{-# LANGUAGE UndecidableInstances #-}
module Domain.Contract(ContractDomain(..)) where

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

------------------------------------------------------------
-- ContractDomain
------------------------------------------------------------

class (SchemeDomain v, BehaviorContract v v) => ContractDomain v where
   -- | Insert a message contract in the domain 
   messageContract :: MessageContract v -> v
   -- | Extract the message contracts from the domain
   messageContracts :: (JoinLattice a, AbstractM m) => (MessageContract v -> m a) -> v -> m a

------------------------------------------------------------
-- Instance for ModularSchemeValue
------------------------------------------------------------

instance (IsBehaviorContract m,  Assoc MeCConf m ~ MessageContract (SchemeVal m)) => ContractDomain (SchemeVal m) where  
   messageContract  = SchemeVal . HMap.singleton @MeCKey
   messageContracts :: forall v a schemeM . (JoinLattice a, AbstractM schemeM) => (MessageContract (SchemeVal m) -> schemeM a) -> SchemeVal m -> schemeM a
   messageContracts f = mjoins . map select . HMap.toList . getSchemeVal  
      where select :: BindingFrom (Values m) -> schemeM a
            select (SMeCKey :&: m) = f m
            select _ = escape WrongType
