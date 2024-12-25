{-# LANGUAGE UndecidableInstances, DeriveGeneric #-}
{-# LANGUAGE DeriveFunctor #-}
-- | Version of the small-step semantics that widens particular parts of the original small-step state. 
-- More specifically, the path condition and store can be widened so that they are no longer part of the 
-- state itself, but either globally or indexed by state.
module Analysis.ASE.WidenedStates where

import Syntax.AST
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.Reader.Class
import Control.Monad.Reader (ReaderT)
import Lattice.Class (PartialOrder (subsumes, leq), Joinable, BottomLattice)
import qualified Lattice.Class as Lat
import Lattice.SetLattice ()
import RIO.Prelude hiding (mzero)
import Domain.Symbolic.Class (SymbolicValue(..))
import Analysis.Scheme.Primitives (initialEnv, primitivesByName)
import qualified Analysis.Scheme.Primitives as Prim
import Domain.Scheme.Class hiding (Exp, Env, Adr)
import Data.Maybe (fromJust)
import Analysis.SimpleActor.Semantics (initialSto, allPrimitives)
import Symbolic.AST
    ( Formula(..),
      emptyFormula,
      conjunction )
import Control.Monad.Join (cond, condsCP, fromBL)

import Syntax (SpanOf(..))
import Analysis.Store (Store(..))
import RIO ( runIdentity, Identity )
import Solver ( CachedSolver, runCachedSolver )
import Domain.Core.AbstractCount (AbstractCount(CountInf, CountOne))
import Solver.Z3 (Z3Solver, runZ3SolverWithSetup)
import qualified Symbolic.SMT as SMT
import Control.Monad.Writer (WriterT (runWriterT))
import Analysis.ASE.Common
import Analysis.Monad (runJoinT)
import Lattice.BottomLiftedLattice (lowerBottom)
import GHC.Generics (Generic)
import Control.DeepSeq

------------------------------------------------------------
-- State space
------------------------------------------------------------

-- | Push a continuation on the continuation stack by allocating an address 
-- store the continuation there and linking it with the given address
pushKont :: (Ord a, Ord k, Show k)
         => Span          -- ^ allocation site for the continuation
         -> k       -- ^ calling context
         -> a
         -> Map (KAdr k) (Set a) -- ^ the continuation store
         -> (KAdr k, Map (KAdr k) (Set a))
pushKont ℓ context kont σ = (adr, σ')
   where adr = KAdr ℓ context
         σ'  = extendSto adr (Set.singleton kont) σ

-- | Abstract machine states
data State = State {
      -- | Control component
      control :: Control,
      -- | Top of the continuation stack
      top :: KAdr [Span],
      -- | Top of the failure continuation stack
      topFail :: FAdr,
      -- | Calling context
      context :: [Span],
      -- | The model
      model :: Model,
      -- | Sequence of random values
      rvs :: RandomSeq,
      -- | Abstract counting map
      counts :: Map SymVar AbstractCount,
      -- | Path condition
      pc :: PC,
      -- | The model context
      mcontext :: ModelContext
   } deriving (Generic)


instance NFData State

-- | State machine components shared across all states
type Shared f = Map (f State) SharedStep


-- | Parts of the shared components that are relevant for the current stepping relation
data SharedStep = SharedStep { vstoStep :: Sto, kstoStep :: KSto, fstoStep :: FSto } deriving (Ord, Eq, Show, Generic)

instance NFData SharedStep

instance BottomLattice SharedStep where
   bottom = SharedStep Lat.bottom Lat.bottom Lat.bottom
instance Joinable SharedStep where
   join (SharedStep vsto1 ksto1 fsto1) (SharedStep vsto2 ksto2 fsto2) = SharedStep (Lat.join vsto1 vsto2) (Lat.join ksto1 ksto2) (Lat.join fsto1 fsto2)
instance PartialOrder SharedStep where
   leq (SharedStep a1 b1 c1) (SharedStep a2 b2 c2) =
      leq a1 a2 && leq b1 b2 && leq c1 c2


instance Show State where
   show (State { .. }) =
      "⟨" ++ show control ++ ", σ, " ++ show top ++ "," ++  "<kstore> ," ++ show topFail ++ "," ++ show context ++ "," ++ show model ++ "," ++ show rvs ++ "," ++ show counts ++ "," ++ show pc ++ "⟩"

deriving instance (Eq (PaiDom Val), Eq (VecDom Val), Eq (StrDom Val)) => Eq State
deriving instance (Ord (PaiDom Val), Ord (VecDom Val), Ord (StrDom Val)) => Ord State

------------------------------------------------------------
-- Small-stepping relation
------------------------------------------------------------

stepCompound :: SmallstepM State m => State -> SharedStep -> m (Set State, SharedStep)
-- ST-Blame (failed assertion)
stepCompound state@(State { control = Ev (Blame _ s) _ }) shared =
   return (Set.singleton (state { control = Err s }), shared)
stepCompound state@(State { control = Ev ite@(Ite e1 e2 e3 _) ρ, .. }) shared =
   fmap lowerBottom $ runJoinT $
         cond (return value)
              -- ST-IfTrue
              -- XXX: currently we overapproximate by stating that we have already 
              -- visited the other branch, hence `topFail` staying the same, but
              -- we should actually incorperate an abstraction of the visited set.
              (return (Set.fromList [newSt e2 φt topTrue, newSt e2 φt topFail], shared { fstoStep = kontf't } ))
              -- ST-IfFalse
              (return (Set.fromList [newSt e3 φf topFalse, newSt e3 φf topFail], shared { fstoStep = kontf'f } ))
         where value = atomicEval (assertAtomic e1) ρ (vstoStep shared)
               φt =  conjunction (Atomic (symbolic $ assertTrue value)) pc
               φf =  conjunction (Atomic (symbolic $ assertFalse value)) pc
               (topTrue, kontf't) = pushKont (spanOf ite) (context, mcontext) (Branch φf topFail) (fstoStep shared)
               (topFalse, kontf'f) = pushKont (spanOf ite) (context, mcontext) (Branch φt topFail) (fstoStep shared)
               newSt e φ' topFail' = state { control = Ev e ρ, pc = φ', topFail = topFail' }
-- ST-App
stepCompound st@(State { control = Ev exp@(App operator operands _) ρ, .. }) shared = fmap lowerBottom $ runJoinT $
                  condsCP
                     [(fromBL (isClo operatorValue),
                         Lat.joinMapM (applyClosure st shared operandsValues) (clos operatorValue)),
                      (fromBL (isPrim operatorValue),
                         return (Lat.joinMap (applyPrimitive st shared exp operandsValues) (prims operatorValue)))]
                     (return (Set.empty, shared))
   where operatorValue = atomicEval (assertAtomic operator) ρ (vstoStep shared)
         operandsValues = map (atomicEval' ρ (vstoStep shared) . assertAtomic) operands
         atomicEval' ρ σ e = atomicEval e ρ σ
-- ST-Input
stepCompound st@(State { control = Ev (Input ℓ) _, .. }) shared =
      return (Set.singleton (st { control = Ap (combine value freshSymVar), rvs = vs', counts = counts' }), shared)
   where (value, vs') = lookupModel (freshVar ℓ context mcontext) model rvs
         freshSymVar = fresh ℓ context mcontext
         counts' = Map.insertWith (const . const CountInf) (freshVar ℓ context mcontext) CountOne counts
-- ST-Let1
stepCompound st@(State { control = Ev (Letrec ((nam,exp):bds) bdy _) ρ, .. }) shared =
      return (Set.singleton $ st { control = Ev exp ρ', top = top' }, shared { kstoStep = kont' })
   where (top', kont') = pushKont (spanOf nam) context (LetK adr ρ' bds bdy top) (kstoStep shared)
         -- pre allocate address so variable exists in the lexical scope 
         adr = alloc (spanOf nam) context
         ρ' = Map.insert (name nam) adr ρ
stepCompound st@(State { control = Ev (Letrec [] bdy _) ρ }) shared =
      return (Set.singleton $ st { control = Ev bdy ρ }, shared)
stepCompound st _ = error $ "unsupported program state" ++ show st

applyClosure :: SmallstepM State m => State -> SharedStep -> [Val] -> (Exp, Env) -> m (Set State, SharedStep)
applyClosure st@State{ .. } shared vs (Lam xs e _, ρ') = do
      k <- asks contextSensitivity
      return (Set.singleton $ st { control = Ev e ρ'', context =  pushK k (spanOf e) context}, shared { vstoStep = store' })
   where ads = map ((`alloc` context) . spanOf) xs
         bds = zip ads (map RVal vs)
         store' = extendsSto bds (vstoStep shared)
         ρ'' = Map.union (Map.fromList $ zip (map name xs) ads) ρ'
applyClosure _ _ _ _ = error "invalid closure"

applyPrimitive :: State -> SharedStep -> Exp -> [Val] -> String -> (Set State, SharedStep)
applyPrimitive st@State { .. } shared e vs nam = Lat.joinMap (\(v, store') -> (Set.singleton st { control = Ap v }, shared { vstoStep = store' })) $ runIdentity $ runInPrimMStack (vstoStep shared) context (Prim.run (fromJust $ Map.lookup nam primitivesByName) e vs)

step' :: SmallstepM State m => State -> SharedStep -> m (Set State, SharedStep)
-- ST-Atomic
step' state@(State { control = Ev e ρ }) shared =
   case isAtomic e of
      Left  atom -> return (Set.singleton $ state { control = Ap (atomicEval atom ρ (vstoStep shared)) }, shared)
      Right _ -> stepCompound state shared
-- final state, nothing to do anymore
step' (State { control = (Ap _), top = Hlt, topFail = Hlt }) shared = return (Set.empty, shared)
-- ST-Backtrack
step' st@(State { control = (Ap _), top = Hlt, .. }) shared =
      Lat.joinMapM applyKont (fromMaybe Set.empty $ Map.lookup topFail (fstoStep shared))
   where applyKont (Branch cnd topFail') = do
            ec <- ask
            maybeModel <- computeModel counts cnd
            let context' = pushMK mcontext cnd
            let mkModel model' = adaptModel context' (Map.withoutKeys model' (Set.difference (Map.keysSet model') (Map.keysSet counts) ))
            maybe (return (Set.empty, shared))
                 (\model' -> if model == Map.empty then return (Set.empty, shared) else
                     return (Set.singleton $
                        st { control = Ev (initialExpExecutor ec) (initialEnvExecutor ec),
                             model = Lat.join model (mkModel model'),
                             topFail = topFail',
                             counts = Map.empty,
                             pc = emptyFormula,
                             context = [],
                             mcontext = context'
                        }, shared { vstoStep = initialStoreExecutor ec, kstoStep = Map.empty })) maybeModel

-- ST-Let2
step' st@(State { control = (Ap v), .. }) shared =
      return $ Lat.joinMap applyKont (fromMaybe Set.empty $ Map.lookup top (kstoStep shared))
   where applyKont (LetK adr env' bds bdy top') =
               let store' = extendSto adr (RVal v) (vstoStep shared)
               in (Set.singleton $ st { control = Ev (Letrec bds bdy (spanOf bdy)) env', top = top' }, shared { vstoStep = store' })
-- Error state is stuck
step' (State { control = Err _ }) shared = return (Set.empty, shared)

step :: (Ord (f State), Applicative f,  SmallstepM State m) => Shared f -> State -> m (Shared f, Set State)
step shared inn = do
   (successors, sharedStep) <- step' inn (fromJust $ Map.lookup (pure inn) shared)
   registerSuccessor (SuccessorMap $ Map.singleton inn successors)
   return (Map.fromList $ map ((,sharedStep) . pure) (Set.toList successors), successors)

------------------------------------------------------------
-- Utility functions (mostly for inspecting the results)
------------------------------------------------------------

instance IsAnalysisResult ((Shared f, Set State), SuccessorMap State) where
   failedAssertions ((_, states), _) = fromIntegral $ Set.size $ Set.filter isError states
      where isError (State { control = Err _ }) = True
            isError _ = False

isFinalState :: State -> Bool
isFinalState (State { control = (Ap _), top = Hlt, topFail = Hlt }) = True
isFinalState _ = False

isStuckState :: SuccessorMap State -> State -> Bool
isStuckState succs st =
   Set.size (fromMaybe Set.empty (Map.lookup st (getSuccessorMap succs))) == 0

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Compute the set of successors for the given list of states
collect :: (Applicative f, Ord (f State), SmallstepM State m) => Shared f -> Set State -> m (Shared f, Set State)
collect shared ss = Lat.join (shared, ss) <$> Lat.joinMapM (step shared) ss

-- | Incremental computation of the least fixed point by only considering the 
-- successors states produced in the previous iteration for the next iteration
lfpInc' :: (Monad m, PartialOrder v, Joinable v, Show v, v ~ Set State) => (v -> m v) -> v -> v -> m v
lfpInc' f acc ss = do
   nxt <- f ss -- Debug.trace ("number of states in accumulator " ++ show (Set.size acc)) $ f ss
   let acc' = Lat.join nxt acc
   if subsumes acc' acc && not (subsumes acc acc') then lfpInc' f acc' nxt else return acc'

lfpInc :: (Monad m, PartialOrder v, Joinable v, Show v, v ~ Set State) => (v -> m v) -> v -> m v
lfpInc f initial = lfpInc' f initial initial

-- | Compute the least fix point assuming that the output of the function 
-- is monotonic.
lfp :: (PartialOrder v, Monad m, Show v) => (v -> m v) -> v -> m v
lfp f initial = do
   nxt <- f initial
   if subsumes nxt initial && not (subsumes initial nxt) then lfp f nxt else return nxt

analysisStore :: Sto
analysisStore = RVal <$> initialSto allPrimitives PrimAdr

inject :: Exp -> State
inject e =
   State (Ev e (initialEnv PrimAdr)) Hlt Hlt [] Map.empty initialSeq Map.empty emptyFormula emptyModelContext

runContext :: Exp -- ^ the initial expression
           -> Int -- ^ the desidered context sensitivity
           -> ReaderT ConcolicContext (WriterT (SuccessorMap State) (CachedSolver SymVar (Z3Solver SymVar))) a
           -> IO (a, SuccessorMap State)
runContext e0 k m =
         runReaderT m (ConcolicContext analysisStore (initialEnv PrimAdr) e0 k)
       & runWriterT
       & runCachedSolver
       & runZ3SolverWithSetup SMT.prelude

-- | The initial shared state 
initialShared :: Applicative f
              => State  -- ^ the initial state
              -> Shared f
initialShared initSt = Map.singleton (pure initSt) (SharedStep { vstoStep = analysisStore, kstoStep = Map.empty, fstoStep = Map.empty })

-- | Computes the set of states reachable from @e@
analyze' :: (Applicative f, Ord (f State), Show (f State)) => Int -> Exp -> IO ((Shared f, Set State), SuccessorMap State)
analyze' k e = runContext e k $ lfp f (initialShared initialSt, Set.singleton initialSt)
   where initialSt = inject e
         f = uncurry collect

-- | Widening per state
analyze :: Int -> Exp -> IO ((Shared Identity, Set State), SuccessorMap State)
analyze = analyze'

-- | Type isomorphic with unit but with a kind that is compatible with functor and applicative
data Unit a = Unit deriving (Ord, Eq, Show, Functor)

instance NFData (Unit a) where
   rnf a = a `seq` ()

instance Applicative Unit where
   pure = const Unit
   (<*>) _ _ = Unit

-- | Widening globally
analyzeGlobal :: Int -> Exp -> IO ((Shared Unit, Set State), SuccessorMap State)
analyzeGlobal = analyze'
