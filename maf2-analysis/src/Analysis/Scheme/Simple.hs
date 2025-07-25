{-# LANGUAGE FlexibleInstances #-}
-- | Simple ModF based Scheme analyses
-- based on the constant propagation domain
module Analysis.Scheme.Simple(VariableAdr, V, runAnalysis, cpAnalyze) where

import Syntax.Scheme
import Analysis.Scheme
import Domain.Scheme.Store
import Domain.Scheme hiding (Exp, Adr)
import Data.Maybe
import Prelude hiding (exp)

-- | Alias for values
type V = CPValue Adr Exp

-- | Alias for address to variables
type VariableAdr = Adr

cpAnalyze :: Exp -> AnlRes V 
cpAnalyze = analyze

-- | Expose a function to run the analysis
runAnalysis :: String -> AnlRes V
runAnalysis = cpAnalyze . fromJust . parseString 