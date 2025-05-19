{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE UndecidableSuperClasses #-}
{-# LANGUAGE DeriveGeneric #-}

module Analysis.SimpleActor.Monad
  ( MonadActor,
    MonadMeta(..),
    MonadDynamic(..),
    ifMetaSet,
    MonadSpawn,
    spawn,
    EvalM,
    Error (..),
    ActorError,
    MetaT,
    DynamicBindingT,
    DynamicBindingT',
    runWithDynamic,
    runDynamicT,
    isMatchError,
    Cmp(..),
    Ctx(..),
    MonadIndexedMailbox(..)
  )
where

import Analysis.Monad hiding (EvalM, spawn)
import Analysis.Scheme.Monad (SchemeDomainM)
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.Monad.Join
import Control.Monad.Layer
import Control.Monad.Reader hiding (mzero)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Class
import Lattice (BottomLattice (bottom))
import Syntax.AST
import qualified Syntax.Ide as Ide
import Analysis.Monad.Fix (MonadFixpoint)
import Domain (SchemeDomain(Env))
import Lattice.Equal (EqualLattice)
import Domain.Core.BoolDomain.Class (BoolDomain (true, false, boolTop))
import Lattice.Split (SplitLattice)
import Syntax.Span (SpanOf(..))
import Syntax.FV
import Analysis.Symbolic.Monad (SymbolicM)
import Domain.Scheme hiding (Exp, Env)
import Domain.Scheme.Store (StoreVal(..), ForAllStored)
import Domain.Actor
import Analysis.Actors.Monad
import Control.DeepSeq
import GHC.Generics
import Analysis.Monad.AbstractCount (MonadAbstractCount)
import Control.Monad.State (StateT, MonadState, modify, gets)
import qualified Lattice.Class as L
import Analysis.Actors.Mailbox (Mailbox)
import qualified Analysis.Actors.Mailbox as MB

------------------------------------------------------------
-- 'Components'
------------------------------------------------------------

data Cmp = FuncBdy  !Exp  -- ^ a function call component contains a lambda   
         | ActorExp !Exp  -- ^ a newly spawned actor
      deriving (Show, Eq, Ord)

instance NFData Cmp where
   rnf x = x `seq` ()

instance SpanOf Cmp where
   spanOf (FuncBdy e) = spanOf e
   spanOf (ActorExp e) = spanOf e

instance FreeVariables Cmp where
   fv (FuncBdy (Lam xs e _)) = Set.union (Set.fromList (map Ide.name xs)) (fv e)
   fv (FuncBdy _) = error "imposible value"
   fv (ActorExp e) = fv e

------------------------------------------------------------
-- Context sensitivity
------------------------------------------------------------

-- | Context for function calls and address allocations
--
-- Currently addresses and function call components are sensitive
-- to the actor they were created in.
newtype Ctx = Ctx { ref :: Pid Exp Ctx  } deriving (Ord, Eq, Show)

------------------------------------------------------------
-- Errors
------------------------------------------------------------

-- TODO: BlameErorr should contain label not a string!
data Error = MatchError | InvalidArgument | BlameError String | ArityMismatch Int Int | NotAnActorReference | NotAFunction Span
  deriving (Eq, Ord, Show)


instance NFData Error where
   rnf x = x `seq` ()

class (SplitLattice e) => SimpleActorErrorDomain e where
   isMatchError :: (BottomLattice b, BoolDomain b) => e -> b
instance SimpleActorErrorDomain (Set ActorError) where
   isMatchError es
      | Set.size es == 0 = bottom
      | Set.size es == 1 && Set.member (ActorError MatchError) es = true
      | not (Set.member (ActorError MatchError) es) = false
      | otherwise = boolTop


------------------------------------------------------------
-- Monad typeclasses
------------------------------------------------------------


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
   withDynamic :: (Map String α -> Map String α) -> m a -> m a
   getDynamic :: m (Map String α)


-- | Monad for spawning new processes. Each process is uniquely identified by their
-- expression and environment.
class MonadSpawn v k m | m -> v k where
    spawn :: Exp -> Env v -> Ctx -> m (ARef v)

-- | Trivial instance for layered monad transformers
instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadSpawn v k m) => MonadSpawn v k (t m) where
  spawn e env = upperM . spawn e env

type MonadActor v m = (MonadMailbox v m, MonadSpawn v Ctx m, MonadActorLocal v m, MonadMeta m, MonadDynamic (Adr v) m)

-- | Global mailbox indexed per contributor so that strong updates of the global mailbox are allowed whenever
-- there are no conflicting interleavings
class MonadIndexedMailbox ref mb m | m -> ref mb  where
  joinMailboxes :: ref -- ^ contributor
                -> ref -- ^ receiver
                -> mb  -- ^ the mailbox to join
                -> m ()

  putMailboxes :: ref -- ^ contributor
               -> ref -- ^ receiver
               -> mb  -- ^ the mailbox to put
               -> m ()

------------------------------------------------------------
-- Layered instances
------------------------------------------------------------

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
 withDynamic f = lowerM (withDynamic f)
 getDynamic = upperM getDynamic

instance
  {-# OVERLAPPABLE #-}
  (Monad m, MonadLayer t, MonadIndexedMailbox ref mb m) =>
  MonadIndexedMailbox ref mb (t m) where

  joinMailboxes contributor recv = upperM . joinMailboxes contributor recv
  putMailboxes contributor recv = upperM . putMailboxes contributor recv


------------------------------------------------------------
-- Monad
------------------------------------------------------------

-- | Evaluation monad
type EvalM v m =
  ( MonadJoinable m,
    EnvM m (Adr v) (Env v),
    AllocM m Ide (Adr v),
    StoreM (Adr v) (StoreVal v) m,
    MonadActor v m,
    MonadEscape m,
    MonadFixpoint m Cmp v,
    CtxM m Ctx,
    Domain (Esc m) DomainError,
    Domain (Esc m) Error,
    BottomLattice (Esc m),
    SimpleActorErrorDomain (Esc m),
    SchemeDomainM Exp v m,
    ActorDomain v,
    EqualLattice v,
    Show v,
    SymbolicM (Adr v) m v,
    MonadIO m,
    Show (Env v),
    MonadAbstractCount (ARef v) m,
    -- Domain constraints
    ForAllStored Show v,
    ForAllStored Eq v,
    ForAllStored Ord v
  )

------------------------------------------------------------
-- Instances
------------------------------------------------------------

-- | Meta-flag monad
newtype MetaT m a = MetaT (ReaderT Bool m a)
                  deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl, MonadLayer, MonadJoinable, MonadReader Bool, MonadCache)

instance (Monad m) => MonadMeta (MetaT m) where
   isMeta = ask
   withMetaSet = local (const True)
   withMetaUnset = local (const False)

ifMetaSet :: MonadMeta m => (m a -> m a) -> m a -> m a
ifMetaSet f ma = isMeta >>= (\b -> if b then f ma else ma)


newtype DynamicBindingT' adr m a = DynamicBindingT (ReaderT (Map String adr) m a)
                              deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl, MonadLayer, MonadJoinable, MonadCache)

