module Analysis.Contracts.Monad where

import Domain.Class (Domain(..))
import Syntax.Scheme
import Analysis.Symbolic.Monad
import Analysis.Actors.Monad 
import Analysis.Monad (StoreM, AllocM)
import Domain.Contract (ContractDomain(..), Flat(..))
import Domain.Scheme.Actors.Contract (MessageContract)
import Analysis.Contracts.Behavior (BehaviorContract, MAdr)
import Domain.Contract.Store(ConAdr, FlaAdr)
import Control.Monad.DomainError
import qualified Data.Set as Set
import Data.Set (Set)

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

type ContractM m v = 
   (  StoreM m ConAdr (MAdr v) (MessageContract v),
      StoreM m FlaAdr (FAdr v) (Flat v),
      AllocM m Exp ConAdr (MAdr v),
      AllocM m Exp FlaAdr (FAdr v),
      Domain (Esc m) Error,
      ContractDomain v, SchemeM m v)
