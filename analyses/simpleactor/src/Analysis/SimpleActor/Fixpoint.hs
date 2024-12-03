{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
module Analysis.SimpleActor.Fixpoint(ActorCmp, analyze) where

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics
import Analysis.Actors.Monad

import Data.Map (Map)
import Data.Function ((&))
import Data.Functor.Identity

import Analysis.Monad hiding (eval)
import Syntax.AST
import Analysis.Monad.Stack (MonadStack)
import Analysis.Monad.Fix
import Control.Monad.Escape
import Data.Set (Set)
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)
import qualified Data.Map as Map
import Data.Kind (Type, Constraint)
import Domain.SimpleActor
import Analysis.Symbolic.Monad (FormulaT)
import Solver.Z3 (runZ3SolverWithSetup)
import Solver
import Symbolic.AST ( emptyPC, PC )
import qualified Symbolic.SMT as SMT
import Analysis.Store (CountingMap, Store)
import Analysis.Monad.Store ()
import Data.Maybe
import Syntax.Span
import Analysis.Monad.Context (MCfaT)
import Debug.Trace
import Analysis.Context (emptyMcfaContext)
import Control.Monad.IO.Class
import Control.Monad (void)
import Control.Monad.Trans
import Control.Monad.Layer (MonadLayer)
import Control.Monad.Reader (ReaderT (ReaderT))
import Control.Monad.Join (MonadJoinable)
import Control.Monad.State
import Lattice (Joinable)
import Domain (Address)
import Analysis.Monad.Store (WidenedStoreT)
import Analysis.Monad (evalWithWidenedStore)
import Analysis.Symbolic.Monad (WidenedFormulaT, evalWithWidenedFormulaT, pathWideningPerComponent, pathWideningPerComponentEval)

------------------------------------------------------------
-- Shortcuts
------------------------------------------------------------

type K = [Span]
type ActorRef = Pid Exp K
type ActorVlu = ActorValue K
type ActorEnv = Map String (EnvAdr K)
type ActorCmp = Key (IntraT Identity) Cmp
type ActorRes = Val (IntraT Identity) ActorVlu
type ActorMai = Map ActorRef (Set ActorVlu)
type ActorSto = CountingMap (EnvAdr K) ActorVlu
type ActorPC  = PC (EnvAdr K)

type family DependsOn (m :: Type -> Type) (cmp :: Type) (ads :: [Type]) :: Constraint where
      DependsOn m cmp '[] = ()
      DependsOn m cmp (adr : ads) = (DependencyTrackingM m cmp adr, DependsOn m cmp ads)


type family Unlist (as :: Type) :: Type where
   Unlist [k] = k

------------------------------------------------------------
-- Experiments
------------------------------------------------------------


------------------------------------------------------------
-- Monad
------------------------------------------------------------

type IntraT m = MonadStack '[
               MayEscapeT (Set ActorError),
               EnvT ActorEnv,
               DynamicBindingT ActorVlu,
               AllocT Ide K (EnvAdr K),
               AllocT Exp K (PaiAdrE Exp K),
               AllocT Exp K (StrAdrE Exp K),
               AllocT Exp K (VecAdrE Exp K),
               MCfaT (Unlist K),
               MetaT,
               ActorLocalT ActorVlu,
               -- Local path conditions
               FormulaT (EnvAdr K) ActorVlu,
               WidenedStoreT ActorSto (EnvAdr K) ActorVlu,
               -- WidenedFormulaT (EnvAdr K) ActorVlu,
               NonDetT,
               -- JoinT,
               CacheT
               -- Symbolic execution
            ] m

-- TODO: group some constraint into a constraint alias for ModX
type MonadInter m =
      ( MapM ActorCmp ActorRes m,
        WorkListM m ActorCmp,
        ComponentTrackingM m ActorCmp,
        DependsOn m ActorCmp '[ 
            ActorCmp , 
            EnvAdr K, 
            Pid Exp K, 
            PaiAdrE Exp K, 
            VecAdrE Exp K, 
            StrAdrE Exp K, 
            In ActorCmp ActorSto, 
            Out ActorCmp ActorSto ],
            -- In ActorCmp ActorPC,
            -- Out ActorCmp ActorPC ],
        StoreM (PaiAdrE Exp K) (PaiDom ActorVlu) m,
        StoreM (VecAdrE Exp K) (VecDom ActorVlu) m,
        StoreM (StrAdrE Exp K) (StrDom ActorVlu) m,
        MapM (In ActorCmp ActorSto) ActorSto m,
        MapM (Out ActorCmp ActorSto) ActorSto m,
        -- For global stores: StoreM (EnvAdr K) ActorVlu m,
        -- For global stores: AbstractCountM (EnvAdr K) m,
        MonadMailbox ActorVlu m,
        FormulaSolver (EnvAdr K) m)

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Compute the initial component for the given expression
initialCmp :: Exp -> ActorCmp
initialCmp exp = (((((((ActorExp exp, initialEnv), Map.empty), emptyMcfaContext 1), False), Pid exp [])), Symbolic.AST.emptyPC)

