{-# LANGUAGE UndecidableInstances #-}
module Analysis.Contracts.Monad where

import Control.Monad.Layer
import Domain.Class (Domain(..))
import Syntax.Scheme
import Analysis.Actors.Monad
import Analysis.Monad (StoreM, AllocM)
import Domain.Contract (ContractDomain(..), Flat(..), Moα)
import Domain.Scheme.Actors.Contract (MessageContract)
import Domain.Contract.Behavior (MAdr)
import Control.Monad.DomainError
import qualified Data.Set as Set
import Data.Set (Set)
import Domain (ActorDomain, BoolDomain)
import Lattice (EqualLattice, CP)
import Analysis.Symbolic.Monad (SymbolicM)
import Control.Monad.Reader (ReaderT, MonadReader (..), asks, MonadTrans)
import Domain.Contract.Message (ContractMessageDomain)
import qualified Domain.Contract.Message as CMessage

data AssertionMessage = ExpectedMessageContract
   deriving (Eq, Ord, Show)

-- | Error types that could occur while evaluating 
-- the program with contracts
data Error = BlameError (Set String) -- ^ blame error, consisting of the party being blamed for the contract violation  
           | AssertionError AssertionMessage
           | NotAContract
           | WithLoc Error Span
           | DomainWrap DomainError  -- ^ errors originating from implementations of the domain
           deriving (Eq, Ord, Show)

-- | For a `Set` representation of errors we already have `Domain (Set Error) Error` (by the 'SetLattice').
-- This instance translates a `DomainError` (as defined in 'Control.Monad.DomainError') into `Set Error`.
instance Domain (Set Error) DomainError where
   inject = Set.singleton . DomainWrap


-- | Contract used in monitored contexts.
-- It is represent as a product of two lattices: a lattice representing 
-- the contract itself and another lattice representing the precense 
-- of the contract in the monitored context.
type Contract c b = (c, b)

-- | Tracks whether the current execution is monitored by a contract
class (BoolDomain b, Monad m) => MonadMonitoredContext c b m | m -> c b where
   withContractMonitor :: c -> m a -> m a
   monitoredBy :: m (Contract c b)
   isMonitored :: m b
   isMonitored = snd <$> monitoredBy 
   monitoredByContract :: m c
   monitoredByContract = fst <$> monitoredBy

type ContractM m v msg mb =
   (  -- Specialised stores
      StoreM m (MAdr v) (MessageContract v),
      StoreM m (FAdr v) (Flat v),
      StoreM m (OAdr v) (Moα v),
      -- Specialized allocations
      AllocM m Exp (MAdr v),
      AllocM m Exp (FAdr v),
      AllocM m Exp (OAdr v),
      -- Symbolic execution
      SymbolicM m v,
      -- Domains
      Domain (Esc m) Error,
      ContractDomain v,
      ActorDomain v,
      EqualLattice v,
      ContractMessageDomain msg,
      CMessage.Contract msg ~ v,
      -- Semantics monads
      ActorEvalM m v msg mb,
      MonadMonitoredContext v (CP Bool) m,
      SchemeM m v, Ord v)


------------------------------------------------------------
-- Instances
------------------------------------------------------------

newtype MonitoredContextT c m a =
      MonitoredContextT { runMonitoredContextT' :: ReaderT (Contract c (CP Bool)) m a }
   deriving (Monad, Applicative, Functor, MonadReader (Contract c (CP Bool)), MonadTrans, MonadLayer)

instance Monad m => MonadMonitoredContext c (CP Bool) (MonitoredContextT c m) where
  withContractMonitor c = local (const (c, inject True))
  monitoredBy = ask

instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadMonitoredContext c b m) => MonadMonitoredContext c b (t m) where
   withContractMonitor c = lowerM (withContractMonitor c)
   monitoredBy = upperM monitoredBy
