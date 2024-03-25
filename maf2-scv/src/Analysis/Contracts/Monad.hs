module Analysis.Contracts.Monad where


import Syntax.Scheme
import Analysis.Symbolic.Monad
import Analysis.Actors.Monad 
import Analysis.Monad (StoreM, AllocM)
import Domain.Contract (ContractDomain(..))
import Domain.Scheme.Actors.Contract (MessageContract)
import Analysis.Contracts.Behavior (BehaviorContract)
import Domain.Contract.Store(ConAdr)

type ContractM m v c msg mb = 
   (  StoreM m ConAdr (ContractAdr v) (MessageContract v),
      AllocM m Exp ConAdr (ContractAdr v),
      ContractDomain v c, ActorEvalM m v msg mb, SymbolicM m v,
      BehaviorContract c v (ContractAdr v))
