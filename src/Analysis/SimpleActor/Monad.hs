{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE UndecidableSuperClasses #-}

module Analysis.SimpleActor.Monad (Error (..), MonadActor, MonadActorLocal (..), MonadMailbox (..), MonadSpawn, EvalM, spawn) where

import Analysis.Actors.Mailbox
import Analysis.Monad.Allocation
import Analysis.Monad.Environment
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

------------------------------------------------------------
-- Errors
------------------------------------------------------------

data Error = MatchError | InvalidArgument | BlameError Label

------------------------------------------------------------
-- Monad typeclasses
------------------------------------------------------------

class (MonadJoin m) => MonadMailbox v m | m -> v where
  send :: ARef v -> v -> m ()
  receive :: (BottomLattice a, Joinable a) => ARef v -> (v -> m a) -> m a

class MonadSpawn v m | m -> v where
  spawn' :: (ARef v -> m a) -> m (a, ARef v)

class MonadActorLocal v m | m -> v where
  withSelf :: ARef v -> m a -> m a
  getSelf :: m (ARef v)
  terminate :: m ()
  waitUntilAllFinished :: m ()

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
    MonadJoin (t m),
    MonadLayer t
  ) =>
  MonadMailbox v (t m)
  where
  send ref = upperM . send ref
  receive ref f = control (\peel -> receive ref (peel . f))


instance
 {-# OVERLAPPABLE #-}
 (MonadSpawn v m,
  Monad m,
  Monad (t m),
  MonadTransControl t) =>  MonadSpawn v (t m) where
   spawn' f = do
         -- capture current's layer monadic state
         st <- capture
         -- run the lower `spawn` function 
         (eff', ref')  <- lift $ spawn' ((`suspend` st) . f)
         -- resume the current layer by combining it with the 
         -- requested reference
         (,ref') <$> resume eff'

spawn :: (Functor m, MonadSpawn v m) => (ARef v -> m ()) -> m (ARef v)
spawn f = fmap snd (spawn' f)

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
  deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer)

deriving instance (ref ~ ARef v, Ord ref, MonadJoin m, Mailbox mb v, Joinable mb) => MonadJoin (GlobalMailboxT v mb m)

instance (MonadJoin m, Joinable mb, Mailbox mb v, Ord v, ref ~ ARef v, Ord ref) => MonadMailbox v (GlobalMailboxT v mb m) where
  send ref v = GlobalMailboxT $ modify (Map.insertWith (const . enqueue v) ref (enqueue v empty))
  receive ref f = GlobalMailboxT $ gets (Set.map fst . dequeue . fromMaybe empty . Map.lookup ref) >>= mjoinMap (runGlobalMailboxT' . f)

-- | Actor-local semantics
newtype ActorLocalT v m a = ActorLocalT {runActorLocalT' :: ReaderT (ARef v) m a}
  deriving (Applicative, Monad, Functor, MonadTrans, MonadLayer, MonadJoin)

instance (MonadJoin m) => MonadActorLocal v (ActorLocalT v m) where
  getSelf = ActorLocalT ask
  withSelf r = ActorLocalT . local (const r) . runActorLocalT'
  terminate = mzero -- no particular behavior in the abstract
  waitUntilAllFinished = return () -- no behavior in the abstract
