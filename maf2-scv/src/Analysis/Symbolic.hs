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
import Lattice.Class (bottom)

-- Control monads
import qualified Control.Monad.State.SVar as SVar
import Control.Monad.State.SVar (mergeMap)
import qualified Control.Fixpoint.EffectDriven as EF

import Control.Monad.Trans.Class
import Control.Monad.Identity
import Control.Monad.Extra

-- Solving
import Solver (FormulaSolver, runCachedSolver)
import qualified Solver
import Symbolic.SMT (setupSMT)
import Solver.Z3 (runZ3Solver)

-- Builtin data
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.Map.Extra as Map.Extra
import Data.Function ((&))
import Data.Functor.Identity
import Data.Maybe
import Text.Printf
import Prelude hiding (exp, iterate)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Tuple.Extra

import Debug.Trace

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
   throw = upperM . throw
   catch (SymbolicEvalT m) hdl = SymbolicEvalT $ catch @_ m (getSymbolicEvalT . hdl)

runSymbolicEvalT :: SymbolicEvalT v m a -> m a
runSymbolicEvalT (SymbolicEvalT m) = m

------------------------------------------------------------
-- Symbolic Pid representation
------------------------------------------------------------

instance SymbolicARef (Pid ctx) where
   identity EntryPid   = Symbolic.Actor Nothing
   identity (Pid e _)  = Symbolic.Actor (Just $ spanOf e)


--

newtype EarlyBottomT m a = EarlyBottomT (IdentityT m a)
                        deriving (Applicative, Functor, Monad, MonadTrans, MonadLayer)

instance (MonadJoin m) => MonadJoin (EarlyBottomT m) where
   mzero = return bottom
   mjoin (EarlyBottomT ma) (EarlyBottomT mb) = EarlyBottomT $ mjoin ma mb

runEarlyBottomT :: EarlyBottomT m a -> m a
runEarlyBottomT (EarlyBottomT ma) = runIdentityT ma

------------------------------------------------------------
-- Aliases for convenience
------------------------------------------------------------

type Vlu = V K
type Sto = SSto K Vlu
type RetSto = Map (Component K) (SVar.SVar Vlu)

-- | Alias for k-sensitivity context
data K = K [Exp] Symbolic.PC
       deriving (Ord, Eq, Show)

emptyK :: K
emptyK = K [] (Set.singleton Symbolic.Empty)

-- | Alias for messages
type Msg = SimpleMessage Vlu

-- | Alias for the mailbox
type MB = Set Msg

-- | State of all mailboxes
type Mailboxes = Map (Pid K) (SVar.SVar MB)

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

data Stores = Stores { vsto :: Sto, rsto ::  RetSto, csto :: ContractStore' SVar K Vlu }

type State  = (Stores, Mailboxes)
stores :: State -> Stores
stores = fst


-- | Inter analysis monad
type InterM m = (
         FormulaSolver m,
         EffectM m (Component K),
         SVar.MonadStateVar m)

-- | Result of intra-analysis
type IntraResult = ([MayEscape (Set Error) Vlu], State)

-- | Simple intra-analysis
intra :: forall m . InterM m
      => Exp
      -> Component K
      -> K
      -> Pid K
      -> Env K
      -> State
      -> m IntraResult
intra e cmp ctx@(K _ pc) pid env (Stores store retStore contractStore, mbs) = do
         (mailbox, mbs') <- firstM SVar.read =<< Map.Extra.lookupInsertDefaultF (SVar.depend empty) pid mbs
         fmap result $ setupSMT >> Symbolic.eval e >>= (\v -> writeAdr cmp v >> return v)
                                              & runSymbolicEvalT
                                              & runMayEscape @(Set Error)
                                              & runWithFormulaT pc
                                              & runCallT @Vlu @K
                                              & runSchemeAllocT (EnvAdr @K) (VecAdr @K) (PaiAdr @K) (StrAdr @K)
                                              -- actor & contract specific
                                              -- contracts
                                              & runContractAllocT @K
                                              -- 
                                              & runSpawnT
                                              & runCtx ctx
                                              & runEnv env
                                              & runActorT @MB mailbox pid
                                              & runNonDetT
                                              & runSchemeStoreT store                  -- scheme store
                                              & runContractStoreT contractStore        -- contract store
                                              & runStoreT' @(Component K) retStore     -- return values
                                              & runActorSystemT mbs'
                                              & runIntegerPoolT


    where result ((((as, ssto'), csto'), rsto'), mbs') =
            (fmap localResult as, (Stores ssto' rsto' csto', mbs'))
          localResult ((a, _pc), _) = a

-- | Run the intra analysis based on the state of a component
runIntra :: InterM m => Component K -> State -> m State
runIntra c@(Main e) = trace "main" $ intra e c emptyK EntryPid analysisEnv >=>  (return . snd)
runIntra c@(Actor pid e k env) = trace "actor" $ intra e c k pid env >=> (return . snd)

-- | Compute the initial state of the analysis
initialState :: (SVar.MonadStateVar m) => m State
initialState = do
   analysisSto <- SVar.fromMap $ initialSto analysisEnv
   return (Stores (fromValues analysisSto) Map.empty emptyContractStore, emptyActorSystem)

-- | Run the inter analysis
inter :: Exp -> IO (State, SVar.VarState)
inter e =   runZ3Solver
          $ runCachedSolver
          $ runEffectT @[_] (Main e)
          $ setupSMT >> setup initialState >>= iterate runIntra

-- 
simpleAnalysis :: Exp -> IO (Vlu, DSto K Vlu)
simpleAnalysis e = ret . uncurry unifyStores . first stores <$> inter e
   where unifyStores stores state = (SVar.unify (rsto stores) state, unifyStore (vsto stores) state)
         ret (rsto, vsto) = (fromMaybe bottom $ Map.lookup (Main e) rsto, vsto)
         



