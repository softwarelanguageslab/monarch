-- | Instantiations of the ASE analysis
{-# LANGUAGE DataKinds #-}
module ASE.Analyses where 

import ASE.Fixpoint
import qualified ASE.Machines.Local as LocalMachine
import ASE.Machine
import qualified ASE.Semantics as Semantics
import ASE.Domain.SymbolicVariable
import Analysis.Monad.Stack
import Syntax.AST
import RIO
import qualified RIO.Map as Map
import qualified RIO.Set as Set
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
                  ConfigurationT Semantics.K Semantics.V
               ] (Z3Solver SymbolicVariable)

-- | All ASE analyses require a configuration and a monadic 
-- context in which SMT formulae can be solved for their 
-- satisfiability. This function provides such facilities.
runM :: Configuration Semantics.K Semantics.V -> AnalysisM a -> IO a
runM cfg = runZ3SolverWithSetup SMT.prelude . runConfigurationT cfg

------------------------------------------------------------
-- Analysis Results
------------------------------------------------------------

-- | Class of types representing analysis results
class IsAnalysisResult a where   

-- | A "dynamically" typed analysis result, this can be 
-- used in automated benchmarks to run an analysis 
-- and obtained specific parts of its analysis result.
data AnalysisResult where   
   AnalysisResult :: IsAnalysisResult a => a -> AnalysisResult

------------------------------------------------------------
-- Initial configurations
------------------------------------------------------------

initialEnv :: Env Semantics.K
initialEnv = Map.empty

initialSto :: Map (VAdr Semantics.K) Semantics.V
initialSto = Map.empty

initialConfiguration :: Exp -> Int -> Configuration Semantics.K Semantics.V
initialConfiguration e k = 
   Configuration k e initialSto initialEnv

------------------------------------------------------------
-- Local Machine Analysis
------------------------------------------------------------

instance IsAnalysisResult (Set a)

-- | Local analysis
localAnalysis :: Analysis
localAnalysis e k = AnalysisResult <$> runM cfg (compute initial (collect $ LocalMachine.runLocalMachine Semantics.step)) 
   where cfg     = initialConfiguration e k
         initial = Set.singleton $ LocalMachine.initialState cfg



