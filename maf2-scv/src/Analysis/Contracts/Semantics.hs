{-# LANGUAGE AllowAmbiguousTypes #-}
module Analysis.Contracts.Semantics(eval, ContractM) where

import Lattice
import Syntax.Scheme
import Analysis.Monad(alloc, writeAdr, store)
import Analysis.Contracts.Monad (ContractM)
import Domain.Contract (ContractDomain(..))
import Domain.Scheme.Actors.Contract (MessageContract(MessageContract))
import qualified Analysis.Scheme.Semantics as Scheme
import Control.Monad (zipWithM_)
import Analysis.Contracts.Behavior (behaviorContract)
import Domain.Contract.Store (ConAdr)
import qualified Data.Set as Set
import Control.Monad.Join

-- | This evaluation function extends 'Analysis.Symbolic.Semantics.eval' 
-- with support for contracts on actors.
eval :: forall v m . ContractM m v => Exp -> m v
eval exp@(MsgC tag rcv payload comm _) =
   messageContract <$> (store exp =<< (MessageContract <$> eval tag <*> eval rcv <*> eval payload <*> eval comm))
eval (BehC exs _) =  do
   vlus <- mapM eval exs
   adrs <- foldr join bottom <$> mapM (messageContracts (pure . Set.singleton)) vlus
   return (behaviorContract @_ @v (Set.toList adrs))

eval e = Scheme.eval e
