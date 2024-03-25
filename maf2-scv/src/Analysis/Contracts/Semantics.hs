module Analysis.Contracts.Semantics(eval, ContractM) where

import Syntax.Scheme
import Analysis.Monad(alloc, writeAdr)
import Analysis.Contracts.Monad (ContractM)
import Domain.Contract (ContractDomain(..))
import Domain.Scheme.Actors.Contract (MessageContract(MessageContract))
import qualified Analysis.Symbolic.Semantics as Symbolic
import Control.Monad (zipWithM_)
import Analysis.Contracts.Behavior (behaviorContract)
import Domain.Contract.Store (ConAdr)

-- | This evaluation function extends 'Analysis.Symbolic.Semantics.eval' 
-- with support for contracts on actors.
eval :: ContractM m v c msg mb => Exp -> m v
eval (MsgC tag rcv payload comm _) =
   messageContract <$> (MessageContract <$> eval tag <*> eval rcv <*> eval payload <*> eval comm)
eval (BehC exs _) =  do
   adrs <- mapM (alloc @_ @_ @ConAdr) exs
   vlus <- mapM eval exs
   contracts <- mapM (messageContracts pure) vlus
   zipWithM_ writeAdr adrs contracts
   return (injectBehaviorContract (behaviorContract adrs))

eval e = Symbolic.eval e
