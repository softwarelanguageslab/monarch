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
import Analysis.Contracts.Monad
import Control.Monad.Layer
import qualified Domain.Contract.CP as CCP
import qualified Domain.Scheme.Actors.CP as CP
import Domain.Contract.Symbolic
import Domain.Scheme.Store
import Domain.Symbolic.Paired
import Domain.Contract.Store
import Symbolic.AST (Proposition(Actor))
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
import Control.Monad.Identity

------------------------------------------------------------
-- Evaluation function
------------------------------------------------------------

newtype SymbolicEvalT v m a = SymbolicEvalT { getSymbolicEvalT :: m a } deriving (Applicative, Functor, Monad, MonadJoin)

instance MonadTrans (SymbolicEvalT v) where  
   lift = SymbolicEvalT
instance MonadLayer (SymbolicEvalT v) where
   upperM = SymbolicEvalT
   lowerM f (SymbolicEvalT m) = SymbolicEvalT (f m)

instance (ContractM (SymbolicEvalT v m) v msg mb, SymbolicM (SymbolicEvalT v m) v) => EvalM (SymbolicEvalT v m) v Exp where
   eval = Symbolic.eval

-- TODO: this is rather ugly right now but needed
-- since we cannot derive MonadEscape yet if it 
-- is not on top of the layers (see Control.Monad.Layer)
instance (Monad m, MonadEscape m, Esc m ~ Set Error) => MonadEscape (SymbolicEvalT v m) where
   type Esc (SymbolicEvalT v m) = Set Error
   escape = upperM . escape
   catch (SymbolicEvalT m) hdl = SymbolicEvalT $ catch @_ m (getSymbolicEvalT . hdl)

runSymbolicEvalT :: SymbolicEvalT v m a -> m a
runSymbolicEvalT (SymbolicEvalT m) = m

------------------------------------------------------------
-- Symbolic Pid representation
------------------------------------------------------------

instance SymbolicARef (Pid ctx) where  
   identity EntryPid   = Actor Nothing
   identity (Pid e _)  = Actor (Just $ spanOf e)


------------------------------------------------------------
-- Domain instantation
------------------------------------------------------------

type Vlu = V K
type Sto = DSto K Vlu

------------------------------------------------------------
-- ModF instantation
------------------------------------------------------------

-- | Alias for k-sensitivity context
type K = [Exp]

-- | Alias for messages
type Msg = SimpleMessage Vlu

-- | Alias for the mailbox
type MB = Set Msg

------------------------------------------------------------
-- SpawnT
------------------------------------------------------------

newtype SpawnT m a = SpawnT (IdentityT m a) deriving (Applicative, Monad, Functor, MonadTrans, MonadLayer, MonadJoin)

-- TODO: this is just a test to see whether the implementation
-- works without actually using the fixpoint
instance {-# OVERLAPPING #-} (Monad m, EnvM m (EnvAdr K) (CCP.Env K)) => ActorBehaviorM (SpawnT m) Vlu where
  spawn e = do
    --env' <- getEnv
    --upperM (EF.spawn (Actor (CP.Pid e ()) e env'))
    return (aref (CP.Pid e []))
  become = void . spawn

runSpawnT :: SpawnT m a -> m a
runSpawnT (SpawnT m) = runIdentityT m

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Simple intra-analysis
simpleAnalysis :: Exp -> IO [(MayEscape (Set Error) Vlu, Sto)]
simpleAnalysis e = do
                 fmap result $ (setupSMT >> Symbolic.eval e)
                                         & runSymbolicEvalT
                                         & runMayEscape @(Set Error)
                                         & runFormulaT
                                         & runCallBottomT @Vlu
                                         & runStoreT (values  store)
                                         & runStoreT (strings store)
                                         & runStoreT (pairs   store)
                                         & runStoreT (vecs    store)
                                         & combineStores
                                         -- actor & contract specific
                                         & runStoreT @(MsCAdr K) Map.empty
                                         & runStoreT @(FlaAdr K) Map.empty
                                         & runStoreT @(MoαAdr K) Map.empty
                                         -- & runStoreT @ConAdr Map.empty
                                         & runAlloc @_ @K PaiAdr
                                         & runAlloc @_ @K VecAdr
                                         & runAlloc @_ @K StrAdr 
                                         & runAlloc @_ @K EnvAdr
                                         -- contracts
                                         & runAlloc @_ @K MsCAdr
                                         & runAlloc @_ @K MoαAdr
                                         & runAlloc @_ @K FlaAdr
                                         -- & runAlloc @ConAdr PointerAdr
                                         & runCtx []
                                         & runSpawnT
                                         & runEnv env
                                         & runActorT @MB Set.empty EntryPid
                                         & runNonDetT
                                         & runNoSendT
                                         & runIntegerPoolT
                                         & runZ3Solver
    where env    = analysisEnv
          store  = analysisStore @Vlu env
          result = fmap (\((((((r, _pc), sto), _), _), _), _) -> (r, sto))

