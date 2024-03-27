module Analysis.Contracts.Monad where

import Domain.Class (Domain(..))
import Syntax.Scheme
import Analysis.Actors.Monad 
import Analysis.Monad (StoreM, AllocM)
import Domain.Contract (ContractDomain(..), Flat(..), Moα)
import Domain.Scheme.Actors.Contract (MessageContract)
import Analysis.Contracts.Behavior (MAdr)
import Domain.Contract.Store(ConAdr, FlaAdr, MoαAdr)
import Control.Monad.DomainError
import qualified Data.Set as Set
import Data.Set (Set)
import Domain (ActorDomain)

data AssertionMessage = ExpectedMessageContract
   deriving (Eq, Ord, Show)

-- | Error types that could occur while evaluating 
-- the program with contracts
data Error = BlameError String      -- ^ blame error, consisting of the party being blamed for the contract violation  
           | AssertionError AssertionMessage 
           | DomainWrap DomainError  -- ^ errors originating from implementations of the domain
           deriving (Eq, Ord, Show)

-- | For a `Set` representation of errors we already have `Domain (Set Error) Error` (by the 'SetLattice').
-- This instance translates a `DomainError` (as defined in 'Control.Monad.DomainError') into `Set Error`.
instance Domain (Set Error) DomainError where   
   inject = Set.singleton . DomainWrap

type ContractM m v msg mb = 
   (  -- Specialised stores
      StoreM m ConAdr (MAdr v) (MessageContract v),
      StoreM m FlaAdr (FAdr v) (Flat v),
      StoreM m MoαAdr (OAdr v) (Moα v),
      -- Specialized allocations
      AllocM m Exp ConAdr (MAdr v),
      AllocM m Exp FlaAdr (FAdr v),
      AllocM m Exp MoαAdr (OAdr v),
      -- Domains
      Domain (Esc m) Error,
      ContractDomain v, 
      ActorDomain v,
      -- Semantics monads
      ActorEvalM m v msg mb,
      SchemeM m v)
