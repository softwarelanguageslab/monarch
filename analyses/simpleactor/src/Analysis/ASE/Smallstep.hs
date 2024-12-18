{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DeriveGeneric #-}
-- | Small-step semantics for abstract concolic execution. 
module Analysis.ASE.Smallstep(analyze, State(..), isFinalState, isStuckState, module Analysis.ASE.Common) where

import Syntax.AST
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.Reader.Class
import Control.Monad.Reader (ReaderT)
import Lattice.Class (PartialOrder (subsumes), Joinable)
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
import Lattice (justOrBot)
import Control.Monad.Join (cond, condsCP, fromBL)

import Syntax (SpanOf(..))
import Analysis.Store (Store(..))
import RIO (runIdentity)
import Solver ( CachedSolver, runCachedSolver )
import Domain.Core.AbstractCount (AbstractCount(CountInf, CountOne))
import Solver.Z3 (Z3Solver, runZ3SolverWithSetup)
import qualified Symbolic.SMT as SMT
import Control.Monad.Writer (MonadWriter (tell), WriterT (runWriterT))
import Analysis.ASE.Common
import Analysis.Monad (runJoinT)
import Lattice.BottomLiftedLattice (lowerBottom)
import GHC.Generics
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

instance NFData State

-- | Abstract machine states
data State = State {
      -- | Control component
      control :: Control,
      -- | (Local) Store component
      store :: Sto,
      -- | Top of the continuation stack
      top :: KAdr [Span],
      -- | Local continuation store
      kont :: KSto,
      -- | Top of the failure continuation stack
      topFail :: FAdr,
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
      pc :: PC,
      -- | The model context
      mcontext :: ModelContext
   } deriving (Generic)

instance Show State where
   show (State { .. }) =
      "⟨" ++ show control ++ ", σ, " ++ show top ++ "," ++  "<kstore> ," ++ show topFail ++ "," ++ show context ++ "," ++ show model ++ "," ++ show rvs ++ "," ++ show counts ++ "," ++ show pc ++ "⟩"

deriving instance (Eq (PaiDom Val), Eq (VecDom Val), Eq (StrDom Val)) => Eq State
deriving instance (Ord (PaiDom Val), Ord (VecDom Val), Ord (StrDom Val)) => Ord State

------------------------------------------------------------
-- Small-stepping relation
------------------------------------------------------------

stepCompound :: SmallstepM State m => State -> m (Set State)
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
               (topTrue, kontf't) = pushKont (spanOf ite) (context, mcontext) (Branch φf topFail) kontf
               (topFalse, kontf'f) = pushKont (spanOf ite) (context, mcontext) (Branch φt topFail) kontf
               newSt e φ' kontf' topFail' = state { control = Ev e ρ, pc = φ', topFail = topFail', kontf = kontf'  }
-- ST-App
stepCompound st@(State { control = Ev exp@(App operator operands _) ρ, .. }) = fmap lowerBottom $ runJoinT $
                  condsCP
                     [(fromBL (isClo operatorValue),
                          Set.fromList <$> mapM (applyClosure st operandsValues) (Set.toList $ clos operatorValue)),
                      (fromBL (isPrim operatorValue),
                         return $ foldMap (applyPrimitive st exp operandsValues) (prims operatorValue))]
                     (return Set.empty)
   where operatorValue = atomicEval (assertAtomic operator) ρ store
         operandsValues = map (atomicEval' ρ store . assertAtomic) operands
         atomicEval' ρ σ e = atomicEval e ρ σ
-- ST-Input
stepCompound st@(State { control = Ev (Input ℓ) _, .. }) =
      return $ Set.singleton $ st { control = Ap (combine value freshSymVar), rvs = vs', counts = counts' }
   where (value, vs') = lookupModel (freshVar ℓ context mcontext) model rvs
         freshSymVar = fresh ℓ context mcontext
         counts' = Map.insertWith (const . const CountInf) (freshVar ℓ context mcontext) CountOne counts
-- ST-Let1
stepCompound st@(State { control = Ev (Letrec ((nam,exp):bds) bdy _) ρ, .. }) =
      return $ Set.singleton $ st { control = Ev exp ρ', kont = kont', top = top' }
   where (top', kont') = pushKont (spanOf nam) context (LetK adr ρ' bds bdy top) kont
         -- pre allocate address so variable exists in the lexical scope 
         adr = alloc (spanOf nam) context
         ρ' = Map.insert (name nam) adr ρ
stepCompound st@(State { control = Ev (Letrec [] bdy _) ρ }) =
      return $ Set.singleton $ st { control = Ev bdy ρ }
stepCompound st = error $ "unsupported program state" ++ show st

applyClosure :: SmallstepM State m => State -> [Val] -> (Exp, Env) -> m State
applyClosure st@State{ .. } vs (Lam xs e _, ρ') = do
      k <- asks contextSensitivity
      return st { control = Ev e ρ'', store = store', context =  pushK k (spanOf e) context}
   where ads = map ((`alloc` context) . spanOf) xs
         bds = zip ads (map RVal vs)
         store' = extendsSto bds store
         ρ'' = Map.union (Map.fromList $ zip (map name xs) ads) ρ'
applyClosure _ _ _ = error "invalid closure"

applyPrimitive :: State -> Exp -> [Val] -> String -> Set State
applyPrimitive st@State { .. } e vs nam = Set.map (\(v, store') -> st { control = Ap v, store = store' }) $ runIdentity $ runInPrimMStack store context (Prim.run (fromJust $ Map.lookup nam primitivesByName) e vs)

step' :: SmallstepM State m => State -> m (Set State)
-- ST-Atomic
step' state@(State { control = Ev e ρ, store = σ }) =
   case isAtomic e of
      Left  atom -> return $ Set.singleton $ state { control = Ap (atomicEval atom ρ σ) }
      Right _ -> stepCompound state
-- final state, nothing to do anymore
step' (State (Ap _) _ Hlt _ Hlt _  _ _ _ _ _ _) = return Set.empty
-- ST-Backtrack
step' st@(State (Ap _) _ Hlt _ topFail ψ _ model _ c  _ mcontext) =
      foldMapM applyKont (fromMaybe Set.empty $ Map.lookup topFail ψ)
   where applyKont (Branch cnd topFail') = do
            ec <- ask
            maybeModel <- computeModel c cnd
            let context' = pushMK mcontext cnd
            let mkModel model' = adaptModel context' (Map.withoutKeys model' (Set.difference (Map.keysSet model') (Map.keysSet c) ))
            maybe (return Set.empty)
                 (\model' -> if model == Map.empty then return Set.empty else
                     return $ Set.singleton $
                        st { kont = Map.empty,
                             store = initialStoreExecutor ec,
                             control = Ev (initialExpExecutor ec) (initialEnvExecutor ec),
                             model = Lat.join model (mkModel model'),
                             topFail = topFail',
                             counts = Map.empty,
                             pc = emptyFormula,
                             context = [],
                             mcontext = context'
                        } ) maybeModel

-- ST-Let2
step' st@(State { control = (Ap v), .. }) =
      return $ Set.map applyKont (fromMaybe Set.empty $ Map.lookup top kont)
   where applyKont (LetK adr env' bds bdy top') =
               let store' = extendSto adr (RVal v) store
               in st { control = Ev (Letrec bds bdy (spanOf bdy)) env', store = store', top = top' }

step :: SmallstepM State m => State -> m (Set State)
step inn = do
   successors <- step' inn -- (Debug.traceShowId inn)
   registerSuccessor (SuccessorMap $ Map.singleton inn successors)
   return successors

------------------------------------------------------------
-- Utility functions (mostly for inspecting the results)
------------------------------------------------------------

isFinalState :: State -> Bool
isFinalState (State (Ap _) _ Hlt _ Hlt _ _ _ _ _ _ _) = True
isFinalState _ = False

isStuckState :: SuccessorMap State -> State -> Bool
isStuckState succs st =
   Set.size (fromMaybe Set.empty (Map.lookup st (getSuccessorMap succs))) == 0

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Compute the set of successors for the given list of states
collect :: SmallstepM State m => Set State -> m (Set State)
collect = foldMapM step

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
   State (Ev e (initialEnv PrimAdr)) analysisStore Hlt Map.empty Hlt Map.empty [] Map.empty initialSeq Map.empty emptyFormula emptyModelContext

runContext :: Exp -- ^ the initial expression
           -> Int -- ^ the desired context sensitivity
           -> ReaderT ConcolicContext (WriterT (SuccessorMap State) (CachedSolver SymVar (Z3Solver SymVar))) a
           -> IO (a, SuccessorMap State)
runContext e0 k m =
         runReaderT m (ConcolicContext analysisStore (initialEnv PrimAdr) e0 k)
       & runWriterT
       & runCachedSolver
       & runZ3SolverWithSetup SMT.prelude

-- | Computes the set of states reachable from @e@
analyze :: Int -> Exp -> IO (Set State, SuccessorMap State)
analyze k e = runContext e k $ lfpInc collect $ Set.singleton $ inject e
