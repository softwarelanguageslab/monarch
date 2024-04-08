{-# LANGUAGE FlexibleInstances #-}
-- | Simple ModF based Scheme analyses
-- based on the constant propagation domain
module Analysis.Scheme.Simple where

import Syntax.Scheme
import Analysis.Scheme
import Domain.Scheme.Store
import Domain.Scheme hiding (Exp)
import GHC.Generics
import Data.Maybe
import Text.Printf
import Data.Print
import Prelude hiding (exp)

-- | Type of pointer address
data PointerAdr  = PointerAdr Exp [Exp]
                 deriving (Eq, Ord, Generic, Show)
type VariableAdr = EnvAdr K

-- | Alias for k-sensitivity context
type K = [Exp]

-- | Alias for values
type V = (CPValue (PaiAdr K) (VecAdr K) (StrAdr K) VariableAdr Exp)

-- | The allocator
instance SchemeAlloc K VariableAdr (PaiAdr K) (VecAdr K) (StrAdr K) where
   allocVar = EnvAdr
   allocCtx = const id
   allocPai = PaiAdr
   allocVec = VecAdr
   allocStr = StrAdr

-- | Expose a function to run the analysis
runAnalysis :: String -> DSto K V
runAnalysis program = fst $ analyzeProgram @V exp [] []
   where exp = fromJust $ parseString program
