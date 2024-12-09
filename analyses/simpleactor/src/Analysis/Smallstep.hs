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
import qualified Domain.Class as Domain
import qualified Data.Set as Set
import Control.Monad.Reader.Class
import Control.Monad.Reader (ReaderT)
import Lattice.Class (PartialOrder (subsumes), Joinable, BottomLattice)
import qualified Lattice.Class as Lat
import Lattice.SetLattice ()
import RIO.Prelude hiding (mzero)
import Domain.SimpleActor (ActorValueUnified)
import Domain.Symbolic.Class (SymbolicValue(..))
import Analysis.Scheme.Primitives (initialEnv, primitivesByName)
import qualified Analysis.Scheme.Primitives as Prim
import Domain.Scheme.Class hiding (Exp, Env, Adr)
import Data.Maybe (fromJust)
import Analysis.SimpleActor.Semantics (injectLit, initialSto, allPrimitives)
import Symbolic.AST (Formula (..), Proposition(Variable), emptyFormula, conjunction, isSat, SelectVariable (variables))
import qualified Symbolic.AST as Symbolic
import Lattice (justOrBot, CP)
import Control.Monad.Join (cond, condsCP, fromBL, MonadBottom (..), MonadJoinable)

import Syntax (SpanOf(..))
import System.Random (uniform, uniformR, mkStdGen)
import Domain.Symbolic (SymbolicVal(SymbolicVal))
import System.Random.Stateful (StdGen)
import Analysis.Store (Store(..))
import Analysis.Monad.Stack (MonadStack)
import Control.Monad.Escape
import Control.Monad.DomainError
import Analysis.Monad.Allocation hiding (alloc)
import Analysis.Monad.Store
import Analysis.Monad (NonDetT, CtxT)
import Domain.Scheme.Store (EnvAdr (..), PaiAdrE (PaiAdr), StrAdrE (StrAdr), VecAdrE (VecAdr))
import Analysis.Monad.Cache (CacheT, MonadCache (run))
import Data.Kind (Type)
import Control.Monad.State (StateT, gets, modify, MonadState)
import Domain (SimplePair, PIVector)
import Domain.Scheme (SchemeString)
import RIO (runIdentity)
import Solver (FormulaSolver (..))
import Solver (FormulaSolver(..))
import Domain.Core.AbstractCount (AbstractCount(CountInf, CountOne))
import Solver.Z3 (Z3Solver, runZ3SolverWithSetup)
import qualified Symbolic.SMT as SMT
import Control.Monad.Writer (MonadWriter (tell), WriterT (runWriterT))
import qualified Debug.Trace as Debug

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
-- Allocation of symbolic variables 
------------------------------------------------------------

fresh :: Span -> [Span] -> Symbolic Val
fresh ℓ = SymbolicVal . Variable . freshVar ℓ

freshVar :: Span -> [Span] -> SymVar
freshVar = alloc

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

type SmallstepM m = (MonadReader ConcolicContext m, MonadWriter SuccessorMap m, FormulaSolver SymVar m)

newtype SuccessorMap = SuccessorMap { getSuccessorMap :: Map State (Set State) }

instance Semigroup SuccessorMap where  
   (<>) m = SuccessorMap . Map.unionWith Set.union (getSuccessorMap m) . getSuccessorMap
instance Monoid SuccessorMap where  
   mempty = SuccessorMap $ Map.empty 
   mappend = (<>)

------------------------------------------------------------
-- State space
------------------------------------------------------------

-- | Abstract control component
data Control = Ev Exp Env | Ap Val
            deriving (Ord, Eq)

instance Show Control where   
   show (Ev e _) = "ev(" ++ show e ++ ")"
   show (Ap v) = "ap(" ++ show v ++ ")"

-- | Continuations
data Kont = LetK Ide Env [Binding] Exp KAdr
         deriving (Eq, Ord, Show)

-- | Push a continuation on the continuation stack by allocating an address 
-- store the continuation there and linking it with the given address
pushKont :: (Ord a)
         => Span          -- ^ allocation site for the continuation
         -> Context       -- ^ calling context
         -> a
         -> Map KAdr (Set a) -- ^ the continuation store
         -> (KAdr, Map KAdr (Set a))
