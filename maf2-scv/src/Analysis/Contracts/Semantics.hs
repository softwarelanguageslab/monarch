{-# LANGUAGE AllowAmbiguousTypes #-}
module Analysis.Contracts.Semantics(eval, ContractM) where

import Prelude hiding (exp)
import Lattice
import Syntax.Scheme
import Analysis.Monad(store, deref)
import Analysis.Contracts.Monad (ContractM, Error (BlameError, AssertionError), AssertionMessage (..))
import Domain.Contract ( ContractDomain(..), Flat(..) )
import Domain.Scheme.Actors.Contract (MessageContract(MessageContract))
import qualified Analysis.Scheme.Semantics as Scheme
import Control.Monad ((>=>))
import Analysis.Contracts.Behavior (behaviorContract)
import qualified Data.Set as Set
import Control.Monad.Join
import Control.Monad.DomainError (escape, DomainError (WrongType))

-- | Monitors a flat contract against a value
monFlat :: ContractM m v => Exp -> Labels -> v -> v -> m v
monFlat e lbl contract value =
      cond (deref (const $ flip (Scheme.applyFun e) [value] . flatProc) (flats contract))
           (return value)
           (escape $ BlameError (positive lbl))

-- | Contract monitoring function, monitors a contract on value,
-- blaming the positive part of `Labels` if a contract violation is found.
mon :: ContractM m v => Exp -> Labels -> v -> v -> m v
mon e lbl contract value =
   conds @(CP Bool)
      [(pure (isFlat contract), monFlat e lbl contract value)]
      (escape WrongType)

-- | TODO: use AssertM (assert)
assert :: forall v m . (ContractM m v) => (v -> CP Bool) -> AssertionMessage -> v -> m v
assert b e v = cond (pure (b v)) (return v) (escape (AssertionError e))

-- | This evaluation function extends 'Analysis.Symbolic.Semantics.eval' 
-- with support for contracts on actorserver1043.andy10gbit.xyzs.
eval :: forall v m . ContractM m v => Exp -> m v
eval exp@(MsgC tag rcv payload comm _) =
   messageContract <$> (store exp =<< (MessageContract <$> eval tag <*> eval rcv <*> eval payload <*> eval comm))
eval (BehC exs _) =  do
   vlus <- mapM eval exs
   adrs <- joins <$> mapM (assert isMessageContract ExpectedMessageContract >=> pure . messageContracts) vlus
   return (behaviorContract @_ @v (Set.toList adrs))
eval exp@(Syntax.Scheme.Flat e _) = do
   flat <$> (store exp . Domain.Contract.Flat =<< eval e)
eval exp@(Mon labels contract value _) = do  
   contract' <- eval contract
   value'    <- eval value
   mon exp labels contract' value'

eval e = Scheme.eval e