-- | Compute the initial flow sensitive store mapping for the given 
-- initial expression
initialFlowSensitiveSto :: Exp -> Map (In ActorCmp ActorSto) ActorSto
initialFlowSensitiveSto exp = Map.fromList [ (In $ initialCmp exp, initialSto allPrimitives PrmAdr) ]

-- | Compute the output store of the main component
mainStore :: Exp -> Map (Out ActorCmp ActorSto) ActorSto -> ActorSto
mainStore e = fromJust . Map.lookup (Out (initialCmp e))


intra :: forall m . MonadInter m
 => ActorCmp -> m ()
intra cmp = void 
             (runFixT @(IntraT (IntraAnalysisT ActorCmp m)) eval' cmp
           & runAlloc @Ide @K @(EnvAdr K) EnvAdr
           & runAlloc @Exp @K @(PaiAdrE Exp K) PaiAdr
           & runAlloc @Exp @K @(StrAdrE Exp K) StrAdr
           & runAlloc @Exp @K @(VecAdrE Exp K) VecAdr
           & evalWithWidenedStore @ActorSto @(EnvAdr K) @ActorVlu
           -- & evalWithWidenedFormulaT @(EnvAdr K)  @ActorVlu
           -- & runWithSymbolicStore
           & runIntraAnalysis cmp)
      where eval' = runAroundT (flowSensitiveStore @_ @_ @ActorSto @_ @(EnvAdr K)) . (flowSensitiveEval @_ @_ @ActorSto (eval @ActorVlu))

initialEnv :: Env K
initialEnv = Map.fromList (fmap (\nam -> (nam, PrmAdr nam)) allPrimitives)

inter :: MonadInter m => Exp -> m ()
inter = lfp intra . initialCmp

analyze :: Exp -> IO ((((), Map (Out ActorCmp ActorSto) ActorSto), ActorMai), Map ActorCmp ActorRes)
analyze exp =  do
      ((((((((), _), _), _), mb), inn), out), mapping) <-
              inter exp
            -- Scheme stores
            & runWithStore @(Map (PaiAdrE Exp K) (PaiDom ActorVlu))
            & runWithStore @(Map (StrAdrE Exp K) (StrDom ActorVlu))
            & runWithStore @(Map (VecAdrE Exp K) (VecDom ActorVlu))
            -- Actor mailboxes
            & runWithMailboxT @ActorVlu
            -- Global store
            -- & runStoreT @ActorSto @(EnvAdr K) @ActorVlu (initialSto allPrimitives PrmAdr)
            -- Flow sensitivity
            & runMapT @(In ActorCmp ActorSto) @ActorSto (initialFlowSensitiveSto exp)
            & runMapT @(Out ActorCmp ActorSto) @ActorSto Map.empty
            -- Path-widening
            -- & runMapT @(In ActorCmp ActorPC) @ActorPC Map.empty
            -- & runMapT @(Out ActorCmp ActorPC) @ActorPC emptyPC
            -- Results
            & runWithMapping @ActorCmp @ActorRes
            -- & runWithJoinMap @ActorCmp @(Unlist ActorRes)
            -- Worklist algorithm
            & runWithComponentTracking @ActorCmp
            & runWithDependencyTracking @ActorCmp @ActorCmp
            & runWithDependencyTracking @ActorCmp @(EnvAdr K)
            & runWithDependencyTracking @ActorCmp @(PaiAdrE Exp K)
            & runWithDependencyTracking @ActorCmp @(VecAdrE Exp K)
            & runWithDependencyTracking @ActorCmp @(StrAdrE Exp K)
            & runWithDependencyTracking @ActorCmp @ActorRef
            & runWithDependencyTracking @ActorCmp @(In ActorCmp ActorSto)
            & runWithDependencyTracking @ActorCmp @(Out ActorCmp ActorSto)
            & runWithWorkList @[_]
            -- Z3 solving
            & runCachedSolver
            & runZ3SolverWithSetup SMT.prelude
      return ((((), out), mb), mapping)
