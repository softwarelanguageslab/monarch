{-# LANGUAGE UndecidableInstances, DeriveGeneric #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE LambdaCase #-}
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
import RIO ( runIdentity, Identity, liftIO )
import Solver ( CachedSolver, runCachedSolver )
import Domain.Core.AbstractCount (AbstractCount(CountInf, CountOne))
import Solver.Z3 (Z3Solver, runZ3SolverWithSetup)
import qualified Symbolic.SMT as SMT
import Control.Monad.Writer (WriterT (runWriterT))
import Analysis.ASE.Common
import Analysis.Monad (runJoinT)
import Lattice.BottomLiftedLattice (lowerBottom, BottomLifted)
import GHC.Generics (Generic)
import Control.DeepSeq
import Data.Kind (Type)
import Data.Foldable (foldrM)
import qualified Debug.Trace as Debug
import qualified Analysis.Environment as Environment
import qualified Lattice.BottomLiftedLattice as BL

------------------------------------------------------------
-- Delta stores
------------------------------------------------------------

-- | Turn a regular store into a delta store on the type level
type family MkDeltaStore (t :: Type) :: Type where
   MkDeltaStore (Map k v) = DeltaStore k v

newtype DeltaStore k v = DeltaStore { getDelta :: Map k (BottomLifted v) } deriving (Eq, Ord, Show, Joinable, BottomLattice)

-- | Weak update on a delta store
extendStoDelta :: (Joinable v, Ord k)
               => Map k v         -- ^ the original store   
               -> k               -- ^ the key to write
               -> v               -- ^ the value to write   
               -> DeltaStore k v  -- ^ the delta store
               -> DeltaStore k v
extendStoDelta sto adr vlu (DeltaStore dsto) = DeltaStore $ Map.insert adr (maybe (BL.Value vlu) (Lat.join (BL.Value vlu) . BL.Value) (Map.lookup adr sto)) dsto

extendsStoDelta :: (Joinable v, Ord k)
                  => [(k, v)]
                  -> DeltaStore k v
                  -> Map k v
                  -> DeltaStore k v
extendsStoDelta bds dsto sto =
   foldr (uncurry $ extendStoDelta sto) dsto bds

emptyStoDelta :: DeltaStore k v
emptyStoDelta = DeltaStore Map.empty

resetStoDeltaTo :: (Ord k) => Map k v -> Map k v -> DeltaStore k v 
resetStoDeltaTo newContents oldStore = DeltaStore $ Map.union (Map.map BL.Value newContents ) (Map.map (const BL.Bottom) oldStore)

------------------------------------------------------------
-- State space
------------------------------------------------------------

-- | Push a continuation on the continuation stack by allocating an address 
-- store the continuation there and linking it with the given address
pushKont :: (Ord a, Ord k)
         => Span          -- ^ allocation site for the continuation
         -> k       -- ^ calling context
         -> a
         -> DeltaStore (KAdr k) (Set a)
         -> Map (KAdr k) (Set a) -- ^ the continuation store
         -> (KAdr k, DeltaStore (KAdr k) (Set a))
pushKont ℓ context kont dsto σ = (adr, σ')
   where adr = KAdr ℓ context
         σ'  = extendStoDelta σ adr (Set.singleton kont) dsto

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


-- | Delta over the shared state
data SharedStepDelta = Delta { vstoDelta :: MkDeltaStore Sto, kstoDelta :: MkDeltaStore KSto, fstoDelta :: MkDeltaStore FSto } deriving (Ord, Eq, Show, Generic)

instance BottomLattice SharedStepDelta where
   bottom = Delta Lat.bottom Lat.bottom Lat.bottom
instance Joinable SharedStepDelta where
   join (Delta v1 k1 f1) (Delta v2 k2 f2) = Delta (Lat.join v1 v2) (Lat.join k1 k2) (Lat.join f1 f2)


-- | Apply a delta to the shared state
--applyDelta :: SharedStep -> SharedStepDelta -> SharedStep
--applyDelta (SharedStep { .. }) (Delta { .. }) =
--   SharedStep (Map.union (getDelta vstoDelta) vstoStep) (Map.union (getDelta kstoDelta) kstoStep) (Map.union (getDelta fstoDelta) fstoStep)

applyDeltaJoin :: SharedStep -> SharedStepDelta -> SharedStep
applyDeltaJoin (SharedStep { .. }) (Delta { .. }) =
      SharedStep (joinWith (getDelta vstoDelta) vstoStep) (joinWith (getDelta kstoDelta) kstoStep) (joinWith (getDelta fstoDelta) fstoStep)
   where joinWith :: (Ord k, Joinable v) => Map k (BottomLifted v) -> Map k v -> Map k v
         joinWith delta sto = foldr (\case
                                       (k, BL.Value v) -> Map.insert k (maybe v (Lat.join v) (Map.lookup k sto))
                                       (k, BL.Bottom) -> Map.delete k) sto (Map.toList delta)


emptyDelta :: SharedStepDelta
emptyDelta = Lat.bottom


instance Show State where
   show (State { .. }) =
      "⟨" ++ show control ++ ", σ, " ++ show top ++ "," ++  "<kstore> ," ++ show topFail ++ "," ++ show context ++ "," ++ show model ++ "," ++ show rvs ++ "," ++ show counts ++ "," ++ show pc ++ "⟩"

deriving instance (Eq (PaiDom Val), Eq (VecDom Val), Eq (StrDom Val)) => Eq State
deriving instance (Ord (PaiDom Val), Ord (VecDom Val), Ord (StrDom Val)) => Ord State

------------------------------------------------------------
-- Small-stepping relation
------------------------------------------------------------

stepCompound :: SmallstepM State m => State -> SharedStep -> m (Set State, SharedStepDelta)
-- ST-Blame (failed assertion)
stepCompound state@(State { control = Ev (Blame _ s) _ }) _ =
   return (Set.singleton (state { control = Err s }), emptyDelta)
stepCompound state@(State { control = Ev ite@(Ite e1 e2 e3 _) ρ, .. }) shared =
   fmap lowerBottom $ runJoinT $
         cond (return value)
              -- ST-IfTrue
              -- XXX: currently we overapproximate by stating that we have already 
              -- visited the other branch, hence `topFail` staying the same, but
              -- we should actually incorperate an abstraction of the visited set.
              (return (Set.fromList [newSt e2 φt topTrue, newSt e2 φt topFail], emptyDelta { fstoDelta = kontf't } ))
              -- ST-IfFalse
              (return (Set.fromList [newSt e3 φf topFalse, newSt e3 φf topFail], emptyDelta { fstoDelta = kontf'f } ))
         where value = atomicEval (assertAtomic e1) ρ (vstoStep shared)
               φt =  conjunction (Atomic (symbolic $ assertTrue value)) pc
               φf =  conjunction (Atomic (symbolic $ assertFalse value)) pc
               (topTrue, kontf't) = pushKont (spanOf ite) (context, mcontext) (Branch φf counts topFail) emptyStoDelta (fstoStep shared)
               (topFalse, kontf'f) = pushKont (spanOf ite) (context, mcontext) (Branch φt counts topFail) emptyStoDelta (fstoStep shared)
               newSt e φ' topFail' = state { control = Ev e ρ, pc = φ', topFail = topFail' }
-- ST-App
stepCompound st@(State { control = Ev exp@(App operator operands _) ρ, .. }) shared = fmap lowerBottom $ runJoinT $
                  condsCP
                     [(fromBL (isClo operatorValue),
                         Lat.joinMapM (applyClosure st shared operandsValues) (clos operatorValue)),
                      (fromBL (isPrim operatorValue),
                         return (Lat.joinMap (applyPrimitive st shared exp operandsValues) (prims operatorValue)))]
                     (return (Set.empty, emptyDelta))
   where operatorValue = atomicEval (assertAtomic operator) ρ (vstoStep shared)
         operandsValues = map (atomicEval' ρ (vstoStep shared) . assertAtomic) operands
         atomicEval' ρ' σ e = atomicEval e ρ' σ
-- ST-Input
stepCompound st@(State { control = Ev (Input ℓ) _, .. }) _ =
      return (Set.singleton (st { control = Ap (combine value freshSymVar), rvs = vs', counts = counts' }), emptyDelta)
   where (value, vs') = lookupModel (freshVar ℓ context mcontext) model rvs
         freshSymVar = fresh ℓ context emptyModelContext
         counts' = Map.insertWith (const . const CountInf) (freshVar ℓ context emptyModelContext) CountOne counts
-- ST-Let1
stepCompound st@(State { control = Ev (Letrec allBds@((nam,exp):bds) bdy _) ρ, .. }) shared =
      return (Set.singleton $ st { control = Ev exp ρ', top = top' }, emptyDelta { kstoDelta = kont' })
   where (top', kont') = pushKont (spanOf nam) context (LetK adrs ρ' bds bdy top) emptyStoDelta (kstoStep shared)
         -- pre allocate address so variable exists in the lexical scope 
         newBds = zip (map (name . fst) allBds) (map (flip alloc context . spanOf . fst) allBds)
         adrs = map snd newBds
         ρ' = Environment.extends newBds ρ
stepCompound st@(State { control = Ev (Letrec [] bdy _) ρ }) _ =
      return (Set.singleton $ st { control = Ev bdy ρ }, emptyDelta)
stepCompound st _ = error $ "unsupported program state" ++ show st

applyClosure :: SmallstepM State m => State -> SharedStep -> [Val] -> (Exp, Env) -> m (Set State, SharedStepDelta)
applyClosure st@State{ .. } shared vs (Lam xs e _, ρ') = do
      k <- asks contextSensitivity
      return (Set.singleton $ st { control = Ev e ρ'', context =  pushK k (spanOf e) context}, emptyDelta { vstoDelta = store' })
   where ads = map ((`alloc` context) . spanOf) xs
         bds = zip ads (map RVal vs)
         store' = extendsStoDelta bds emptyStoDelta (vstoStep shared)
         ρ'' = Map.union (Map.fromList $ zip (map name xs) ads) ρ'
applyClosure _ _ _ _ = error "invalid closure"

applyPrimitive :: State -> SharedStep -> Exp -> [Val] -> String -> (Set State, SharedStepDelta)
-- XXX: here we are passing the ENTIRE STORE in the delta, best to compute the difference here and only use the delta!
applyPrimitive st@State { .. } shared e vs nam = Lat.joinMap (\(v, store') -> (Set.singleton st { control = Ap v }, emptyDelta { vstoDelta = DeltaStore (Map.map BL.Value store') })) $ runIdentity $ runInPrimMStack (vstoStep shared) context (Prim.run (fromJust $ Map.lookup nam primitivesByName) e vs)

step' :: SmallstepM State m => State -> SharedStep -> m (Set State, SharedStepDelta)
-- ST-Atomic
step' state@(State { control = Ev e ρ }) shared =
   case isAtomic e of
      Left  atom -> return (Set.singleton $ state { control = Ap (atomicEval atom ρ (vstoStep shared)) }, emptyDelta)
      Right _ -> stepCompound state shared
-- final state, nothing to do anymore
step' (State { control = (Ap _), top = Hlt, topFail = Hlt }) _ = return (Set.empty, emptyDelta)
-- ST-Backtrack
step' st@(State { control = (Ap _), top = Hlt, .. }) shared = do
      Lat.joinMapM applyKont (fromMaybe Set.empty $ Map.lookup topFail (fstoStep shared))
   where applyKont (Branch cnd c  topFail') = do
            ec <- ask
            maybeModel <- computeModel c cnd
            let context' = pushMK mcontext cnd
            let mkModel model' = adaptModel context' (Map.withoutKeys model' (Set.difference (Map.keysSet model') (Map.keysSet c) ))
            maybe (return (Set.empty, emptyDelta))
                  (\model' -> if model' == Map.empty then return (Set.empty, emptyDelta) else do
                     return (Set.singleton $
                        st { control = Ev (initialExpExecutor ec) (initialEnvExecutor ec),
                             model = Lat.join model (mkModel model'),
                             topFail = topFail',
                             counts = Map.empty,
                             pc = emptyFormula,
                             context = [],
                             mcontext = context'
                         -- XXX: Return an empty delta here instead of replacing the stores 
                         -- like in the small step is not very precise
                         }, emptyDelta { vstoDelta = resetStoDeltaTo (initialStoreExecutor ec) (vstoStep shared) ,
                                         kstoDelta = resetStoDeltaTo Map.empty (kstoStep shared) } )) maybeModel

-- ST-Let2
step' st@(State { control = (Ap v), .. }) shared =
      return $ Lat.joinMap applyKont (fromMaybe Set.empty $ Map.lookup top (kstoStep shared))
   where applyKont (LetK [adr] env' [] bdy top') =
               let store' = extendStoDelta (vstoStep shared) adr (RVal v) emptyStoDelta
               in (Set.singleton $ st { control = Ev bdy env', top = top' }, emptyDelta { vstoDelta = store' })
         applyKont (LetK (adr:adrs) env' ((nam,ex):bds) bdy top') =
               let store' = extendStoDelta (vstoStep shared) adr (RVal v) emptyStoDelta
                   (top'', kont') = pushKont (spanOf nam) context (LetK adrs env' bds bdy top') emptyStoDelta (kstoStep shared)
               in (Set.singleton $ st { control = Ev ex env', top = top'' }, emptyDelta { vstoDelta = store', kstoDelta = kont' })
-- Error state is stuck
step' (State { control = Err _ }) _ = return (Set.empty, emptyDelta)

step :: (Ord (f State), Applicative f,  SmallstepM State m) => Shared f -> State -> m (SharedStepDelta, Set State)
step shared inn = do
   (successors, delta) <- step' inn (fromJust $ Map.lookup (pure inn) shared)
   registerSuccessor (SuccessorMap $ Map.singleton inn successors)
   return (delta, successors)

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

collect' :: (Applicative f, Ord (f State), SmallstepM State m) => Shared f -> Set State -> Set State ->  m (Shared f, Set State)
collect' shared nxt ss = do
      (shared', nxt') <- foldrM merge (shared, Set.empty) nxt
      let ss' = Set.union ss nxt'
      liftIO (putStrLn $ "number of discovered states " ++ show (Set.size ss'))
      -- mapM_ (\state -> liftIO $ putStrLn $ "discovered state " ++ show state) (Set.difference ss' ss)
      if (Set.size ss' > 1000 && False) || (shared', ss') == (shared, ss) then
         return (shared', ss')
      else
         collect' shared' nxt' ss'
   where merge inn (shared', ss') = do
            (delta, successors) <- step shared inn
            let originalSharedStep = fromMaybe Lat.bottom (Map.lookup (pure inn) shared')
            return (Map.unionWith Lat.join (Map.fromList $ map ((,applyDeltaJoin originalSharedStep delta) . pure) (Set.toList successors)) shared', ss' `Set.union` successors)

-- | Compute the set of successors for the given list of states
collect :: (Applicative f, Ord (f State), SmallstepM State m) => Shared f -> Set State -> m (Shared f, Set State)
collect shared ss = do
      (shared', ss') <- foldrM merge (shared, ss) ss
      -- liftIO (putStrLn $ "number of discovered states " ++ show (Set.size ss'))
      return (shared', ss')
   where merge inn (shared', ss') = do
            (delta, successors) <- step shared inn
            let originalSharedStep = fromMaybe Lat.bottom (Map.lookup (pure inn) shared')
            return (Map.union (Map.fromList $ map ((,applyDeltaJoin originalSharedStep delta) . pure) (Set.toList successors)) shared', ss' `Set.union` successors)

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
analyze' k e = runContext e k $ collect' (initialShared initialSt) (Set.singleton initialSt) (Set.singleton initialSt)

   where initialSt = inject e

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
