{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
module Analysis.Symbolic where

import Analysis.Scheme.Prelude

-- Syntax
import qualified Symbolic.AST as Symbolic

-- Monads
import Analysis.Symbolic.Monad
import Analysis.Actors.Monad
import Analysis.Contracts.Monad

-- Semantics
import qualified Analysis.Contracts.Semantics as Contracts
import qualified Analysis.Symbolic.Semantics as Symbolic

-- Stores
import Analysis.Contracts.Store
import Analysis.Actors.Mailbox

import Analysis.Scheme.Actors.Components

-- Domains
import qualified Domain.Contract.CP as CCP
import qualified Domain.Scheme.Actors.CP as CP
import Domain.Contract.Symbolic
import Domain.Symbolic.Paired
import Domain.Contract.Store

-- Control monads
import qualified Control.Monad.State.SVar as SVar

import Control.Monad.Trans.Class
import Control.Monad.Identity

-- Solving
import Solver (setup, FormulaSolver)
import Symbolic.SMT (setupSMT)
import Solver.Z3 (runZ3Solver)


-- Builtin data
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Function ((&))
import Data.Functor.Identity
import Data.Maybe
import Text.Printf
import Prelude hiding (exp)
import Data.Set (Set)
import qualified Data.Set as Set
import Analysis.Scheme (DSto)

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
   identity EntryPid   = Symbolic.Actor Nothing
   identity (Pid e _)  = Symbolic.Actor (Just $ spanOf e)


------------------------------------------------------------
-- Domain instantation
------------------------------------------------------------

type Vlu = V K
type Sto = SSto K Vlu
type RetSto = Map (Component K) Vlu

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
-- Analysis
------------------------------------------------------------

type State = (Sto, RetSto, ContractStore K Vlu)

-- | Simple intra-analysis
intra :: forall m . (FormulaSolver m, EffectM m (Component K), SVar.MonadStateVar m, Monad m) 
      => Exp 
      -> State
      -> m [(MayEscape (Set Error) Vlu, State)]
intra e (store, retStore, contractStore) = do
           fmap (fmap result)  $ (setupSMT >> Symbolic.eval e)
                               & runSymbolicEvalT
                               & runMayEscape @(Set Error)
                               & runFormulaT
                               & runCallT @Vlu @K
                               & runSchemeStoreT store
                               & runSchemeAllocT (EnvAdr @K) (VecAdr @K) (PaiAdr @K) (StrAdr @K)
                               -- actor & contract specific
                               & runStoreT'' @(MsCAdr K) (messageContracts contractStore)
                               & runStoreT'' @(FlaAdr K) (flats contractStore)
                               & runStoreT'' @(MoαAdr K) (monitors contractStore)
                               & runStoreT'' @(Component K) retStore
                               -- contracts
                               & runAlloc @_ @K MsCAdr
                               & runAlloc @_ @K MoαAdr
                               & runAlloc @_ @K FlaAdr
                               --
                               & runSpawnT
                               & runCtx @[Exp] []
                               & runEnv env
                               & runActorT @MB Set.empty EntryPid
                               & runNonDetT
                               & runNoSendT
                               & runIntegerPoolT
    where env    = analysisEnv
          result (((((((a, pc), store), msg), fla), mon), ret), mb) =
            (a, (store, ret, ContractStore msg fla mon))

simpleAnalysis :: Exp -> IO [(MayEscape (Set Error) Vlu, DSto K Vlu)]
simpleAnalysis = undefined