pushKont ℓ context kont σ = (adr, σ')
   where adr = KAdr ℓ context
         σ'  = extendSto adr (Set.singleton kont) σ

-- | Failure continuations 
data Kontf = Branch PC KAdr
           deriving (Eq, Ord, Show)

-- | Continuation store
type KSto = Map KAdr (Set Kont)

-- | Failure continuation store
type FSto = Map KAdr (Set Kontf)

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
      -- | Sequence of random values
      rvs :: RandomSeq,
      -- | Abstract counting map
      counts :: Map SymVar AbstractCount,
      -- | Path condition
      pc :: PC
   }

instance Show State where  
   show (State { .. }) = 
      "⟨" ++ show control ++ ", σ, " ++ show top ++ "," ++  "<kstore> ," ++ show topFail ++ "," ++ show context ++ "," ++ show model ++ "," ++ show rvs ++ "," ++ show counts ++ "," ++ show pc ++ "⟩"

deriving instance (Eq (PaiDom Val), Eq (VecDom Val), Eq (StrDom Val)) => Eq State
deriving instance (Ord (PaiDom Val), Ord (VecDom Val), Ord (StrDom Val)) => Ord State

------------------------------------------------------------
-- Interaction with the model
------------------------------------------------------------

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
computeModel :: SmallstepM m => Map SymVar AbstractCount -> PC -> m (Maybe Model)
computeModel c pc = do 
      result <- solve c pc 
      if isSat result then 
         Just . convertModel <$> getModel c pc
      else return Nothing

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
assertAtomic e = fromLeft (error $ "not an atomic" ++ show e) $ isAtomic e

