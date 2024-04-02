{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use <&>" #-}
module Analysis.Actors where


import Debug.Trace
import Analysis.Scheme.Primitives
import Analysis.Actors.Mailbox
import Analysis.Actors.Monad
import qualified Analysis.Actors.Semantics as Actors
import Analysis.Monad
import Analysis.Scheme.Store
import Analysis.Scheme hiding (Component(..), Env, CallT, EvalT(..), State, runEvalT, RetAdr)
import qualified Control.Fixpoint.EffectDriven as EF
import Control.Monad (void, foldM)
import Control.Monad.DomainError
import Control.Monad.Join
import Control.Monad.Layer
import qualified Control.Monad.State.SVar as SVar
import Data.Function ((&))
import Data.Functor.Identity
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Scheme.Actors.Class
import Domain.Scheme.Store
import Syntax.Scheme.AST
import Data.Functor ((<&>))
import qualified Domain.Scheme.Actors.CP as CP
import Control.Monad.Trans.Class
import Domain (Address)

------------------------------------------------------------
-- Domain
------------------------------------------------------------


-- | Mailbox type
type MB = Set Msg

-- | Type of messages
type Msg = SimpleMessage V

------------------------------------------------------------
-- Address
------------------------------------------------------------

newtype RetAdr = RetAdr Component deriving (Ord, Eq, Show)
instance Address RetAdr

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type V = CP.CPActorValue (EnvAdr Ctx) (PaiAdr Ctx) (VecAdr Ctx) (StrAdr Ctx) Ctx
type Pid = CP.Pid Ctx

type Env = Map String (EnvAdr Ctx)

type Ctx = ()

------------------------------------------------------------
-- Semantics
------------------------------------------------------------

newtype EvalT m a = EvalT (m a) deriving (Applicative, Monad, Functor, MonadJoin)

instance MonadTrans EvalT where   
   lift = EvalT

instance MonadLayer EvalT where
  upperM = EvalT
  lowerM f (EvalT m) = EvalT $ f m

instance (ActorEvalM (EvalT m) V Msg MB) => EvalM (EvalT m) V Exp where
  eval = Actors.eval

instance (Monad m, MonadEscape m, Esc m ~ Set DomainError) => MonadEscape (EvalT m) where
  type Esc (EvalT m) = Set DomainError
  escape = upperM . escape
  catch (EvalT m) hdl = EvalT $ catch @_ m (getInnerEvalT . hdl)
    where
      getInnerEvalT (EvalT m') = m'

runEvalT :: EvalT m a -> m a
runEvalT (EvalT m) = m

------------------------------------------------------------
-- ModX
------------------------------------------------------------

type State = (SSto Ctx V, Map RetAdr (SVar.SVar V), Map Pid (SVar.SVar (Set Msg)))

-- Function calls

data Component
  = Main Exp
  | Actor Pid Exp Env
  deriving (Eq, Ord, Show)

newtype CallT m a = CallT (m a) deriving (Applicative, Monad, Functor, MonadJoin)
instance MonadTrans CallT where  
  lift = CallT
instance MonadLayer CallT where
  upperM = CallT
  lowerM f (CallT m) = CallT $ f m

instance {-# OVERLAPPING #-}
  ( EF.EffectM m Component,
    CtxM m Ctx,
    ActorLocalM m Pid Msg MB,
    StoreM m RetAdr V,
    EnvM m (EnvAdr Ctx) Env
  ) => CallM (CallT m) Env V where

  call (Lam _ bdy _, _) = do
    env' <- upperM getEnv
    pid <- upperM self
    let comp = Actor pid bdy env'
    upperM $ EF.spawn comp
    lookupAdr (RetAdr comp)
  call _ = error "invalid call"

runCallT' :: CallT m a -> m a
runCallT' (CallT m) = m

-- Actor spawns

instance {-# OVERLAPPING #-} (ActorEvalM (EvalT m) V Msg MB, EnvM m (EnvAdr Ctx) Env, EF.EffectM m Component) => ActorBehaviorM (EvalT m) V where
  spawn e = do
    env' <- getEnv
    upperM (EF.spawn (Actor (CP.Pid e ()) e env'))
    return (aref (CP.Pid e ()))
  become = void . spawn

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

analyze :: Exp -> (DSto Ctx V, Map RetAdr V)
analyze e = let ((sto, retSto, _), state) = (EF.setup initialState >>= EF.iterate intra)
                    & EF.runEffectT [Main e]
                    & runIdentity
            in (unifyStore sto state, SVar.unify retSto state)
  where runIntra :: (EF.EffectM m Component, SVar.MonadStateVar m) => Component -> Pid -> Exp -> Env -> State -> m State
        runIntra cmp pid exp' env (sto, retSto, mailboxes) = do
             (m, mailboxes') <- mailbox pid mailboxes
             r <-   (Analysis.Monad.eval exp' >>= writeAdr (RetAdr cmp))
                    & runEvalT
                    & runMayEscape @(Set DomainError)
                    & runCallT'
                    & runEnv env
                    & runAlloc @_ @Ctx PaiAdr
                    & runAlloc @_ @Ctx VecAdr
                    & runAlloc @_ @Ctx StrAdr
                    & runAlloc @_ @Ctx EnvAdr
                    & runActorT m pid
                    & runCtx ()
                    & runJoinT
                    & runSchemeStoreT sto
                    & runStoreT' retSto
                    & runActorSystemT mailboxes'
             let (((_, sto'), retSto'), mailboxes'') = r
             return (sto', retSto', mailboxes'')
        mailbox pid mailboxes = do
            var <- maybe (SVar.depend Set.empty) pure (Map.lookup pid mailboxes)
            mb  <- SVar.read var
            return (mb, Map.insert pid var mailboxes)
        intra cmp@(Main expr) = runIntra cmp CP.EntryPid expr analysisEnv
        intra cmp@(Actor pid expr env) = runIntra cmp pid expr env
        initialState = do
            values <- foldM (\m (adr, v) -> SVar.new v <&> flip (Map.insert adr) m) Map.empty (Map.toList (initialSto @V analysisEnv))
            return (fromValues @SVar @V values, Map.empty, Map.empty)
        analysisEnv  = initialEnv PrmAdr
