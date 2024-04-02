{-# LANGUAGE UndecidableInstances #-}
module Analysis.Symbolic where

import Analysis.Monad
import Syntax.Scheme
import Analysis.Symbolic.Monad
import Analysis.Actors.Monad
import qualified Analysis.Symbolic.Semantics as Symbolic
import qualified Analysis.Contracts.Semantics as Contracts
import Analysis.Scheme hiding (Sto)
import Analysis.Scheme.Store
import Control.Monad.Layer
import Domain.Symbolic.CPDomain
import Domain.Scheme.Store
import Domain.Contract.Store
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

type Vlu = CPSymbolicValue (PaiAdr K) (VecAdr K) (StrAdr K) (EnvAdr K)
type Sto = DSto K Vlu

------------------------------------------------------------
-- ModF instantation
------------------------------------------------------------

-- | Alias for k-sensitivity context
type K = [Exp]

-- | Alias for values
type V = Vlu

-- | Alias for messages
type Msg = SimpleMessage V

-- | Alias for the mailbox
type MB = Set Msg

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
                                         & runStoreT (values  store)
                                         & runStoreT (strings store)
                                         & runStoreT (pairs   store)
                                         & runStoreT (vecs    store)
                                         & combineStores
                                         -- & runStoreT @ConAdr Map.empty
                                         & runAlloc @_ @K PaiAdr
                                         & runAlloc @_ @K VecAdr
                                         & runAlloc @_ @K StrAdr 
                                         & runAlloc @_ @K EnvAdr
                                         -- & runAlloc @ConAdr PointerAdr
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

