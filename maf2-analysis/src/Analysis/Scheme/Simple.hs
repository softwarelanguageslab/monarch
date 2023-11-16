{-# LANGUAGE FlexibleInstances #-}
-- | Simple ModF based Scheme analyses
-- based on the constant propagation domain
module Analysis.Scheme.Simple where

import Syntax.Scheme
import Analysis.Scheme
import Domain (Address, Vlu)
import Domain.Scheme hiding (Exp)
import Domain.Scheme.CPDomain
import Control.SVar.ModX
import GHC.Generics
import Data.Hashable
import Data.Maybe
import Text.Printf
import Prelude hiding (exp)

-- | The ModF instantation used in this analysis
type M = ModF VariableAdr V K AdrDep

-- | Type of pointer address
data PointerAdr  = PointerAdr Exp [Exp]
                 deriving (Eq, Ord, Generic, Show)
instance Hashable PointerAdr
data VariableAdr = Adr Ide [Exp]
                 | Prm String
                 | Ret (Component M)
                 deriving (Eq, Ord, Generic)

instance Show VariableAdr where 
   show (Adr ide ctx) = printf "Adr(%s, %s)" (show ide) (show ctx)
   show (Prm nam)     = printf "Prm(%s)" nam 
   show (Ret (exp, _, ctx, _)) = printf "Ret(%s, %s)" (show exp) (show ctx)

instance Hashable VariableAdr
instance Address VariableAdr where
  type Vlu VariableAdr = V

instance VarAdr VariableAdr V K AdrDep where
   retAdr = Ret
   prmAdr = Prm

-- | Alias for k-sensitivity context
type K = [Exp]

-- | Alias for values
type V = (CPValue PointerAdr VariableAdr Exp)

-- | Type of dependency 
data AdrDep = VarAdrDep VariableAdr
            | PaiAdrDep (CPPaiAdr PointerAdr VariableAdr Exp)
            | VecAdrDep (CPVecAdr PointerAdr VariableAdr Exp)
            | StrAdrDep (CPStrAdr PointerAdr VariableAdr Exp)
            deriving (Eq, Ord, Generic)
instance Hashable AdrDep

-- | AdrDep is indeed a `Dependency` (i.e. it satisfies
-- the `Dependency` typeclass)
instance Dependency (CPPaiAdr PointerAdr VariableAdr Exp) AdrDep where
   dep = PaiAdrDep
instance Dependency (CPVecAdr PointerAdr VariableAdr Exp) AdrDep where
   dep = VecAdrDep
instance Dependency (CPStrAdr PointerAdr VariableAdr Exp) AdrDep where
   dep = StrAdrDep
instance Dependency VariableAdr AdrDep where
   dep = VarAdrDep

-- | The allocator
instance SchemeAlloc K VariableAdr V AdrDep where
   allocPai exp ctx = CPPaiAdr $ PointerAdr exp ctx
   allocVec exp ctx = CPVecAdr $ PointerAdr exp ctx
   allocStr exp ctx = CPStrAdr $ PointerAdr exp ctx
   allocVar = Adr
   allocCtx = const id

-- | Expose a function to run the analysis
runAnalysis :: String -> DSto K V
runAnalysis program = analyzeProgram @V exp [] []
   where exp = fromJust $ parseString program 

testEval :: Exp -> DSto K V
testEval exp = 
   let (state, _, _, _) = analyze @(ModF VariableAdr V K AdrDep) 
                          (exp, analysisEnvironment @VariableAdr, [], undefined)
                          (analysisStore @V analysisEnvironment)
   in state
