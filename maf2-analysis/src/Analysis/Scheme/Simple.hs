{-# LANGUAGE FlexibleInstances #-}
-- | Simple ModF based Scheme analyses
-- based on the constant propagation domain
module Analysis.Scheme.Simple where

import Syntax.Scheme
import Analysis.Scheme
import Domain.Scheme.Store
import Domain.Scheme hiding (Exp)
import Data.Maybe
import Prelude hiding (exp)
import Analysis.Scheme.Store (DSto)

type VariableAdr = EnvAdr K

-- | Alias for k-sensitivity context
type K = [Exp]

-- | Alias for values
type V = (CPValue (PaiAdr K) (VecAdr K) (StrAdr K) VariableAdr Exp)

-- | Expose a function to run the analysis
runAnalysis :: String -> DSto K V
runAnalysis program = fst $ analyzeProgram @V @_ @([_]) exp []
   where exp = fromJust $ parseString program
