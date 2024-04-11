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

-- ModX
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
import Solver (FormulaSolver, runCachedSolver)
import qualified Solver
import Symbolic.SMT (setupSMT)
import Solver.Z3 (runZ3Solver)


-- Builtin data
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Function ((&))
import Data.Functor.Identity
import Data.Maybe
import Text.Printf
import Prelude hiding (exp, iterate)
import Data.Set (Set)
import qualified Data.Set as Set

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
-- Aliases for convenience
------------------------------------------------------------

type Vlu = V K
type Sto = SSto K Vlu
type RetSto = Map (Component K) Vlu

-- | Alias for k-sensitivity context
data K = K [Exp] Symbolic.PC
       deriving (Ord, Eq, Show)

emptyK :: K
emptyK = K [] Set.empty

-- | Alias for messages
type Msg = SimpleMessage Vlu

-- | Alias for the mailbox
type MB = Set Msg

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

type State = (Sto, RetSto, ContractStore' SVar K Vlu)

-- | Inter analysis monad
type InterM m = (
         FormulaSolver m,
         EffectM m (Component K),
         SVar.MonadStateVar m,
         ActorGlobalM m (ARef Vlu) Msg
      )

-- | Result of intra-analysis
type IntraResult = [(MayEscape (Set Error) Vlu, State)]

-- | Simple intra-analysis
intra :: forall m . InterM m
      => Exp
      -> K
      -> Pid K
      -> Env K
      -> State
      -> m IntraResult
intra e ctx@(K _ pc) pid env (store, retStore, contractStore) = fmap (fmap result)  $ (setupSMT >> Symbolic.eval e)
                    & runSymbolicEvalT
                    & runMayEscape @(Set Error)
                    & runWithFormulaT pc
                    & runCallT @Vlu @K
                    & runSchemeStoreT store
                    & runSchemeAllocT (EnvAdr @K) (VecAdr @K) (PaiAdr @K) (StrAdr @K)
                    -- actor & contract specific
                    & runContractStoreT contractStore
                    --
                    & runStoreT'' @(Component K) retStore
                    -- contracts
                    & runContractAllocT @K
                    -- 
                    & runSpawnT
                    & runCtx ctx
                    & runEnv env
                    & runActorT @MB Set.empty pid
                    & runNonDetT
                    & runIntegerPoolT
    where result (((((a, pc), store'), contractStore'), ret), localMb) =
            (a, (store', ret, contractStore'))

-- | Join all paths of the intra-analysis together
joinIntra :: IntraResult -> m State
joinIntra = undefined

-- | Run the intra analysis based on the state of a component
runIntra :: InterM m => Component K -> State -> m State
runIntra (Main e) = intra e emptyK EntryPid analysisEnv >=> joinIntra
runIntra (Actor pid e k env) = intra e k pid env >=> joinIntra

-- | Compute the initial state of the analysis
initialState :: (SVar.MonadStateVar m) => m State
initialState = do
   analysisSto <- SVar.fromMap $ initialSto analysisEnv
   return (fromValues analysisSto, Map.empty, emptyContractStore)

-- | Run the inter analysis
inter :: Exp -> IO State
inter e =   runZ3Solver
          $ runCachedSolver
          $ fmap (fst . fst) $ runEffectT [Main e]
          $ runActorSystemT (emptyActorSystem @MB)
          $ setupSMT >> setup initialState >>= iterate runIntra

-- 
simpleAnalysis :: Exp -> IO [(MayEscape (Set Error) Vlu, DSto K Vlu)]
simpleAnalysis = undefined
