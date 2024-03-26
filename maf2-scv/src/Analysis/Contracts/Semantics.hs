{-# LANGUAGE AllowAmbiguousTypes #-}
module Analysis.Contracts.Semantics(eval, ContractM) where

import Lattice
import Syntax.Scheme
import Analysis.Monad(alloc, writeAdr, store, deref)
import Analysis.Contracts.Monad (ContractM)
import Domain.Contract (ContractDomain(..))
import Domain.Scheme.Actors.Contract (MessageContract(MessageContract))
import qualified Analysis.Scheme.Semantics as Scheme
import Control.Monad (zipWithM_, (>=>))
import Analysis.Contracts.Behavior (behaviorContract)
import Domain.Contract.Store (ConAdr, FlaAdr)
import qualified Data.Set as Set
import Control.Monad.Join
import Domain.Core (BoolDomain)
import Domain.Contract(Flat(..))
import Control.Monad.DomainError (escape, DomainError (WrongType))

-- | Monitors a flat contract against a value
monFlat :: ContractM m v => Exp -> v -> v -> m v
monFlat e contract value = 
      cond (deref (const $ flip (Scheme.applyFun e) [value] . flatProc) (flats contract))
           (return value)
           (escape WrongType) -- TODO: add blame here

-- | Contract monitoring function, monitors a contract on value,
-- blaming the positive part of `Labels` if a contract violation is found.
mon :: ContractM m v => Exp -> Labels -> v -> v -> m v
mon e lbl contract value = 
   conds @(CP Bool)
      [(pure (isFlat contract), monFlat e contract value)]
      (escape WrongType)

-- | TODO: use AssertM (assert)
assert :: forall v m . (ContractM m v) => (v -> CP Bool) -> v -> m v
assert b v = cond (pure (b v)) (return v) (escape WrongType)

-- | This evaluation function extends 'Analysis.Symbolic.Semantics.eval' 
-- with support for contracts on actorserver1043.andy10gbit.xyzs.
eval :: forall v m . ContractM m v => Exp -> m v
eval exp@(MsgC tag rcv payload comm _) =
   messageContract <$> (store exp =<< (MessageContract <$> eval tag <*> eval rcv <*> eval payload <*> eval comm))
eval (BehC exs _) =  do
   vlus <- mapM eval exs
   adrs <- joins <$> mapM (assert isMessageContract >=> pure . messageContracts) vlus
   return (behaviorContract @_ @v (Set.toList adrs))

eval e = Scheme.eval e
