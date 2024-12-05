{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# LANGUAGE UndecidableInstances #-}
-- | Small-step semantics for abstract concolic execution. 
--
-- It is designed to work with any domain but only implemented 
-- for a specific one. 
module Analysis.Smallstep where

import Syntax.AST
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.List as List
import qualified Data.Set as Set
import Control.Monad.Reader.Class
import Control.Monad.Reader (ReaderT)
import Control.Monad.Layer (MonadTrans (lift))
import Lattice.Class (PartialOrder (subsumes), Joinable)
import qualified Lattice.Class as Lat
import Lattice.SetLattice ()
import RIO.Prelude
import Domain.SimpleActor (ActorValue, ActorValue', ActorValueUnified)
import Domain.Symbolic.Class (SymbolicValue(..))
import Analysis.Scheme.Primitives (initialEnv)
import Domain.Scheme.Class hiding (Exp, Env, Adr)
import Data.Maybe (fromJust)
import Analysis.SimpleActor.Semantics (injectLit, initialSto, allPrimitives)
import Symbolic.AST (Formula (..), emptyFormula, conjunction)
import Lattice (justOrBot)
import Control.Monad.Join (cond, MonadJoinable(..), MonadBottom(..), MonadJoin, condsCP, fromBL)

import Debug.Trace
import Control.Monad.Escape
import Control.Monad.DomainError
import Analysis.Python.Primitives (applyPrim)
import Syntax (SpanOf(..))
import Analysis.Scheme.Store (SchemeStore'(values))
import Analysis.Store (Store(..))

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

-- | Allocation-site addresses with context
data AdrWithContext k = Adr Span k | PrimAdr String deriving (Show, Ord, Eq)

-- | Values from the value domain, this combines 
-- a symbolic with an abstract value.
type Val = ActorValueUnified [Span] AdrWithContext

-- | Program values
type PVal = Abstract Val

-- | Symbolic values
type SymVal = Symbolic Val

-- | "All" values combine values on the heap with regular primitive 
-- program values. 
data AllVal = RVal Val
           | ConsVal (PaiDom Val)
           | VecVal (VecDom Val)
           | StrVal (StrDom Val)

deriving instance (Show (PaiDom Val), Show (VecDom Val), Show (StrDom Val)) => Show AllVal
deriving instance (Eq (PaiDom Val), Eq (VecDom Val), Eq (StrDom Val)) => Eq AllVal
deriving instance (Ord (PaiDom Val), Ord (VecDom Val), Ord (StrDom Val)) => Ord AllVal

instance Joinable AllVal where   
   -- Values in `AllVal` can never overlap so only compatible values 
   -- needt be joined together
   join (RVal a) (RVal b) = RVal $ Lat.join a b 
   join (ConsVal a) (ConsVal b) = ConsVal $ Lat.join a b 
   join (VecVal a) (VecVal b) = VecVal $ Lat.join a b 
   join (StrVal a) (StrVal b) = StrVal $ Lat.join a b 
   join _ _ = error "cannot join unrelated types"

-- | Assume that the value is a regular value 
fromRVal :: AllVal -> Val
fromRVal (RVal v) = v
fromRVal _ = error "not an RValue"

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Adr = AdrWithContext [Span]

-- | Continuation store
data KAdr = KAdr Span [Span] | Hlt
          deriving (Ord, Eq, Show)

-- | Symbolic variable
type SymVar = Adr

-- | An environment
type Env = Map String Adr

-- | Store which maps addresses to values of all types (both primitive and heap values!) 
-- this configuration of the store is not ideal since it relies on runtime assertions to 
-- ensure proper lookup, but is the simplest way to implement the store.
type Sto = Map Adr AllVal

-- | Path condition
type PC = Formula SymVar

-- | A binding is a variable combined with an expression 
-- it needs to be bound to
type Binding = (Ide, Exp)

-- | A model is an assignment from symbolic variables to their values
type Model = Map SymVar PVal

-- | The context is a list of call-sites
type Context = [Span]

------------------------------------------------------------
-- Managing abstraction of context
------------------------------------------------------------

k :: Int
k = 1

-- | Push a calling context on the stack of contexts and limit 
-- its length
pushK :: Span -> [Span] -> [Span]
pushK s = take 1 . (s :)

------------------------------------------------------------
-- Address allocation
------------------------------------------------------------

alloc :: Span -> [Span] -> Adr
alloc = Adr

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
data Kont = LetK Ide Env [Binding] Exp KAdr
         deriving (Eq, Ord, Show)

-- | Push a continuation on the continuation stack by allocating an address 
-- store the continuation there and linking it with the given address
pushKont :: Span          -- ^ allocation site for the continuation
         -> Context       -- ^ calling context
         -> Kont          -- ^ the continuation to store
         -> KSto         
         -> (KAdr, KSto)
pushKont ℓ context kont σ = (adr, σ')
   where adr = KAdr ℓ context 
         σ'  = extendSto adr (Set.singleton kont) σ

-- | Failure continuations 
data Kontf = Branch PC Adr
           deriving (Eq, Ord, Show)

-- | Continuation store
type KSto = Map KAdr (Set Kont)

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
      -- | Calling context
      context :: [Span],
      -- | The model
      model :: Model,
      -- | Path condition
      pc :: PC
   } 

deriving instance (Show (PaiDom Val), Show (VecDom Val), Show (StrDom Val)) => Show State
deriving instance (Eq (PaiDom Val), Eq (VecDom Val), Eq (StrDom Val)) => Eq State
deriving instance (Ord (PaiDom Val), Ord (VecDom Val), Ord (StrDom Val)) => Ord State

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
   fromJust (Map.lookup nam env >>= (fmap fromRVal . flip Map.lookup sto))
atomicEval (Atomically e) _ _ =
   error $
       "unreachable case because of values produced by `isAtomic` so either `isAtomic` is wrong or we are missing cases."
    ++ "Failed on " ++ show e

-- | Forces the expression to be atomic, if it is not atomic results in a run-time error
assertAtomic :: Exp -> IsAtomic Exp
assertAtomic = fromLeft (error "not an atomic") . isAtomic

stepCompound :: State -> Set State
-- ST-If
stepCompound state@(State { control = Ev (Ite e1 e2 e3 _) ρ, .. }) =
   let value = atomicEval (assertAtomic e1) ρ store
   -- TODO: add branching with the other continuation
   in justOrBot $
         cond (return value)
              (return $ Set.singleton $ state { control = Ev e2 ρ, pc = conjunction (Atomic (symbolic value)) pc })
              (return $ Set.singleton $ state  { control = Ev e3 ρ, pc = conjunction (Negation (Atomic (symbolic value))) pc })
-- ST-App
stepCompound st@(State { control = Ev (App operator operands _) ρ, .. }) = justOrBot $
                  condsCP
                     [(fromBL (isClo operatorValue),
                         return $ Set.map (applyClosure st operandsValues) (clos operatorValue)),
                      (fromBL (isPrim operatorValue),
                         return $ Set.map (applyPrimitive st operandsValues) (prims operatorValue))]
                     (return Set.empty)
   where operatorValue = atomicEval (assertAtomic operator) ρ store
         operandsValues = map (atomicEval' ρ store . assertAtomic) operands
         atomicEval' ρ σ e = atomicEval e ρ σ
-- ST-Let1
stepCompound st@(State { control = Ev (Letrec ((nam,exp):bds) bdy _) ρ, .. }) = 
      Set.singleton $ st { control = Ev exp ρ, kont = kont', top = top' }
   where (top', kont') = pushKont (spanOf nam) context (LetK nam ρ bds bdy top) kont  
stepCompound st@(State { control = Ev (Letrec [] bdy _) ρ }) = 
      Set.singleton $ st { control = Ev bdy ρ }
stepCompound st = error $ "unsupported program state" ++ show st

applyClosure :: State -> [Val] -> (Exp, Env) -> State
applyClosure st@State{ .. } vs (Lam xs e _, ρ') = st { control = Ev e ρ'', store = store', context = pushK (spanOf e) context}
   where ads = map ((`alloc` context) . spanOf) xs
         bds = zip ads (map RVal vs)
         store' = extendsSto bds store
         ρ'' = Map.union (Map.fromList $ zip (map name xs) ads) ρ'
applyClosure _ _ _ = error "invalid closure"

applyPrimitive :: State -> [Val] -> String -> State
applyPrimitive = undefined

step :: SmallstepM m => State -> m (Set State)
-- ST-Atomic
step state@(State { control = Ev e ρ, store = σ }) =
   case isAtomic e of
      Left  atom -> return $ Set.singleton $ state { control = Ap (atomicEval atom ρ σ) }
      Right _ -> return $ stepCompound state
-- final state, nothing to do anymore
step (State (Ap _) _ Hlt _ Hlt _  _ _ _) = return Set.empty
-- ST-Backtrack
step (State (Ap v) σ Hlt kont topFail ψ context model φ) =
   undefined
-- ST-Let2
step st@(State { control = (Ap v), .. }) = 
      return $ Set.map applyKont (fromMaybe Set.empty $ Map.lookup top kont)
   where applyKont (LetK nam env bds bdy top') = 
               let adr = alloc (spanOf nam) context
                   store' = extendSto adr (RVal v) store 
                   env'   = Map.insert (name nam) adr env
               in st { control = Ev (Letrec bds bdy (spanOf bdy)) env', store = store', top = top' }
      

------------------------------------------------------------
-- Utility functions (mostly for inspecting the results)
------------------------------------------------------------

isFinalState :: State -> Bool
isFinalState (State (Ap _) _ Hlt _ Hlt _ _ _ _) = True
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

analysisStore :: Sto
analysisStore = fmap RVal $ initialSto allPrimitives PrimAdr

inject :: Exp -> State
inject e =
   State (Ev e (initialEnv PrimAdr)) analysisStore Hlt Map.empty Hlt Map.empty [] Map.empty emptyFormula

runContext :: Exp -- ^ the initial expression
           -> ReaderT ConcolicContext IO a
           -> IO a
runContext e0 m = runReaderT m (ConcolicContext analysisStore (initialEnv PrimAdr) e0)

-- | Computes the set of states reachable from @e@
analyze :: Exp -> IO (Set State)
analyze e = runContext e $ lfp collect $ Set.singleton $ inject e
