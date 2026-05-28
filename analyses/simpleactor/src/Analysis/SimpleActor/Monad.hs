{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE UndecidableSuperClasses #-}
{-# LANGUAGE DeriveGeneric #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}

module Analysis.SimpleActor.Monad
  ( -- * Typeclasses
    MonadActor,
    MonadMailbox(..),
    recvMsg,
    MonadDynamic(..),
    MonadSpawn,
    MonadApply(..),
    spawn,
    MonadModules(..),
    MonadFresh(..),
    EvalM,
    PrimM,
    -- * Transformers
    DynamicBindingT,
    DynamicBindingT',
    runWithDynamic,
    runDynamicT,
    -- * Messages
    Message,
    message,
    messageCtx, 
    messagePayload,
    -- * Errors
    Error (..),
    ActorError(..),
    isMatchError,
    -- * Misc
    Cmp(..),
    SimpleActorContext(..),
    runModuleCtxT,
    MailboxLabel(..),
  )
where

import Analysis.Monad hiding (EvalM, spawn)
import Analysis.Scheme.Monad (SchemeDomainM)
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.Monad.Join
import Control.Monad.Layer
import Control.Monad.Reader
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Class
import Lattice (BottomLattice (bottom), Joinable)
import Syntax.AST
import qualified Syntax.Ide as Ide
import Analysis.Monad.Fix (MonadFixpoint)
import Domain (SchemeDomain(Env))
import Lattice.Equal (EqualLattice)
import Domain.Core.BoolDomain.Class (true, false, boolTop, BoolDomain)
import Lattice.Split (SplitLattice)
import Syntax.Span (SpanOf(..))
import Syntax.FV
import Domain.Scheme hiding (Exp, Env)
import Domain.Scheme.Store (ForAllStored)
import Domain.Actor
import Analysis.Actors.Monad (MonadActorLocal)
import Control.DeepSeq
import GHC.Generics
import Control.Monad.Choice
-- import Analysis.Monad.AbstractCount (MonadAbstractCount)
import Data.Kind
import Analysis.Actors.Mailbox.Partitioned.Graph (PartitionedGraph)

------------------------------------------------------------
-- 'Components'
------------------------------------------------------------

data Cmp = FuncBdy  !Exp   -- ^ a function call component contains a lambda   
         | ActorExp !Exp   -- ^ a newly spawned actor
         | ReceiveExp !Exp -- ^ a receive block awaiting a message
      deriving (Show, Eq, Ord)

instance NFData Cmp where
   rnf x = x `seq` ()

instance SpanOf Cmp where
   spanOf (FuncBdy e) = spanOf e
   spanOf (ActorExp e) = spanOf e
   spanOf (ReceiveExp e) = spanOf e

instance FreeVariables Cmp where
   fv (FuncBdy (Lam xs _ e _)) = Set.union (Set.fromList (map Ide.name xs)) (fv e)
   fv (FuncBdy _) = error "imposible value"
   fv (ActorExp e) = fv e
   fv (ReceiveExp e) = fv e


------------------------------------------------------------
-- Labels
------------------------------------------------------------

-- | Labels are counters that are incremented through "monarch:count" calls
-- and are local to each actor meaning that each actor has its own count.
--
-- Based on these counts an "uncoverable" attribute is resolved by taking
-- the maximum of all counts associated with a particular label and checking
-- the comparison in the "uncoverable" attribute.
newtype MailboxLabel = MailboxLabel { getMailboxLabel :: String }
                       deriving (Ord, Eq, Show)

------------------------------------------------------------
-- Messages
------------------------------------------------------------

-- A message is a message payload + context
type Message v ctx = (v, ctx)

-- | Extract the message payload from the message
messagePayload :: Message v ctx -> v 
messagePayload = fst

-- | Extract the message context from the message
messageCtx :: Message v ctx -> ctx
messageCtx = snd

-- | Primary constructor for "Message"
message :: v -> ctx -> Message v ctx
message = (,)

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type PMB e v = PartitionedGraph e v

------------------------------------------------------------
-- Errors
------------------------------------------------------------

-- TODO: BlameError should contain label not a string!
data Error = MatchError | InvalidArgument | BlameError String Span | ArityMismatch Int Int | NotAnActorReference | NotAFunction Span
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


-- | Monad for scoped dynamic bindings
-- in the target language (à la Racket "parameterize")
class Monad m => MonadDynamic α m | m -> α where
   withExtendedDynamic :: [(String, α)] -> m a -> m a
   withExtendedDynamic bds = withDynamic (Map.union (Map.fromList bds))
   lookupDynamic :: String -> m α
   lookupDynamic nam = fromMaybe (error $ "dynamic environment, " ++ nam ++ " not found ") . Map.lookup nam <$> getDynamic
   withDynamic :: (Map String α -> Map String α) -> m a -> m a
   getDynamic :: m (Map String α)
   {-# MINIMAL withDynamic, getDynamic #-}

-- | Generate a fresh (symbolic) value
class MonadFresh v m | m -> v where 
    fresh :: SpanOf e => e -> m v

-- | Monad for spawning new processes. Each process is uniquely identified by their
-- expression and environment.
class MonadSpawn v k m | m -> v k where
    spawn :: Exp -> Env v -> k -> m (ARef v)

-- | Trivial instance for layered monad transformers
instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadSpawn v k m) => MonadSpawn v k (t m) where
  spawn e env = upperM . spawn e env

-- | Monad for sending and receiving messages. 
--
-- 'e' is the partition type used in the currently 
-- active partitioning scheme. 
-- 'ref' is the type of actor reference 
-- 'v' is the type of messages (those usually overlap with values in SimpleActor, hence the abbreviation) 
-- 'ctx' is an additional context added to the message alongside its payload
class MonadMailbox e ref v ctx m | m -> e ref v ctx where    
    -- | Send a message (first argument) to the given actor 
    -- identifier by the second argument.
    send :: ref -> v -> m ()
    -- | Suspends the actor and registers the given expression 
    -- as the message handler that is invoked with the next message 
    -- in the mailbox.
    select :: Exp
            -> Env v  -- ^ lexical environment 
            -> Map String (Adr v) -- ^ dynamic environment
            -> m a
    -- | Return the first messages in the mailbox and their corresponding updated mailboxes 
    recv :: m (Set (v, PMB e (Message v ctx)))
    -- | Set the current inbox to the given argument 
    putMailbox :: PMB e (Message v ctx) -> m ()


-- | Invoke the function in the first argument with the first message in the mailbox
recvMsg :: (MonadMailbox e ref v ctx m, MonadJoin m, Joinable a) => (v -> m a) -> m a
recvMsg f =
    recv >>= (mjoins . map (\(msg, mb') -> putMailbox mb' >> f msg) . Set.toList)

type MonadActor v k m =
  (MonadSpawn v k m,
   MonadActorLocal v m,
   MonadDynamic (Adr v) m)

------------------------------------------------------------
-- Layered instances
------------------------------------------------------------

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


instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadMailbox e ref v ctx m) => MonadMailbox e ref v ctx (t m) where
    send v = upperM . send v
    select expr env = upperM . select expr env
    recv = upperM recv
    putMailbox = upperM . putMailbox

instance {-# OVERLAPPABLE #-} (Monad m, MonadFresh v m, MonadLayer t) => MonadFresh v (t m) where
    fresh = upperM . fresh

------------------------------------------------------------
-- Configuration
------------------------------------------------------------

-- type family Partition ξ :: Type
-- type family AbstractDomain ξ :: Type
-- type family Ctx ξ :: Type 
-- type family MessageCtx ξ :: Type
--



------------------------------------------------------------
-- Monad
------------------------------------------------------------

-- | Errors in simple actor
type ErrorDomain e = (
        Domain e Error, 
        Domain e DomainError, 
        BottomLattice e, 
        SimpleActorErrorDomain e
    )

-- | Minimal set of constraints needed to evaluate the primitives
type PrimM' e v k m =
  ( MonadJoinable m,
    EnvM m (Adr v) (Env v),
    AllocM m Ide (Adr v),
    MonadMailbox e (ARef v) v () m,
    MonadActor v k m,
    CtxM m k,
    SimpleActorContext k,
    ErrorDomain (Esc m),
    SchemeDomainM Exp v m,
    ActorDomain v,
    EqualLattice v,
    MonadChoice v m,
    Show v,
    MonadFresh v m,
    -- SymbolicM (Adr v) m v,
    MonadIO m,
    Show (Env v),
    -- Domain constraints
    ForAllStored Show v,
    ForAllStored Eq v,
    ForAllStored Ord v
    -- Other monadic constraints
    -- MonadAbstractCount MailboxLabel BoundedCount m
  )

-- | Same as PrimM' but with access to the "apply" function
type PrimM :: Type -> Type -> Type -> (Type -> Type) -> Constraint
type PrimM e v k m = (
    PrimM' e v k m,
    MonadApply v m
  )

-- | Evaluation monad
type EvalM :: Type -> Type -> Type -> (Type -> Type) -> Constraint
type EvalM e v k m =
  ( PrimM' e v k m,
    MonadFixpoint m Cmp v )

------------------------------------------------------------
-- Contexts
------------------------------------------------------------

-- | Type class where all context types 'k' should adhere to
class SimpleActorContext k where
  -- | Push a call site onto the context
  pushCallSite :: Span -> k -> k

------------------------------------------------------------
-- Instances
------------------------------------------------------------

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

-------------------------------------------------------------
-- Function application semantics
-------------------------------------------------------------

class MonadApply v m | m -> v where
  -- | Applies the function in the second argument to the list
  -- of arguments in the third and returns its result
  applyFun :: Exp -> v -> [v] -> m v

-------------------------------------------------------------
-- Module context
-------------------------------------------------------------

class MonadModules v m | m -> v where
  -- | Looks up the identifier of the second argument
  -- in the namespace of the first
  lookupIdeInModule :: String -> String -> m v

-- | A module is a collection of functions
type Module v = Map String v
type Modules v = Map String (Module v)

newtype ModuleCtxT v m a = ModuleCtxT { runModuleCtxT' :: ReaderT (Modules v) m a}
                         deriving (Applicative, Monad, Functor, MonadTrans, MonadLayer, MonadReader (Modules v), MonadEscape)

runModuleCtxT :: Modules v -> ModuleCtxT v m a -> m a
runModuleCtxT modules = flip runReaderT modules . runModuleCtxT'