stepCompound :: SmallstepM m => State -> m (Set State)
-- ST-If
stepCompound state@(State { control = Ev ite@(Ite e1 e2 e3 _) ρ, .. }) =
   return $ justOrBot $
         cond (return value)
              -- ST-IfTrue
              -- XXX: currently we overapproximate by stating that we have already 
              -- visited the other branch, hence `topFail` staying the same, but
              -- we should actually incorperate an abstraction of the visited set.
              (return $ Set.fromList [newSt e2 φt kontf't topTrue, newSt e2 φt kontf't topFail])
              -- ST-IfFalse
              (return $ Set.fromList [newSt e3 φf kontf'f topFalse, newSt e3 φf kontf'f topFail])
         where value = atomicEval (assertAtomic e1) ρ store
               φt =  conjunction (Atomic (symbolic $ assertTrue value)) pc
               φf =  conjunction (Atomic (symbolic $ assertFalse value)) pc
               (topTrue, kontf't) = pushKont (spanOf ite) context (Branch φf topFail) kontf
               (topFalse, kontf'f) = pushKont (spanOf ite) context (Branch φt topFail) kontf
               newSt e φ' kontf' topFail' = state { control = Ev e ρ, pc = φ', topFail = topFail', kontf = kontf'  }
-- ST-App
stepCompound st@(State { control = Ev exp@(App operator operands _) ρ, .. }) = return $ justOrBot $
                  condsCP
                     [(fromBL (isClo operatorValue),
                         return $ Set.map (applyClosure st operandsValues) (clos operatorValue)),
                      (fromBL (isPrim operatorValue),
                         return $ foldMap (applyPrimitive st exp operandsValues) (prims operatorValue))]
                     (return Set.empty)
   where operatorValue = atomicEval (assertAtomic operator) ρ store
         operandsValues = map (atomicEval' ρ store . assertAtomic) operands
         atomicEval' ρ σ e = atomicEval e ρ σ
-- ST-Input
stepCompound st@(State { control = Ev (Input ℓ) _, .. }) =
      return $ Set.singleton $ st { control = Ap (combine value freshSymVar), rvs = vs', counts = counts' }
   where (value, vs') = lookupModel (freshVar ℓ context) model rvs
         freshSymVar = fresh ℓ context
         counts' = Map.insertWith (const . const CountInf) (freshVar ℓ context) CountOne counts
-- ST-Let1
stepCompound st@(State { control = Ev (Letrec ((nam,exp):bds) bdy _) ρ, .. }) =
      return $ Set.singleton $ st { control = Ev exp ρ, kont = kont', top = top' }
   where (top', kont') = pushKont (spanOf nam) context (LetK nam ρ bds bdy top) kont
stepCompound st@(State { control = Ev (Letrec [] bdy _) ρ }) =
      return $ Set.singleton $ st { control = Ev bdy ρ }
stepCompound st = error $ "unsupported program state" ++ show st

applyClosure :: State -> [Val] -> (Exp, Env) -> State
applyClosure st@State{ .. } vs (Lam xs e _, ρ') = st { control = Ev e ρ'', store = store', context = pushK (spanOf e) context}
   where ads = map ((`alloc` context) . spanOf) xs
         bds = zip ads (map RVal vs)
         store' = extendsSto bds store
         ρ'' = Map.union (Map.fromList $ zip (map name xs) ads) ρ'
applyClosure _ _ _ = error "invalid closure"

applyPrimitive :: State -> Exp -> [Val] -> String -> Set State
applyPrimitive st@State { .. } e vs nam = Set.map (\(v, store') -> st { control = Ap v, store = store' }) $ runIdentity $ runInPrimMStack store context (Prim.run (fromJust $ Map.lookup nam primitivesByName) e vs)

step' :: SmallstepM m => State -> m (Set State)
-- ST-Atomic
step' state@(State { control = Ev e ρ, store = σ }) =
   case isAtomic e of
      Left  atom -> return $ Set.singleton $ state { control = Ap (atomicEval atom ρ σ) }
      Right _ -> stepCompound state
-- final state, nothing to do anymore
step' (State (Ap _) _ Hlt _ Hlt _  _ _ _ _ _) = return Set.empty
-- ST-Backtrack
step' st@(State (Ap _) _ Hlt _ topFail ψ _ _ _ c _) =
      foldMapM applyKont (fromMaybe Set.empty $ Map.lookup topFail ψ) 
   where applyKont (Branch cnd topFail') = do 
            ec <- ask
            maybeModel <- computeModel c cnd 
            -- XXX: we set the abstract counts to the empty map here since we restart 
            -- the execution, but since we are also abstracting the concolic iterations 
            -- do we need to keep that into account? Probably not? Why?
            maybe (return Set.empty) (\model' -> return $ Set.singleton $ st { store = initialStoreExecutor ec, control = Ev (initialExpExecutor ec) (initialEnvExecutor ec), model = model', topFail = topFail', counts = Map.empty, pc = emptyFormula } ) maybeModel
         
-- ST-Let2
step' st@(State { control = (Ap v), .. }) =
      return $ Set.map applyKont (fromMaybe Set.empty $ Map.lookup top kont)
   where applyKont (LetK nam env bds bdy top') =
               let adr = alloc (spanOf nam) context
                   store' = extendSto adr (RVal v) store
                   env'   = Map.insert (name nam) adr env
               in st { control = Ev (Letrec bds bdy (spanOf bdy)) env', store = store', top = top' }

step :: SmallstepM m => State -> m (Set State)
step inn = do 
   successors <- step' (Debug.traceShow (rvs inn) inn) -- (Debug.traceShowId inn)
   tell (SuccessorMap $ Map.singleton inn successors)
   return successors

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
-- Utility functions (mostly for inspecting the results)
------------------------------------------------------------

isFinalState :: State -> Bool
isFinalState (State (Ap _) _ Hlt _ Hlt _ _ _ _ _ _) = True
isFinalState _ = False

isStuckState :: SuccessorMap -> State -> Bool 
isStuckState succs st = 
   Set.size (fromMaybe Set.empty (Map.lookup st (getSuccessorMap succs))) == 0

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Collect states until no more states are found
collect :: SmallstepM m => Set State -> m (Set State)
collect ss = Debug.traceShow (Set.size ss) <$> Set.union ss <$> foldMapM step ss

-- | Compute the least fix point assuming that the output of the function 
-- is monotonic.
lfp :: (PartialOrder v, SmallstepM m, Show v) => (v -> m v) -> v -> m v
lfp f initial = do
   nxt <- f initial
   if subsumes nxt initial && not (subsumes initial nxt) then lfp f nxt else return nxt

analysisStore :: Sto
analysisStore = RVal <$> initialSto allPrimitives PrimAdr

inject :: Exp -> State
inject e =
   State (Ev e (initialEnv PrimAdr)) analysisStore Hlt Map.empty Hlt Map.empty [] Map.empty initialSeq Map.empty emptyFormula

runContext :: Exp -- ^ the initial expression
           -> ReaderT ConcolicContext (WriterT SuccessorMap (Z3Solver SymVar)) a
           -> IO (a, SuccessorMap)
runContext e0 m = 
         runReaderT m (ConcolicContext analysisStore (initialEnv PrimAdr) e0)
       & runWriterT
       & runZ3SolverWithSetup SMT.prelude

-- | Computes the set of states reachable from @e@
analyze :: Exp -> IO (Set State, SuccessorMap)
analyze e = runContext e $ lfp collect $ Set.singleton $ inject e
