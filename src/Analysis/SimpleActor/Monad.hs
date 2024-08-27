{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE UndecidableSuperClasses #-}

module Analysis.SimpleActor.Monad
  ( ActorLocalT,
    MonadActor,
    MonadActorLocal (..),
    MonadMailbox (..),
    receive,
    MonadSpawn,
    spawn,
    EvalM,
    runWithMailboxT,
    Error (..),
    ActorError,
  )
where

import Analysis.Actors.Mailbox
import Analysis.Monad (DependencyTrackingM)
import Analysis.Monad.Allocation
import Analysis.Monad.Cache
import Analysis.Monad.DependencyTracking (trigger)
import Analysis.Monad.Environment
import Analysis.Monad.IntraAnalysis (IntraAnalysisT)
import Analysis.Monad.Store
import Analysis.Scheme.Prelude
  ( DependencyTrackingM (dependent),
    WorkListM,
  )
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.Monad.Join
import Control.Monad.Layer
import Control.Monad.Reader hiding (mzero)
import Control.Monad.State hiding (mzero)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Class
import Domain.SimpleActor.Class
import Lattice (BottomLattice (bottom))
import Lattice.Class (Joinable)
import qualified Lattice.Class as L
import Syntax.AST
import Debug.Trace
import Analysis.Monad.Fix (MonadFixpoint)
import Data.Kind (Type)

------------------------------------------------------------
-- Errors
------------------------------------------------------------

data Error = MatchError | InvalidArgument | BlameError Label
  deriving (Eq, Ord, Show)

------------------------------------------------------------
-- Monad typeclasses
------------------------------------------------------------

class (BottomLattice v, Joinable v) => MonadMailbox v m where
  send :: ARef v -> v -> m ()
  receive' :: ARef v -> m v

receive :: (MonadMailbox v m, Monad m) => ARef v -> (v -> m a) -> m a
receive ref = (receive' ref >>=)

class MonadActorLocal v m | m -> v where
  withSelf :: ARef v -> m a -> m a
  getSelf :: m (ARef v)
  terminate :: m ()
  waitUntilAllFinished :: m ()

type MonadSpawn v (m :: Type -> Type) = (ARef v ~ Span)

type MonadActor v m = (MonadMailbox v m, MonadSpawn v m, MonadActorLocal v m)

------------------------------------------------------------
-- Layered instances
------------------------------------------------------------

instance {-# OVERLAPPABLE #-} (MonadActorLocal v m, Monad m, MonadLayer t) => MonadActorLocal v (t m) where
  withSelf c = lowerM (withSelf c)
  getSelf = upperM getSelf
  terminate = upperM terminate
  waitUntilAllFinished = upperM waitUntilAllFinished

instance
  {-# OVERLAPPABLE #-}
  ( MonadMailbox v m,
    MonadLayer t,
    Monad m
  ) =>
  MonadMailbox v (t m)
  where
  send ref = upperM . send ref
  receive' = upperM . receive'

spawn :: EvalM v m => Span -> (ARef v -> m v) -> m (ARef v) 
spawn s f = withSelf s (mjoin (f s) (return nil) >> return s)

------------------------------------------------------------
-- Monad
------------------------------------------------------------

-- | Evaluation monad
type EvalM v m =
  ( MonadJoin m,
    EnvM m (Adr v) (Env v),
    AllocM m Ide (Adr v),
    StoreM m (Adr v) v,
    MonadActor v m,
    MonadEscape m,
    MonadFixpoint m Exp v,
    Domain (Esc m) DomainError,
    Domain (Esc m) Error,
    ValueDomain v
  )

------------------------------------------------------------
-- Instances
------------------------------------------------------------

-- | Local mailbox, meant to be added above `GlobalMailboxT`
-- and above any non-determinism and caching effects.
-- newtype LocalMailboxT v mb m a = LocalMailboxT (StateT (Maybe mb) m a)
--                                deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer)
--
-- instance (Monad m) => MonadMailbox v (LocalMailboxT v mb m) where
-- instance (Monad m) => MonadSpawn v (LocalMailboxT v mb m) where

-- | Global mailbox parametrized by a mailbox abstraction
newtype GlobalMailboxT v mb m a = GlobalMailboxT {_runGlobalMailboxT' :: StateT (Map (ARef v) mb) m a}
  deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer, MonadCache)

deriving instance (ref ~ ARef v, Ord ref, MonadJoin m, Mailbox mb v, Joinable mb) => MonadJoin (GlobalMailboxT v mb m)

instance (Monad m, BottomLattice v, Joinable v, Mailbox mb v, Ord v, ref ~ ARef v, Ord ref) => MonadMailbox v (GlobalMailboxT v mb m) where
  send ref v = GlobalMailboxT $ modify (Map.insertWith (const . enqueue v) ref (enqueue v empty))

  -- NOTE: we cannot use `MonadJoin` here since we have passed the `JoinT` layer in the monadic stack,
  -- thus we use a `Joinable` instance to join the values ourselves. This should **not** happen
  -- since the `JoinT` and `NonDetT` layers are normally responsible for providing this behavior.
  -- TODO: investigate how we can prevent monadic computations to be transported down in the stack
  -- so that they no longer skip the `JoinT` layer.
  receive' ref = GlobalMailboxT $ gets (foldr L.join bottom . Set.toList . Set.map fst . dequeue . fromMaybe empty . Map.lookup ref)

runWithMailboxT :: forall v mb m a . GlobalMailboxT v mb m a -> m (a, Map (ARef v) mb)
runWithMailboxT (GlobalMailboxT ma) = runStateT ma Map.empty

-- | Actor-local semantics
newtype ActorLocalT v m a = ActorLocalT {runActorLocalT' :: ReaderT (ARef v) m a}
  deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl, MonadLayer, MonadJoin, MonadCache)

instance (MonadJoin m) => MonadActorLocal v (ActorLocalT v m) where
  getSelf = ActorLocalT ask
  withSelf r = ActorLocalT . local (const r) . runActorLocalT'
  terminate = mzero -- no particular behavior in the abstract
  waitUntilAllFinished = return () -- no behavior in the abstract

------------------------------------------------------------
-- Effect registration for global mailboxes
------------------------------------------------------------

type Dep v = ARef v

instance (MonadMailbox v m, Show v, WorkListM m cmp, DependencyTrackingM m cmp (Dep v)) => MonadMailbox v (IntraAnalysisT cmp m) where
  send to msg = trigger @_ @cmp to >> lift (send to msg)
  receive' ref = traceShowId <$> (dependent @_ @cmp ref >> upperM (receive' ref))

------------------------------------------------------------
-- Error abstractions
------------------------------------------------------------

data ActorError = ActorDomainError DomainError | ActorError Error
  deriving (Eq, Ord, Show)

instance Domain (Set ActorError) DomainError where
  inject = Set.singleton . ActorDomainError

instance Domain (Set ActorError) Error where
  inject = Set.singleton . ActorError
