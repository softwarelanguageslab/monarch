{-# LANGUAGE UndecidableInstances #-}
-- | Abstractions common between machine states
module Analysis.ASE.Common where

import Syntax.AST
import Domain.SimpleActor
import Domain.Scheme.Class hiding (Env, Exp, Adr)
import Domain.Symbolic.Class
import Lattice.Class (Joinable)
import qualified Lattice.Class as Lat
import Symbolic.AST hiding (Model, PC)
import Solver

import Data.Map (Map)
import Data.Set(Set)
import qualified Data.Set as Set
import qualified Data.Map as Map
import Control.Monad.Reader
import Control.Monad.Writer (MonadWriter)
import System.Random
import Domain.Symbolic.Paired (SymbolicVal(..))
import qualified Domain.Class as Domain

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
type Val = ActorValueUnified [Span] AdrWithContext SymVar

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

-- | Returns the value as an RVal if it is one
isRVal :: AllVal -> Maybe Val
isRVal (RVal v) = Just v
isRVal _ = Nothing
isPVal :: AllVal -> Maybe (PaiDom Val)
isPVal (ConsVal v) = Just v
isPVal _ = Nothing
isSVal :: AllVal -> Maybe (StrDom Val)
isSVal (StrVal v) = Just v
isSVal _ = Nothing
isVVal :: AllVal -> Maybe (VecDom Val)
isVVal (VecVal v) = Just v
isVVal _ = Nothing

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Adr = AdrWithContext [Span]

-- | Continuation store
data KAdr k = KAdr Span k | Hlt
          deriving (Ord, Eq, Show)

-- | Symbolic variable
data SymVar = SymVar Span [Span] ModelContext deriving (Eq, Ord, Show)

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
-- Managing abstraction of contex
------------------------------------------------------------

k :: Int
k = 1

-- | Push a calling context on the stack of contexts and limit 
-- its length
pushK :: Span -> [Span] -> [Span]
pushK s = take 1 . (s :)

------------------------------------------------------------
-- Managing abstraction of model's context
------------------------------------------------------------

-- | The context associated with iterations of the concolic loop 
-- is a sequence of path constraints originating from the failure continuations.
--
-- This way, the model is only widened whenever we loop to the same path constraint, 
-- and since path constraints themselves are widened and thus made finite, the number 
-- of contexts and therefore number of models is also finite.
newtype ModelContext = MCtx [PC] deriving (Eq, Ord, Show)

-- | Create an initial (empty) model context
emptyModelContext :: ModelContext
emptyModelContext = MCtx []

-- | The number of constraints to keep in the model's context
mk :: Int
mk = 1

-- | Remove the cointext from a variable
removeContextFromVariable :: SymVar -> SymVar
removeContextFromVariable (SymVar ℓ ℓs mctx) = SymVar ℓ ℓs emptyModelContext

-- | Remove the model context from the formula
removeContextFromFormula :: Formula SymVar -> Formula SymVar
removeContextFromFormula = mapVariables removeContextFromVariable

-- | Push a constraint at the beginning of the models context
pushMK :: ModelContext -> PC -> ModelContext
pushMK (MCtx pcs) = MCtx . take mk .  (: pcs) . removeContextFromFormula

-- | Adapt a single variable so that they use the given model context 
-- instead of their current one
adaptVariable :: ModelContext -> SymVar -> SymVar
adaptVariable newCtx (SymVar ℓ context _) = SymVar ℓ context newCtx

-- | Adapt a model so that the symbolic variables of the model use 
-- the given context instead of their current one
adaptModel :: ModelContext -> Model -> Model
adaptModel ctx = Map.mapKeys (adaptVariable ctx)

------------------------------------------------------------
-- Address allocation
------------------------------------------------------------

alloc :: Span -> [Span] -> Adr
alloc = Adr

------------------------------------------------------------
-- Allocation of symbolic variables 
------------------------------------------------------------

fresh :: Span -> [Span] -> ModelContext -> Symbolic Val
fresh ℓ ℓs = SymbolicVal . Variable . freshVar ℓ ℓs

freshVar :: Span -> [Span] -> ModelContext -> SymVar
freshVar = SymVar

------------------------------------------------------------
-- Random sequences
------------------------------------------------------------

-- | Infinite sequence of random program values
data RandomSeq = RandomSeq {
         -- | An infinite sequence of program values
         getSeq :: [PVal],
         -- | The number of random values produced so far
         seqSize :: Int,
         -- | Initial seed
         seed :: Int
      }

instance Show RandomSeq where
   show (RandomSeq _ size seed) = "<sequence of size " ++ show size ++ " with seed " ++ show seed ++ ">"
instance Eq RandomSeq where
   -- two sequences are equal if the values produced so far are the same 
   -- and they have the same seed.
   (==) (RandomSeq _ seed1 size1) (RandomSeq _ seed2 size2) =
      seed1 == seed2 && size1 == size2
instance Ord RandomSeq where
   (<=) (RandomSeq _ seed1 size1) (RandomSeq _ seed2 size2) =
      seed1 <= seed2 && size1 <= size2

infiniteSeq :: StdGen -> [PVal]
infiniteSeq g = nxt : infiniteSeq g'
   where (nxt, g') = genSeq g

-- | Create an infinite sequence of random values
initialSeq :: RandomSeq
initialSeq = RandomSeq (infiniteSeq (mkStdGen seed)) 0 seed
   where seed = 42

-- | Take a value from the random sequence
takeSeq :: RandomSeq -> (PVal, RandomSeq)
takeSeq s = let (v:s') = getSeq s
            in (v, RandomSeq s' (seqSize s + 1) (seed s))

-- | Choose a random value from the given list
choose :: [a] -> StdGen -> (a, StdGen)
choose vs g = let (idx, g') = uniformR (0, max-1) g in (vs !! idx, g')
   where max = length vs

-- | Generate a random integer
randomInteger :: StdGen -> (Integer, StdGen)
randomInteger g = let (i :: Int, g') = uniform g in (toInteger i, g')

-- | Generate a random program value
genSeq :: StdGen -> (PVal, StdGen)
genSeq g = (v, g'')
   where (i, g') = randomInteger g
         (v, g'') = choose [Domain.inject i] g'

------------------------------------------------------------
-- Monadic context (mostly for convenience)
------------------------------------------------------------

-- | Some context needed for the concolic execution, to be 
-- passed around in a reader monad.
data ConcolicContext = ConcolicContext {
      initialStoreExecutor :: Sto,
      initialEnvExecutor :: Env,
      initialExpExecutor :: Exp
   }

type SmallstepM s m = (MonadReader ConcolicContext m, MonadWriter (SuccessorMap s) m, FormulaSolver SymVar m)

newtype SuccessorMap s = SuccessorMap { getSuccessorMap :: Map s (Set s) }

instance (Ord s) => Semigroup (SuccessorMap s) where
   (<>) m = SuccessorMap . Map.unionWith Set.union (getSuccessorMap m) . getSuccessorMap
instance (Ord s) => Monoid (SuccessorMap s) where
   mempty = SuccessorMap Map.empty
   mappend = (<>)

------------------------------------------------------------
-- Common abstract machine components
------------------------------------------------------------

-- | Abstract control component
data Control = Ev Exp Env | Ap Val
            deriving (Ord, Eq)

instance Show Control where
   show (Ev e _) = "ev(" ++ show e ++ ")"
   show (Ap v) = "ap(" ++ show v ++ ")"

-- | Continuations
data Kont = LetK Adr Env [Binding] Exp (KAdr [Span])
         deriving (Eq, Ord, Show)

-- | Failure continuations 
data Kontf = Branch PC FAdr
           deriving (Eq, Ord, Show)

-- | Failure continuation addresses
type FAdr = KAdr ([Span], ModelContext)

-- | Continuation store
type KSto = Map (KAdr [Span]) (Set Kont)

-- | Failure continuation store
type FSto = Map FAdr (Set Kontf)
