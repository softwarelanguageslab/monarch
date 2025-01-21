-- | Instantiations of the ASE analysis
{-# LANGUAGE DataKinds #-}
module ASE.Analyses where 

import ASE.Fixpoint
import qualified ASE.Machines.Local as LocalMachine
import qualified ASE.Semantics as Semantics
import Analysis.Monad.Stack
import Syntax.AST
import RIO

------------------------------------------------------------
-- Analyses
------------------------------------------------------------

-- | Analyses are functions from expressions to analysis results
type Analysis = Exp -- ^ the expression the analyze 
             -> Int -- ^ the k for the k-cfa context sensitivity
             -> IO AnalysisResult

-- | All ASE analyses require a configuration and a monadic 
-- context in which SMT formulae can be solved for their 
-- satisfiability. This function provides such facilities.
runM :: AnalysisM a -> IO a
runM = undefined

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

-- | The of the monadic context shared between all analyses
type AnalysisM = MonadStack '[] IO

------------------------------------------------------------
-- Local Machine Analysis
------------------------------------------------------------

instance IsAnalysisResult (Set a)

-- | Local analysis
localAnalysis :: Analysis
localAnalysis e k = undefined -- AnalysisResult <$> compute initial (collect $ LocalMachine.runLocalMachine Semantics.step)
   where initial = undefined -- LocalMachine (initialState 



