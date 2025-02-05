-- | Instantiations of the ASE analysis
{-# LANGUAGE DataKinds, FlexibleInstances, GeneralizedNewtypeDeriving, DeriveGeneric #-}
{-# LANGUAGE Strict #-}
module ASE.Analyses where

import ASE.Fixpoint
import qualified ASE.Machines.Local as LocalMachine
import qualified ASE.Machines.FlowSensitive as FlowSensitive
import qualified ASE.Machines.Test as Eff
import ASE.Machine
import qualified ASE.Semantics as Semantics
import ASE.Domain.SymbolicVariable
import Analysis.Monad.Stack
import Data.TypeLevel.HList
import Data.Maybe
import qualified Analysis.Scheme.Primitives as Primitives
import Syntax.AST
import RIO
import qualified RIO.Map as Map
import qualified RIO.Set as Set
import Solver(CachedSolver, runCachedSolver)
import Solver.Z3
import qualified Symbolic.SMT as SMT

------------------------------------------------------------
-- Analyses
------------------------------------------------------------

-- | Analyses are functions from expressions to analysis results
type Analysis = Exp -- ^ the expression the analyze 
             -> Int -- ^ the k for the k-cfa context sensitivity
             -> IO AnalysisResult


-- | The type of the monadic context shared between all analyses
type AnalysisM = MonadStack '[
                  ConfigurationT Semantics.K Semantics.V,
                  CachedSolver SymbolicVariable
               ] (Z3Solver SymbolicVariable)

-- | All ASE analyses require a configuration and a monadic 
-- context in which SMT formulae can be solved for their 
-- satisfiability. This function provides such facilities.
runM :: Configuration Semantics.K Semantics.V -> AnalysisM a -> IO a
runM cfg = runZ3SolverWithSetup SMT.prelude . runCachedSolver . runConfigurationT cfg

------------------------------------------------------------
-- Analysis Results
------------------------------------------------------------

-- | Class of types representing analysis results
class (NFData a) => IsAnalysisResult a where
   -- | Returns the set of reachable blame AST nodes detected 
   -- by the analysis
   blameNodes' :: a -> Set Span
   -- | Returns the set of values in halting program states
   values' :: a -> Set Semantics.V
   -- | Returns the number states in the visited set
   visitedSize' :: a -> Int

-- | A "dynamically" typed analysis result, this can be 
-- used in automated benchmarks to run an analysis 
-- and obtained specific parts of its analysis result.
data AnalysisResult where
   AnalysisResult :: IsAnalysisResult a => a -> AnalysisResult

instance NFData AnalysisResult where
   rnf (AnalysisResult a) = rnf a

-- | Obtain the set of reachable blame nodes for any analysis result
blameNodes :: AnalysisResult -> Set Span
blameNodes (AnalysisResult a) = blameNodes' a

-- | Obtain the set of program values in halting program states 
-- for any analysis result
values :: AnalysisResult -> Set Semantics.V
values (AnalysisResult a) = values' a

-- | Obtain the size of the visited set for the given 
-- program result.
visitedSize (AnalysisResult a) = visitedSize' a

------------------------------------------------------------
-- Initial configurations
------------------------------------------------------------

initialEnv :: Env Semantics.K
initialEnv = Primitives.initialEnv PrimAdr

initialSto :: Map (VAdr Semantics.K) Semantics.V
initialSto = Primitives.initialSto initialEnv

initialConfiguration :: Exp -> Int -> Configuration Semantics.K Semantics.V
initialConfiguration e k =
   Configuration k e initialSto initialEnv

------------------------------------------------------------
-- Local Machine Analysis
------------------------------------------------------------

-- | Result from the local machine analysis
newtype LocalAnalysisResult = LocalAnalysisResult { getLocalAnalysisResult :: Set LocalMachine.State } deriving (NFData)

-- | The local machine result is an analysis result
instance IsAnalysisResult LocalAnalysisResult where
   -- To extract the nodes relating to a blame error, we need to traverse the set of 
   -- reachable states and only select those that relate to the evaluation of a blame AST node.
   blameNodes' = Set.fromList . mapMaybe (extract . unnest) . Set.toList . getLocalAnalysisResult
      where extract :: HList (Unnest LocalMachine.State) -> Maybe Span
            extract (Ev (Blame _ s) _ :+: _) = Just s
            extract _ = Nothing
   values' = Set.fromList . mapMaybe (extract . unnest) . Set.toList . getLocalAnalysisResult
      where extract :: HList (Unnest LocalMachine.State) -> Maybe Semantics.V
            extract (Ap v :+: (ContinuationState Hlt _) :+: _) = Just v
            extract _ = Nothing
   visitedSize' = Set.size . getLocalAnalysisResult

-- | Local analysis
localAnalysis :: Analysis
localAnalysis e k = AnalysisResult . LocalAnalysisResult <$> runM cfg (compute initial (collect $ LocalMachine.runLocalMachine Semantics.step))
   where cfg     = initialConfiguration e k
         initial = Set.singleton $ LocalMachine.initialState cfg

------------------------------------------------------------
-- Flow-sensitive Machine Analysis
------------------------------------------------------------

instance IsAnalysisResult FlowSensitive.State where
   blameNodes' = Set.fromList . mapMaybe (extract . unnest) . Set.toList . FlowSensitive.stepStates
      where extract :: HList (Unnest FlowSensitive.StepState) -> Maybe Span
            extract (Ev (Blame _ s) _ :+: _) = Just s
            extract _ = Nothing
   values' =  Set.fromList . mapMaybe (extract . unnest) . Set.toList . FlowSensitive.stepStates
      where extract :: HList (Unnest FlowSensitive.StepState) -> Maybe Semantics.V
            extract (Ap v :+: (ContinuationState Hlt _) :+: _) = Just v
            extract _ = Nothing
   visitedSize' = Set.size . FlowSensitive.stepStates

flowSensitiveAnalysis :: Analysis
flowSensitiveAnalysis e k = AnalysisResult <$> runM cfg (compute initial (FlowSensitive.run Semantics.step))
   where cfg = initialConfiguration e k
         initial = FlowSensitive.initialState cfg

------------------------------------------------------------
-- Effect-driven analysis widened per state
------------------------------------------------------------

data EffectDrivenResult = EffectDrivenResult (Set Eff.StepState) Eff.FlowOutput
                        deriving (Ord, Eq, Generic)
instance NFData EffectDrivenResult

instance IsAnalysisResult EffectDrivenResult where 
   blameNodes' (EffectDrivenResult seen _) = Set.fromList $ mapMaybe (extract . unnest . Eff.stepState) $ Set.toList seen 
      where extract :: HList (Unnest Eff.StepState') -> Maybe Span
            extract (Ev (Blame _ s) _ :+: _) = Just s
            extract _ = Nothing
   values' (EffectDrivenResult seen _) = Set.fromList $ mapMaybe (extract . unnest . Eff.stepState) $ Set.toList seen
      where extract :: HList (Unnest Eff.StepState') -> Maybe Semantics.V
            extract (Ap v :+: (ContinuationState Hlt _)  :+: _) = Just v
            extract _ = Nothing
   visitedSize' (EffectDrivenResult seen _) = Set.size seen

effAnalysis :: Analysis 
effAnalysis e k = AnalysisResult . (uncurry EffectDrivenResult) <$> runM cfg (Eff.analyze Semantics.step cfg)
   where cfg = initialConfiguration e k

------------------------------------------------------------
-- Listing of configurations
------------------------------------------------------------

analyses :: Map String Analysis
analyses = 
   Map.fromList [("local", localAnalysis), 
                ("flow", flowSensitiveAnalysis),
                ("effect", effAnalysis)]


-- | A mapping from human-readable configuration names to their Haskell functions
analysesByName :: String -> Analysis
analysesByName = fromJust . flip Map.lookup analyses
