{-# LANGUAGE UndecidableInstances #-}
module Analysis.Symbolic where

import Analysis.Monad
import Syntax.Scheme
import Analysis.Symbolic.Monad
import Analysis.Actors.Monad
import qualified Analysis.Symbolic.Semantics as Symbolic
import Analysis.Scheme hiding (Sto)
import Analysis.Scheme.Store
import Control.Monad.Layer
import Domain.Symbolic.CPDomain
import Domain.Scheme.Store
import Control.Monad.Escape
import Control.Monad.DomainError
import Control.Monad.State.IntPool
import qualified Data.Map as Map

import Control.Monad.Join
import Analysis.Scheme hiding (Sto)
import Domain (Address)
import Domain.Scheme hiding (Exp)
import Solver.Z3
import Solver (setup)
import Symbolic.SMT (setupSMT)

import Analysis.Actors.Mailbox

import Data.Function ((&))
import Data.Functor.Identity
import Data.Maybe
import Text.Printf
import Prelude hiding (exp)
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.Trans.Class

------------------------------------------------------------
-- Evaluation function
------------------------------------------------------------

newtype SymbolicEvalT v m a = SymbolicEvalT { getSymbolicEvalT :: m a } deriving (Applicative, Functor, Monad, MonadJoin)

instance MonadTrans (SymbolicEvalT v) where  
   lift = SymbolicEvalT
instance MonadLayer (SymbolicEvalT v) where
   upperM = SymbolicEvalT
   lowerM f (SymbolicEvalT m) = SymbolicEvalT (f m)

instance (ActorEvalM (SymbolicEvalT v m) v msg mb, SymbolicM (SymbolicEvalT v m) v) => EvalM (SymbolicEvalT v m) v Exp where
   eval = Symbolic.eval

-- TODO: this is rather ugly right now but needed
-- since we cannot derive MonadEscape yet if it 
-- is not on top of the layers (see Control.Monad.Layer)
instance (Monad m, MonadEscape m, Esc m ~ Set DomainError) => MonadEscape (SymbolicEvalT v m) where
   type Esc (SymbolicEvalT v m) = Set DomainError
   escape = upperM . escape
   catch (SymbolicEvalT m) hdl = SymbolicEvalT $ catch @_ m (getSymbolicEvalT . hdl)

runSymbolicEvalT :: SymbolicEvalT v m a -> m a
runSymbolicEvalT (SymbolicEvalT m) = m

------------------------------------------------------------
-- Domain instantation
------------------------------------------------------------

type Vlu = CPSymbolicValue PointerAdr VariableAdr
type Sto = DSto K Vlu

------------------------------------------------------------
-- ModF instantation
------------------------------------------------------------

-- | Type of pointer address
data PointerAdr  = PointerAdr Exp [Exp]
                 deriving (Eq, Ord, Show)
data VariableAdr = Adr Ide [Exp]
                 | Prm String
                 deriving (Eq, Ord)

instance Show VariableAdr where
   show (Adr ide ctx) = printf "Adr(%s, %s)" (show ide) (show ctx)
   show (Prm nam)     = printf "Prm(%s)" nam

instance VarAdr VariableAdr V K where
   retAdr = undefined
   prmAdr = Prm

-- | Alias for k-sensitivity context
type K = [Exp]

-- | Alias for values
type V = Vlu

-- | Alias for messages
type Msg = SimpleMessage V

-- | Alias for the mailbox
type MB = Set Msg

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
instance SchemeAlloc K VariableAdr PointerAdr PointerAdr PointerAdr where
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
                 fmap result $ (setupSMT >> Symbolic.eval e)
                                         & runSymbolicEvalT
                                         & runMayEscape @(Set DomainError)
                                         & runFormulaT
                                         & runCallBottomT @V
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
                                         & runActorT @MB Set.empty EntryPid
                                         & runNonDetT
                                         & runNoSpawnT
                                         & runNoSendT
                                         & runIntegerPoolT
                                         & runZ3Solver
    where env    = analysisEnv
          store  = analysisStore @Vlu env
          result = fmap (\(((r, _pc), sto), _) -> (r, sto))

