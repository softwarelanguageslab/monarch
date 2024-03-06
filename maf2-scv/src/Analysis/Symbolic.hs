{-# LANGUAGE UndecidableInstances #-}
module Analysis.Symbolic where

import Analysis.Monad 
import Syntax.Scheme
import Analysis.Symbolic.Monad
import Analysis.Monad
import qualified Analysis.Symbolic.Semantics as Symbolic
import Analysis.Scheme hiding (Sto)
import Analysis.Scheme.Store
import Control.Monad.Layer
import Domain.Symbolic.CPDomain
import Domain.Scheme.Store
import Control.Monad.Escape
import Control.Monad.DomainError
import qualified Data.Map as Map

import Control.Monad.Join
import Syntax.Scheme
import Analysis.Scheme hiding (Sto)
import Domain (Address)
import Domain.Scheme hiding (Exp)
import Control.SVar.ModX
import Solver.Z3
import Solver (setup)
import Symbolic.SMT (prelude)

import Data.Function ((&))
import Data.Functor.Identity
import Data.Maybe (fromJust)
import Data.Maybe
import Text.Printf
import Prelude hiding (exp)
import Data.Set (Set)
 
------------------------------------------------------------
-- Evaluation function
------------------------------------------------------------

newtype SymbolicEvalT m v a = SymbolicEvalT { getSymbolicEvalT :: (m a) } deriving (Applicative, Functor, Monad, MonadJoin)

instance (Monad m) => MonadLayer (SymbolicEvalT m v) where   
   type Lower (SymbolicEvalT m v) = m
   upperM = SymbolicEvalT 
   lowerM f (SymbolicEvalT m) = SymbolicEvalT (f m)

instance SymbolicM (SymbolicEvalT m v) v => EvalM (SymbolicEvalT m v) v Exp where  
   eval = Symbolic.eval

-- TODO: this is rather ugly right now but needed
-- since we cannot derive MonadEscape yet if it 
-- is not on top of the layers (see Control.Monad.Layer)
instance (Monad m, MonadEscape m, Esc m ~ Set DomainError) => MonadEscape (SymbolicEvalT m v) where
   type Esc (SymbolicEvalT m v) = Set DomainError
   escape = upperM . escape
   catch (SymbolicEvalT m) hdl = SymbolicEvalT $ catch @_ m (getSymbolicEvalT . hdl)

runSymbolicEvalT :: SymbolicEvalT m v a -> m a
runSymbolicEvalT (SymbolicEvalT m) = m

------------------------------------------------------------
-- Domain instantation
------------------------------------------------------------

type Vlu = CPSymbolicValue PointerAdr VariableAdr Exp
type Sto = DSto K Vlu

------------------------------------------------------------
-- ModF instantation
------------------------------------------------------------

-- | The ModF instantation used in this analysis
type M = ModF VariableAdr V K AdrDep

-- | Type of pointer address
data PointerAdr  = PointerAdr Exp [Exp]
                 deriving (Eq, Ord, Show)
data VariableAdr = Adr Ide [Exp]
                 | Prm String
                 | Ret (Component M)
                 deriving (Eq, Ord)

instance Show VariableAdr where
   show (Adr ide ctx) = printf "Adr(%s, %s)" (show ide) (show ctx)
   show (Prm nam)     = printf "Prm(%s)" nam
   show (Ret (exp, _, ctx, _)) = printf "Ret(%s, %s)" (show exp) (show ctx)

instance VarAdr VariableAdr V K AdrDep where
   retAdr = Ret
   prmAdr = Prm

-- | Alias for k-sensitivity context
type K = [Exp]

-- | Alias for values
type V = Vlu

-- | Type of dependency 
data AdrDep = VarAdrDep VariableAdr
            | PtrDep PointerAdr
            deriving (Eq, Ord)

-- | AdrDep is indeed a `Dependency` (i.e. it satisfies
-- the `Dependency` typeclass)
instance Dependency PointerAdr AdrDep where
   dep = PtrDep
instance Dependency VariableAdr AdrDep where
   dep = VarAdrDep

instance Address VariableAdr
instance Address PointerAdr

-- | The allocator
instance SchemeAlloc K VariableAdr PointerAdr PointerAdr PointerAdr AdrDep where
   allocVar = Adr
   allocCtx = const id
   allocPai = PointerAdr
   allocVec = PointerAdr
   allocStr = PointerAdr

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Simple intra-analysis
simpleAnalysis :: Exp -> IO [(MayEscape (Set DomainError) Vlu, Sto)]
simpleAnalysis e = do
                 fmap result $ (setup prelude >> Symbolic.eval e)
                                         & runSymbolicEvalT 
                                         & runMayEscape @_ @(Set DomainError)
                                         & runFormulaT 
                                         & runCallBottomT
                                         & runStoreT @VrAdr (values  store)
                                         & runStoreT @StAdr (strings store)
                                         & runStoreT @PaAdr (pairs   store)
                                         & runStoreT @VeAdr (vecs    store)
                                         & combineStores
                                         & runAlloc @PaAdr PointerAdr
                                         & runAlloc @VeAdr PointerAdr
                                         & runAlloc @StAdr PointerAdr
                                         & runAlloc @VrAdr Adr
                                         & runCtx []
                                         & runEnv env 
                                         & runNonDetT
                                         & runIdentifierPoolT
                                         & runZ3Solver
    where env    = analysisEnvironment
          store  = analysisStore @Vlu env
          result = fmap (\((r, _pc), sto) -> (r, sto))

