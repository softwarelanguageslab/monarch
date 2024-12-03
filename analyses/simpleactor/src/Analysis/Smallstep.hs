{-# LANGUAGE RecordWildCards #-}
-- | Small-step semantics for abstract concolic execution. 
--
-- It is designed to work with any domain but only implemented 
-- for a specific one. 
module Analysis.Smallstep where

import Syntax.AST
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.Reader.Class
import Control.Monad.Reader (ReaderT)
import Control.Monad.Layer (MonadTrans (lift))
import Lattice.Class (PartialOrder (subsumes))
import Lattice.SetLattice ()
import RIO.Prelude
import Domain.Scheme.Store (EnvAdr (..))
import Domain.SimpleActor (ActorValue)
import Domain.Symbolic.Class (SymbolicValue(..))
import Analysis.Scheme.Primitives (initialEnv)
import Domain.Scheme.Class hiding (Exp, Env, Adr)
import Data.Maybe (fromJust)
import Analysis.SimpleActor.Semantics (injectLit, initialSto, allPrimitives)
import Symbolic.AST (Formula (..), emptyFormula, conjunction)
import Lattice (justOrBot)
import Control.Monad.Join (cond)

import Debug.Trace

------------------------------------------------------------
-- Syntax verification
------------------------------------------------------------

-- | The small-step machine only supports programs written 
-- in the ANF style. The script "racket/run/translate-anf.rkt"
-- should already take care of this, but errors might occur. 
-- This function is more of a sanity check.
isANF :: Exp -> Bool
isANF = undefined

------------------------------------------------------------
-- Value Domain
------------------------------------------------------------

-- | Values from the value domain, this combines 
-- a symbolic with an abstract value.
type Val = ActorValue [Span]

-- | Program values
type PVal = Abstract Val

-- | Symbolic values
type SymVal = Symbolic Val

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | Allocation-site addresses with context
type Adr = EnvAdr [Span]

-- | Continuation store
data KAdr = KAdr Span [Span] | Hlt
          deriving (Ord, Eq, Show)

-- | Symbolic variable
type SymVar = Adr

-- | An environment
type Env = Map String Adr

-- | Store
type Sto = Map Adr Val

-- | Path condition
type PC = Formula SymVar

-- | A binding is a variable combined with an expression 
-- it needs to be bound to
type Binding = (Ide, Exp)

-- | A model is an assignment from symbolic variables to their values
type Model = Map SymVar PVal

------------------------------------------------------------
-- Monadic context (mostly for convenience)
------------------------------------------------------------

class MonadRandom m where
   random :: m PVal
instance (Monad m, MonadRandom m , MonadTrans t) => MonadRandom (t m) where
   random = lift random
instance MonadRandom IO where
   random = undefined -- TODO

-- | Some context needed for the concolic execution, to be 
-- passed around in a reader monad.
data ConcolicContext = ConcolicContext {
      initialStoreExecutor :: Sto,
      initialEnvExecutor :: Env,
      initialExpExecutor :: Exp
   }

type SmallstepM m = (MonadRandom m,
                     MonadReader ConcolicContext m)

------------------------------------------------------------
-- State space
------------------------------------------------------------

-- | Abstract control component
data Control = Ev Exp Env | Ap Val
            deriving (Ord, Eq, Show)

-- | Continuations
data Kont = LetK Ide [Binding] Exp Adr
         deriving (Eq, Ord, Show)

-- | Failure continuations 
data Kontf = Branch PC Adr
           deriving (Eq, Ord, Show)

-- | Continuation store
type KSto = Map KAdr Kont

-- | Failure continuation store
type FSto = Map KAdr Kontf

-- | Abstract machine states
data State = State {
      -- | Control component
      control :: Control,
      -- | (Local) Store component
      store :: Sto,
      -- | Top of the continuation stack
      top :: KAdr,
      -- | Local continuation store
      kont :: KSto,
      -- | Top of the failure continuation stack
      topFail :: KAdr,
      -- | Failure continuation storez
      kontf :: FSto,
      -- | The model
      model :: Model,
      -- | Path condition
      pc :: PC
   } deriving (Ord, Eq, Show)

------------------------------------------------------------
-- Small-stepping relation
------------------------------------------------------------

newtype IsAtomic e = Atomically e

-- | Checks whether an expression is atomic
isAtomic :: Exp -> Either (IsAtomic Exp) Exp
isAtomic e = case e of
               Lam {}      -> Left $ Atomically e
               Self {}     -> Left $ Atomically e
               Literal {}  -> Left $ Atomically e
               Var {}      -> Left $ Atomically e
               _           -> Right e

-- | Evaluate an atomic expression, fails 
-- if the expression is non-atomic
atomicEval :: IsAtomic Exp -> Env -> Sto -> Val
atomicEval (Atomically lam@(Lam {})) env _ = injectClo (lam, env)
atomicEval (Atomically (Literal l _)) _ _ = injectLit l
atomicEval (Atomically (Self {})) _ _ = error "self not supported"
atomicEval (Atomically (Var (Ide nam _))) env sto =
   fromJust (Map.lookup nam env >>= flip Map.lookup sto)
atomicEval (Atomically e) _ _ =
   error $
       "unreachable case because of values produced by `isAtomic` so either `isAtomic` is wrong or we are missing cases."
    ++ "Failed on " ++ show e

-- | Forces the expression to be atomic, if it is not atomic results in a run-time error
assertAtomic :: Exp -> IsAtomic Exp
assertAtomic = fromLeft (error "not an atomic") . isAtomic

stepCompound :: State -> Set State
stepCompound state@(State { control = Ev (Ite e1 e2 e3 _) ρ, .. }) =
   let value = atomicEval (assertAtomic e1) ρ store
   -- TODO: add branching with the other continuation
   in justOrBot $
         cond (return value)
              (return $ Set.singleton $ state { control = Ev e2 ρ, pc = conjunction (Atomic (symbolic value)) pc })
              (return $ Set.singleton $ state  { control = Ev e3 ρ, pc = conjunction (Negation (Atomic (symbolic value))) pc })
stepCompound _ = undefined

step :: SmallstepM m => State -> m (Set State)
step state@(State { control = Ev e ρ, store = σ }) =
   case isAtomic e of
      Left  atom -> return $ Set.singleton $ state { control = Ap (atomicEval atom ρ σ) }
      Right _ -> return $ stepCompound state
-- final state, nothing to do anymore
step state@(State (Ap _) _ Hlt _ Hlt _ _ _) = return Set.empty
-- backtracking state
step (State (Ap v) σ top kont topFail ψ model φ) =
   undefined

------------------------------------------------------------
-- Utility functions (mostly for inspecting the results)
------------------------------------------------------------

isFinalState :: State -> Bool
isFinalState (State (Ap _) _ Hlt _ Hlt _ _ _) = True
isFinalState _ = False

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Collect states until no more states are found
collect :: SmallstepM m => Set State -> m (Set State)
collect ss = Set.union ss <$> foldMapM step ss

-- | Compute the least fix point assuming that the output of the function 
-- is monotonic.
lfp :: (PartialOrder v, SmallstepM m, Show v) => (v -> m v) -> v -> m v
lfp f initial = do
   nxt <- f initial
   if subsumes nxt initial && not (subsumes initial nxt) then lfp f nxt else return nxt

analysisStore :: Map Adr Val
analysisStore = initialSto allPrimitives PrmAdr

inject :: Exp -> State
inject e =
   State (Ev e (initialEnv PrmAdr)) analysisStore Hlt Map.empty Hlt Map.empty Map.empty emptyFormula

runContext :: Exp -- ^ the initial expression
           -> ReaderT ConcolicContext IO a
           -> IO a
runContext e0 m = runReaderT m (ConcolicContext analysisStore (initialEnv PrmAdr) e0)

-- | Computes the set of states reachable from @e@
analyze :: Exp -> IO (Set State)
analyze e = runContext e $ lfp collect $ Set.singleton $ inject e
