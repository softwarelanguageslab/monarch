{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE UndecidableSuperClasses #-}

module Analysis.SimpleActor.Monad
  ( ActorLocalT,
    MonadActor,
    MonadActorLocal (..),
    MonadMailbox (..),
    MonadMeta(..),
    MonadDynamic(..),
    ifMetaSet,
    receive,
    MonadSpawn,
    spawn,
    EvalM,
    runWithMailboxT,
    Error (..),
    ActorError,
    MetaT, 
    DynamicBindingT
  )
where

import Analysis.Monad hiding (EvalM, spawn)
import Analysis.Actors.Mailbox
import Analysis.Scheme.Prelude
  ( ActorDomain(..),
    SchemeDomain(..)
  )
import Analysis.Scheme.Monad (SchemeDomainM)
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.Monad.Join
import Control.Monad.Layer
import Control.Monad.Reader hiding (mzero)
import Control.Monad.State hiding (mzero)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe, fromJust)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Class
import Lattice (BottomLattice (bottom))
import Lattice.Class (Joinable)
import qualified Lattice.Class as L
import Syntax.AST
import Analysis.Monad.Fix (MonadFixpoint)
import Data.Kind (Type)
import Domain (SchemeDomain(Env))
import Lattice.Equal (EqualLattice)
import Domain.Scheme.Actors.Class (Pid(..))

------------------------------------------------------------
-- Errors
------------------------------------------------------------

-- TODO: BlameErorr should contain label not a string!
data Error = MatchError | InvalidArgument | BlameError String
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

-- | Reader-like monadic interface that carries 
-- meta-annotations.
class Monad m => MonadMeta m where 
   isMeta :: m Bool
   withMetaSet :: m a -> m a 
   withMetaUnset :: m a -> m a

-- | Monad for scoped dynamic bindings
-- in the target language (à la Racket "parmetrize")
class Monad m => MonadDynamic α m | m -> α where  
   withExtendedDynamic :: [(String, α)] -> m a -> m a
   lookupDynamic :: String -> m α

type MonadSpawn v (m :: Type -> Type) = (ARef v ~ Pid Exp [Span])

type MonadActor v m = (MonadMailbox v m, MonadSpawn v m, MonadActorLocal v m, MonadMeta m, MonadDynamic (Adr v) m)

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


instance 
 {-# OVERLAPPABLE #-} 
 (MonadLayer t , 
   Monad (t m),
  MonadMeta m) => 
 MonadMeta (t m) where  
   
  isMeta = upperM isMeta
  withMetaSet = lowerM withMetaSet
  withMetaUnset = lowerM withMetaUnset

instance 
 {-# OVERLAPPABLE #-}
 (MonadLayer t,
  Monad (t m),
  MonadDynamic α m) 
 => MonadDynamic α (t m) where   

 withExtendedDynamic bds = lowerM (withExtendedDynamic bds)
 lookupDynamic = upperM . lookupDynamic

spawn :: EvalM v m => Exp -> (ARef v -> m v) -> m (ARef v)
spawn e f = do 
   ctx <- getCtx
   let s = Pid e ctx
   -- NOTE: we `mjoin` with `return nil` here 
   -- since the computation from `(f s)` might 
   -- not terminate (i.e., return `Bottom`)
   withSelf s (mjoin (f s) (return nil) >> return s)

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
    CtxM m [Span],
    Domain (Esc m) DomainError,
    Domain (Esc m) Error,
    SchemeDomainM Exp v m,
    ActorDomain v,
    EqualLattice v,
    Show v
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

-- | Meta-flag monad
newtype MetaT m a = MetaT (ReaderT Bool m a) 
                  deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl, MonadLayer, MonadJoin, MonadReader Bool, MonadCache)

instance (Monad m) => MonadMeta (MetaT m) where
   isMeta = ask
   withMetaSet = local (const True)
   withMetaUnset = local (const False)

ifMetaSet :: MonadMeta m => (m a -> m a) -> m a -> m a
ifMetaSet f ma = isMeta >>= (\b -> if b then f ma else ma)

-- | Dynamic binding monad
newtype DynamicBindingT v m a = DynamicBindingT (ReaderT (Map String (Adr v)) m a)
                              deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl, MonadLayer, MonadJoin, MonadCache)

instance (Monad m, α ~ Adr v) => MonadDynamic α (DynamicBindingT v m) where  
   lookupDynamic vr = DynamicBindingT $ asks (fromJust . Map.lookup vr)
   withExtendedDynamic bds (DynamicBindingT ma) = DynamicBindingT $ local (Map.union (Map.fromList bds)) ma
   
------------------------------------------------------------
-- Effect registration for global mailboxes
------------------------------------------------------------

type Dep v = ARef v

instance (MonadMailbox v m, Show v, WorkListM m cmp, DependencyTrackingM m cmp (Dep v)) => MonadMailbox v (IntraAnalysisT cmp m) where
  send to msg = trigger @_ @cmp to >> lift (send to msg)
  receive' ref = dependent @_ @cmp ref >> upperM (receive' ref)

------------------------------------------------------------
-- Error abstractions
------------------------------------------------------------

data ActorError = ActorDomainError DomainError | ActorError Error
  deriving (Eq, Ord, Show)

instance Domain (Set ActorError) DomainError where
  inject = Set.singleton . ActorDomainError

instance Domain (Set ActorError) Error where
  inject = Set.singleton . ActorError
