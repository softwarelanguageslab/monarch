{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE UndecidableSuperClasses #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.SimpleActor.Monad (ActorLocalT, Error (..), MonadActor, MonadActorLocal (..), MonadMailbox (..), MonadSpawn, EvalM, spawn, ActorError) where

import Analysis.Actors.Mailbox
import Analysis.Monad.Allocation
import Analysis.Monad.Cache
import Analysis.Monad.Environment
import Analysis.Monad.Map (MapM)
import Analysis.Monad.Store
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.Monad.Join
import Control.Monad.Layer
import Control.Monad.Lift.Class
import Control.Monad.Reader hiding (mzero)
import Control.Monad.State hiding (mzero)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import qualified Data.Set as Set
import Domain.Class
import Domain.SimpleActor.Class
import Lattice.Class (BottomLattice, Joinable)
import Syntax.AST
import Lattice (Lattice)
import Analysis.Monad.ComponentTracking (call, ComponentTrackingM)
import Data.Functor (($>))
import Data.Set (Set)
import qualified Data.Set as Set
import Analysis.Monad.IntraAnalysis (IntraAnalysisT)
import Analysis.Monad (DependencyTrackingM)
import Analysis.Monad.DependencyTracking (trigger)
import Analysis.Scheme.Prelude (WorkListM)
import Analysis.Scheme.Prelude (DependencyTrackingM(dependent))

------------------------------------------------------------
-- Errors
------------------------------------------------------------

data Error = MatchError | InvalidArgument | BlameError Label
           deriving (Eq, Ord, Show)

------------------------------------------------------------
-- Monad typeclasses
------------------------------------------------------------

class MonadMailbox v m  where
  send :: ARef v -> v -> m ()
  receive :: (BottomLattice a, Joinable a) => ARef v -> (v -> m a) -> m a

class MonadActorLocal v m | m -> v where
  withSelf :: ARef v -> m a -> m a
  getSelf :: m (ARef v)
  terminate :: m ()
  waitUntilAllFinished :: m ()

type MonadSpawn v m = (MonadCache m, ComponentTrackingM m (Key m Exp) ,MapM (Key m Exp) (Val m v) m, ARef v ~ Span)

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
  ( LayerConstraint Joinable t,
    LayerConstraint BottomLattice t,
    MonadMailbox v m,
    MonadTransControl t,
    MonadLayer t,
    Monad m
  ) =>
  MonadMailbox v (t m)
  where
  send ref = upperM . send ref
  receive ref f = control (\peel -> receive ref (peel . f))


spawn :: forall v m . (Lattice v, MonadJoin m, MonadSpawn v m) => Span -> (ARef v -> m Exp) -> m (ARef v)
spawn s f = (f s >>= call @v) $> s

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
newtype GlobalMailboxT v mb m a = GlobalMailboxT {runGlobalMailboxT' :: StateT (Map (ARef v) mb) m a}
  deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer, MonadCache)

deriving instance (ref ~ ARef v, Ord ref, MonadJoin m, Mailbox mb v, Joinable mb) => MonadJoin (GlobalMailboxT v mb m)

instance (MonadJoin m, Joinable mb, Mailbox mb v, Ord v, ref ~ ARef v, Ord ref) => MonadMailbox v (GlobalMailboxT v mb m) where
  send ref v = GlobalMailboxT $ modify (Map.insertWith (const . enqueue v) ref (enqueue v empty))
  receive ref f = GlobalMailboxT $ gets (Set.map fst . dequeue . fromMaybe empty . Map.lookup ref) >>= mjoinMap (runGlobalMailboxT' . f)

-- | Actor-local semantics
newtype ActorLocalT v m a = ActorLocalT {runActorLocalT' :: ReaderT (ARef v) m a}
  deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl ,MonadLayer, MonadJoin, MonadCache)

instance (MonadJoin m) => MonadActorLocal v (ActorLocalT v m) where
  getSelf = ActorLocalT ask
  withSelf r = ActorLocalT . local (const r) . runActorLocalT'
  terminate = mzero -- no particular behavior in the abstract
  waitUntilAllFinished = return () -- no behavior in the abstract

------------------------------------------------------------
-- Effect registration for global mailboxes
------------------------------------------------------------

type Dep v = ARef v

instance (MonadMailbox v m, WorkListM m cmp, Joinable cmp, BottomLattice cmp, DependencyTrackingM m cmp (Dep v)) => MonadMailbox v (IntraAnalysisT cmp m)  where
   send to msg = trigger @_ @cmp to >> lift (send to msg)
   receive ref f = dependent @_ @cmp ref >> control (\peel -> receive ref (peel . f))

------------------------------------------------------------
-- Error abstractions
------------------------------------------------------------

data ActorError = ActorDomainError DomainError | ActorError Error
               deriving (Eq, Ord, Show)

instance Domain (Set ActorError) DomainError where    
   inject = Set.singleton . ActorDomainError
instance Domain (Set ActorError) Error where 
   inject = Set.singleton . ActorError
