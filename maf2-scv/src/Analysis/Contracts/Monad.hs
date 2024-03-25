module Analysis.Contracts.Monad where


import Syntax.Scheme
import Analysis.Symbolic.Monad
import Analysis.Actors.Monad 
import Analysis.Monad (StoreM, AllocM)
import Domain.Contract (ContractDomain(..))
import Domain.Scheme.Actors.Contract (MessageContract)
import Analysis.Contracts.Behavior (BehaviorContract, MAdr)
import Domain.Contract.Store(ConAdr)

type ContractM m v msg mb = 
   (  StoreM m ConAdr (MAdr v) (MessageContract v),
      AllocM m Exp ConAdr (MAdr v),
      ContractDomain v, ActorEvalM m v msg mb, SymbolicM m v)