-- | Dynamic binding monad
type DynamicBindingT v m a = DynamicBindingT' (Adr v) m a

instance (Monad m) => MonadDynamic adr (DynamicBindingT' adr m) where
   lookupDynamic vr = DynamicBindingT $ asks (fromMaybe (error $ "dynamic binding " ++ show vr ++ " not found") . Map.lookup vr)
   withExtendedDynamic bds (DynamicBindingT ma) = DynamicBindingT $ local (Map.union (Map.fromList bds)) ma
   withDynamic f (DynamicBindingT ma) = DynamicBindingT $ local f ma
   getDynamic = DynamicBindingT ask

runWithDynamic :: DynamicBindingT' adr m a -> m a
runWithDynamic (DynamicBindingT m) = runReaderT m Map.empty

runDynamicT:: Map String adr -> DynamicBindingT' adr m a -> m a
runDynamicT env (DynamicBindingT m) = runReaderT m env

-- | Mailboxes indexed by contributors
newtype MailboxContributorIndexedT ref v mb m a = MailboxContributorIndexedT (StateT (Map ref (Map ref mb)) m a)
                                                deriving (MonadState (Map ref (Map ref mb)), Applicative, Functor, Monad, MonadLayer, MonadCache)

instance (Monad m, L.Joinable mb, Ord ref) => MonadIndexedMailbox ref mb (MailboxContributorIndexedT ref v mb m) where
  joinMailboxes contributor recv mb = modify (Map.insertWith L.join recv (Map.singleton contributor mb))
  putMailboxes contributor recv mb = modify (\mbs -> Map.insert recv (Map.insert contributor mb $ fromMaybe Map.empty $ Map.lookup recv mbs) mbs)

-- Indexed mailboxes behave like one global mailbox when looked up
instance (Ord ref, Mailbox mb v, L.Joinable mb, L.BottomLattice mb, Monad m) => MonadMailbox' ref mb (MailboxContributorIndexedT ref v mb m) where
  getMailbox ref = gets (maybe MB.empty (L.joinMap snd . Map.toList) . Map.lookup ref)
  getMailboxes =  gets (fmap (L.joinMap snd . Map.toList))

------------------------------------------------------------
-- Error abstractions
------------------------------------------------------------

data ActorError = ActorDomainError DomainError | ActorError Error
  deriving (Eq, Ord, Show, Generic)

instance NFData ActorError

instance Domain (Set ActorError) DomainError where
  inject = Set.singleton . ActorDomainError

instance Domain (Set ActorError) Error where
  inject = Set.singleton . ActorError

