-- | Fixpoint infrastructure shared with all analysis configurations
module Anaysis.SimpleActor.Fixpoint.Shared where

import Syntax.AST
import Analysis.SimpleActor.Fixpoint.Common
import Data.Map (Map)
import qualified Domain.Scheme.Class as Scheme
import GHC.Generics
import Control.DeepSeq (NFData)
import Control.Lens
import Lattice.Class (Joinable (join), Meetable(..), BottomLattice)
import qualified Lattice.Class as Lattice
import Data.Set (Set)
import qualified Domain.Scheme.Store as Store
import Analysis.SimpleActor.Monad (ActorError)
import Control.Monad.Escape (MayEscapeT)
import qualified Analysis.Symbolic.Monad as SCV
import qualified Domain.SimpleActor as Domain
import Analysis.Monad.AbstractCount (InftyCountT, AbstractCountT)
import Domain.Core.AbstractCount (AbstractCount)
import Control.Monad.Reader
import qualified Data.HashMap.Lazy as HashMap
import Control.Monad.Except (ExceptT)
import Control.Monad.State (StateT)
import Analysis.Monad (SetNonDetT)
import Analysis.Monad.Cache (CacheT)

-- The analysis consists of three fixpoints: 
--
-- * A fixpoint over intra-actor procedural calls which is 
-- necessary because internal calls can be recursive. 
-- * A fixpoint over actor behaviors, which is necessary because 
-- the mailbox abstraction might introduce loops and cause the 
-- analysis of a single actor to loop as well. 
-- * A fixpoint over actor systems, which is necessary to ensure 
-- that global effects (sends and receives) between actors are 
-- propagated and taken into account.
--
-- Each configuration can have a different monadic context,
-- however, the turn-based fixed point largely stays 
-- the same, except for some hooks (defined below)

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Beh = (Exp, ActorEnv, Map String (Store.VarAdr K))
type Err = Set ActorError

------------------------------------------------------------
-- Monadic contexts
------------------------------------------------------------

data Ctx = Ctx {
        -- | Lexical environment
        _env :: ActorEnv,
        -- | Dynamic bindings 
        _dyn :: Map String (Scheme.VaAdr ActorVlu),
        -- | Self
        _self :: ActorRef,
        -- | Additional context, for instance for k-cfa
        _ctx :: AdrCtx
    } deriving (Ord, Eq, Show, Generic)

instance NFData Ctx

$(makeLenses ''Ctx)

emptyCtx :: ActorRef -> Ctx
emptyCtx ref = Ctx HashMap.empty initialDynEnvironment ref (initialContext 1)

-- | Intra-turn analysis state
data State = State {
        -- | The inbox of the actor that is being analyzed.
        _inbox :: PMB
    } deriving (Ord, Eq, Show, Generic)


instance NFData State

instance Joinable State where
    join (State inbox1) (State inbox2) =
        State (Lattice.join inbox1 inbox2)
instance Meetable State where
    meet (State _) (State _) =
        error "NYI"
        -- State (Lattice.meet inbox1 inbox2) (Lattice.meet outbox1 outbox2)
instance BottomLattice State where
    bottom = State Lattice.bottom

$(makeLenses ''State)

-- | Inter-turn analysis state
data InterTurnState = InterTurnState {
        -- | Track the outgoing mail
        _outbox :: ActorMai
    } deriving (Ord, Eq, Show, Generic)

instance NFData InterTurnState
$(makeLenses ''InterTurnState)

-- | Inter-actor actor system state
data System = System {
        -- | All the mailboxes in the system 
        _mbs   :: ActorMai,
        -- | All of the reachable behaviors/turns indexed
        -- by each actor.
        _turns :: Map ActorRef (Set Turn),
        -- | The initial behaviors of an actor 
        _initialBeh :: Map ActorRef Beh
    } deriving (Ord, Eq, Show, Generic)

instance NFData System

------------------------------------------------------------
-- Turns and continuations
------------------------------------------------------------

data Turn = Turn {
    -- | The active behavior of the actor in that turn
    _behavior :: Cnt,
    -- | The state of the actor (its inboxes and outboxes)
    _state    :: State
    } deriving (Ord, Eq, Show, Generic)
instance NFData Turn

data Cnt = Become Beh | Terminated deriving (Ord, Eq, Show, Generic)
instance NFData Cnt

cntEither :: Either Beh a -> Cnt
cntEither = either Become (const Terminated)

$(makeLenses ''System)
$(makeLenses ''Turn)


------------------------------------------------------------
-- Monadic contexts
------------------------------------------------------------

-- Intra-analysis

-- | Intra-procedural fixpoint: monadic context used for analyzing 
-- a single function call.
type ProcT m = (
        -- escaping control flow, primarily used for handling errors
        MayEscapeT Err (
        -- the path constraint is also part of the context and is cached
        SCV.FormulaT Domain.SymVar ActorVlu (
        -- abstract count for symbolic variables
        AbstractCountT Domain.SymVar AbstractCount (
        -- the evaluation context, includes a self-reference, lexical and dynamic environment.
        ReaderT Ctx m
     ))))

------------------------------------------------------------

-- | Intra-actor fixpoint: monadic context used for analyzing a single 
-- turn of an actor.
type IntraT m = (
        -- allows returning from the analysis when ending a turn (i.e., when the 'become' statement is reached, 
        -- or when a 'receive' statement is evaluated). 
        ExceptT Beh (
        -- the state of the actor (inbox and outbox) is tracked in this monad.
        StateT State (
        -- the intra-actor analysis is path-sensitive meaning that it tracks 
        -- inbox content independently for each path through the actor. 
        SetNonDetT (
        CacheT (
        StateT InterTurnState m
    )))))

-- ************************************************************ 
-- The two stacks defined above jointy define the monadic context 
-- for analyzing a single turn of an actor.
--
-- These stacks do not define the behavior of the store, these 
-- have to be defined as lower layers together with hooks (defined below). 
--
-- This precludes the analysis from being configured in a 'local store'
-- configuration as this requires that another layer is added 
-- to the intra-turn stack.
-- ************************************************************ 



