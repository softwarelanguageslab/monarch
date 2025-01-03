{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DeriveGeneric #-}
-- | Abstractions common between machine states
module Analysis.ASE.Common where

import Syntax.AST
import Domain.SimpleActor
import Domain.Scheme.Class hiding (Env, Exp, Adr)
import Domain.Symbolic.Class
import Lattice.Class (Joinable, BottomLattice)
import qualified Lattice.Class as Lat
import Symbolic.AST hiding (Literal, getModel, Model, PC)
import Syntax.Span
import Solver

import qualified Data.Set as Set
import qualified Data.Map as Map
import Control.Monad.Reader
import Control.Monad.Writer (MonadWriter (tell), WriterT)
import System.Random
import Domain.Symbolic.Paired (SymbolicVal(..))
import qualified Domain.Class as Domain
import Domain.Core.AbstractCount (AbstractCount)
import qualified Symbolic.AST as Symbolic hiding (Literal)
import Data.Kind
import Analysis.Monad.Store
import RIO
import Domain.Core hiding (length)
import Domain.Scheme (SchemeString)
import Lattice.ConstantPropagationLattice
import Analysis.Store
import Analysis.Monad.Stack (MonadStack)
import Control.Monad.Escape
import Control.Monad.DomainError
import Analysis.Monad.Allocation
import Analysis.Monad.Context
import Analysis.Monad.Join
import Analysis.Monad.Cache hiding (Val)
import Analysis.SimpleActor.Semantics (injectLit)
import Data.Maybe
import Control.Monad.Layer (MonadLayer (..))
import Analysis.Monad (DependencyTrackingM(register))

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

instance NFData k => NFData (AdrWithContext k)

-- | Allocation-site addresses with context
data AdrWithContext k = Adr Span k | PrimAdr String deriving (Show, Ord, Eq, Generic)

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
            deriving Generic

deriving instance (Show (PaiDom Val), Show (VecDom Val), Show (StrDom Val)) => Show AllVal
deriving instance (Eq (PaiDom Val), Eq (VecDom Val), Eq (StrDom Val)) => Eq AllVal
deriving instance (Ord (PaiDom Val), Ord (VecDom Val), Ord (StrDom Val)) => Ord AllVal
instance (NFData (PaiDom Val), NFData (VecDom Val), NFData (StrDom Val)) => NFData AllVal

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

instance NFData k => NFData (KAdr k)

-- | Continuation store
data KAdr k = KAdr Span k | Hlt
          deriving (Ord, Eq, Show, Generic) 

-- | Symbolic variable
data SymVar = SymVar Span [Span] ModelContext deriving (Eq, Ord, Show, Generic)

instance NFData SymVar

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

-- | Push a calling context on the stack of contexts and limit 
-- its length
pushK :: Int -> Span -> [Span] -> [Span]
pushK k s = take k . (s :)

------------------------------------------------------------
-- 
-- Managing abstraction of model's context
------------------------------------------------------------

-- | The context associated with iterations of the concolic loop 
-- is a sequence of path constraints originating from the failure continuations.
--
-- This way, the model is only widened whenever we loop to the same path constraint, 
-- and since path constraints themselves are widened and thus made finite, the number 
-- of contexts and therefore number of models is also finite.
newtype ModelContext = MCtx [PC] deriving (Eq, Ord, Show, Generic)

instance NFData ModelContext

-- | Create an initial (empty) model context
emptyModelContext :: ModelContext
emptyModelContext = MCtx []

-- | The number of constraints to keep in the model's context
mk :: Int
mk = 0

-- | Remove the cointext from a variable
removeContextFromVariable :: SymVar -> SymVar
removeContextFromVariable (SymVar ℓ ℓs _) = SymVar ℓ ℓs emptyModelContext

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

-- special instance of NFData to prevent computing the entire 
-- sequence since it is infinite.
instance NFData RandomSeq where  
   rnf = const ()

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
-- Successor map monadic contet
------------------------------------------------------------

class MonadSuccessorMap s m | m -> s where  
   registerSuccessor :: s -> m ()

instance {-# OVERLAPPABLE #-} (MonadSuccessorMap s m , Monad m, MonadLayer t) => MonadSuccessorMap s (t m) where  
   registerSuccessor = upperM . registerSuccessor

instance (Monad m, Monoid s) => MonadSuccessorMap s (WriterT s m) where   
   registerSuccessor = tell

------------------------------------------------------------
-- Monadic context (mostly for convenience)
------------------------------------------------------------

-- | Some context needed for the concolic execution, to be 
-- passed around in a reader monad.
data ConcolicContext = ConcolicContext {
      initialStoreExecutor :: Sto,
      initialEnvExecutor :: Env,
      initialExpExecutor :: Exp, 
      contextSensitivity :: Int
   }

type SmallstepM s m = (MonadReader ConcolicContext m, MonadSuccessorMap (SuccessorMap s) m, FormulaSolver SymVar m, MonadIO m)

newtype SuccessorMap s = SuccessorMap { getSuccessorMap :: Map s (Set s) } deriving (Generic)

instance NFData s => NFData (SuccessorMap s)

instance (Ord s) => Semigroup (SuccessorMap s) where
   (<>) m = SuccessorMap . Map.unionWith Set.union (getSuccessorMap m) . getSuccessorMap
instance (Ord s) => Monoid (SuccessorMap s) where
   mempty = SuccessorMap Map.empty
   mappend = (<>)

------------------------------------------------------------
-- Common abstract machine components
------------------------------------------------------------

instance NFData Control

-- | Abstract control component
data Control = Ev Exp Env | Ap Val | Err Span
            deriving (Ord, Eq, Generic)

instance Show Control where
   show (Ev e _) = "ev(" ++ show e ++ ")"
   show (Ap v) = "ap(" ++ show v ++ ")"
   show (Err s) = "error(" ++ show s ++ ")"

instance NFData Kont

-- | Continuations
data Kont = LetK [Adr] Env [Binding] Exp (KAdr [Span])
         deriving (Eq, Ord, Show, Generic)

instance NFData Kontf

-- | Failure continuations 
data Kontf = Branch PC CountMap FAdr
           deriving (Eq, Ord, Show, Generic)

-- | Failure continuation addresses
type FAdr = KAdr ([Span], ModelContext)

-- | Continuation store
type KSto = Map (KAdr [Span]) (Set Kont)

-- | Failure continuation store
type FSto = Map FAdr (Set Kontf)

------------------------------------------------------------
-- Interaction with the model
------------------------------------------------------------

type CountMap = Map SymVar AbstractCount

-- | Lookup a symbolic variable from the model or return a random
-- one of there is no such variable
lookupModel :: SymVar -> Model -> RandomSeq -> (PVal, RandomSeq)
lookupModel var mod vs = maybe (takeSeq vs) (,vs) (Map.lookup var mod)

-- | Convert an SMT model to a ASE model
convertModel :: Symbolic.Model SymVar -> Model
convertModel = Map.map (Lat.joins . Set.map mapValue) . Symbolic.getModel
   where mapValue (Symbolic.Num n) = Domain.inject n
         mapValue (Symbolic.Rea r) = Domain.inject r
         mapValue (Symbolic.Boo b) = Domain.inject b
         mapValue (Symbolic.Cha c) = Domain.inject c
         mapValue (Symbolic.Sym a) = symbol a

-- | Compute an assignment for the model (if one is available)
computeModel :: SmallstepM s m => CountMap -> PC -> m (Maybe Model)
computeModel c pc = do
      result <- solve c pc
      if isSat result then
         Just . convertModel <$> getModel c pc
      else return Nothing

------------------------------------------------------------
-- Atomic evaluation 
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
   fromMaybe (error $ "variable " ++ nam ++ " not found " ++ show sto ++ show (Map.lookup nam env)) (Map.lookup nam env >>= fmap fromRVal . flip Map.lookup sto)
atomicEval (Atomically e) _ _ =
   error $
       "unreachable case because of values produced by `isAtomic` so either `isAtomic` is wrong or we are missing cases."
    ++ "Failed on " ++ show e

-- | Forces the expression to be atomic, if it is not atomic results in a run-time error
assertAtomic :: Exp -> IsAtomic Exp
assertAtomic e = fromLeft (error $ "not an atomic" ++ show e) $ isAtomic e

------------------------------------------------------------
-- Adaptor into the monadic stack for the primitives
------------------------------------------------------------

-- | Same as @StoreT@ but accepts a type constructor as it first argument, 
-- which is given the @k@ and @v@.
type StoreT' (s :: Type -> Type -> Type) k v = (StoreT (s k v) k v)

class Coerce from to where
   coerce :: from -> to
instance Coerce AllVal (SimplePair Val) where
   coerce = fromJust . isPVal
instance Coerce AllVal (PIVector Val Val) where
   coerce = fromJust . isVVal
instance Coerce AllVal (SchemeString (CP String) Val) where
   coerce = fromJust . isSVal
instance Coerce (SimplePair Val) AllVal where
   coerce = ConsVal
instance Coerce (PIVector Val Val) AllVal where
   coerce = VecVal
instance Coerce (SchemeString (CP String) Val) AllVal  where
   coerce = StrVal

newtype CoerceStore from adr to = CoerceStore { getCoerce :: Map adr from } deriving (Eq, Ord, Show, Joinable, BottomLattice)

instance (Coerce from to, Coerce to from, Joinable from, Joinable to, Ord adr) => Store (CoerceStore from adr to) adr to where
   emptySto = CoerceStore emptySto
   lookupSto adr = fmap coerce . lookupSto adr . getCoerce
   extendSto adr val = CoerceStore . extendSto adr (coerce val) . getCoerce
   updateSto adr val = CoerceStore . updateSto adr (coerce val) . getCoerce
   updateStoWith = undefined


type AdaptT m a = MonadStack '[
                  MayEscapeT (Set DomainError),
                  AllocT Exp Context Adr,
                  CtxT Context,
                  StoreT' (CoerceStore AllVal) Adr (PaiDom Val),
                  StoreT' (CoerceStore AllVal) Adr (StrDom Val),
                  StoreT' (CoerceStore AllVal) Adr (VecDom Val),
                  NonDetT,
                  CacheT
               ] m a

runInPrimMStack :: (Monad m, Ord a)
                => Sto -- ^ the initial store 
                -> Context -- ^ the current context
                -> AdaptT m a -- ^ the monadic computation to run 
                -> m (Set (a, Sto))
runInPrimMStack initialSto context m = foldMap extract . Set.fromList <$>  run (const m) initialState
                                                                         & runAlloc @Exp @Context @Adr (Adr . spanOf)
      where extract (((v, paiSto), strSto), vecSto) =
                          case v of
                              Value v -> Set.singleton (v, combine paiSto strSto vecSto)
                              MayBoth v _ -> Set.singleton (v, combine paiSto  strSto vecSto)
                              _ -> Set.empty
            combine paiSto strSto vecSto = Lat.joins [getCoerce paiSto, getCoerce strSto, getCoerce vecSto] -- XXX: this undoes any strong updates since the pair store will not have the same updates as the strStore!
            initialCoerceSto :: CoerceStore AllVal Adr to
            initialCoerceSto = CoerceStore initialSto
            initialState = (((((), context), initialCoerceSto), initialCoerceSto), initialCoerceSto)


------------------------------------------------------------
-- Interpretation of results
------------------------------------------------------------

class IsAnalysisResult r where 
   -- | Count the number of detected failed assertions
   failedAssertions :: r -> Integer
