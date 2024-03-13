{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use <&>" #-}
module Analysis.Actors where


import Analysis.Scheme.Primitives
import Analysis.Actors.Mailbox
import qualified Analysis.Actors.Mailbox as MB
import Analysis.Actors.Monad
import Analysis.Actors.Semantics
import qualified Analysis.Actors.Semantics as Actors
import Analysis.Monad
import Analysis.Scheme.Store
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
import Data.TypeLevel.HMap ((::->))
import Domain (PIVector, SimplePair)
import Domain.Scheme (Address, PaiDom, StrDom, VarDom, VecDom)
import Domain.Scheme.Actors.Class
import Domain.Scheme.Modular
import Domain.Scheme.Store
import Lattice (CP)
import Syntax.Scheme.AST
import Data.Maybe
import Data.Functor ((<&>))

------------------------------------------------------------
-- Addresses
------------------------------------------------------------

data Adr
  = VarAdr  Ide
  | HeapAdr Exp
  | RetAdr  Component
  | PrmAdr  String
  deriving (Ord, Eq, Show)

data Pid
  = Pid Exp
  | EntryPid
  deriving (Ord, Eq, Show)

instance Address Adr

instance Address Pid

------------------------------------------------------------
-- Domain
------------------------------------------------------------

-- | Type of values in the analysis
type V =
  SchemeVal
    '[ RealConf ::-> CP Double,
       IntConf ::-> CP Integer,
       CharConf ::-> CP Char,
       BoolConf ::-> CP Bool,
       EnvConf ::-> Env,
       ExpConf ::-> Exp,
       StrConf ::-> Adr,
       PaiConf ::-> Adr,
       VecConf ::-> Adr,
       VarConf ::-> Adr,
       PidConf ::-> Pid
     ]

type instance VarDom V = V

type instance PaiDom V = SimplePair V

type instance VecDom V = PIVector V V

type instance StrDom V = SchemeString (CP String) V

-- | Mailbox type
type MB = Set Msg

-- | Type of messages
data Msg = Message String [V] deriving (Eq, Ord)

instance Message Msg V where
  matchesTag (Message tag _) = (tag ==)
  payload (Message _ p) = p
  message = Message

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Env = Map String Adr

type Ctx = ()

type Sto v = Map Adr (SVar.SVar v)

------------------------------------------------------------
-- Semantics
------------------------------------------------------------

newtype EvalT m a = EvalT (m a) deriving (Applicative, Monad, Functor, MonadJoin)

instance (Monad m) => MonadLayer (EvalT m) where
  type Lower (EvalT m) = m
  upperM = EvalT
  layerM f' f = EvalT $ f' (runEvalT . f)

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

type State = (Sto V, Sto (StrDom V), Sto (PaiDom V), Sto (VecDom V), Map Pid (SVar.SVar (Set Msg)))

-- Function calls

data Component
  = Main Exp
  | Actor Pid Exp Env
  deriving (Eq, Ord, Show)

newtype CallT m a = CallT (m a) deriving (Applicative, Monad, Functor, MonadJoin)

instance (Monad m) => MonadLayer (CallT m) where
  type Lower (CallT m) = m
  upperM = CallT
  lowerM f (CallT m) = CallT $ f m

instance {-# OVERLAPPING #-}
  ( EF.EffectM m Component,
    CtxM m Ctx,
    ActorLocalM m Pid Msg MB,
    StoreM m VrAdr Adr V,
    EnvM m Adr Env
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

instance {-# OVERLAPPING #-} (ActorEvalM (EvalT m) V Msg MB, EnvM m Adr Env, EF.EffectM m Component) => ActorBehaviorM (EvalT m) V where
  spawn e = do
    env' <- getEnv
    upperM (EF.spawn (Actor (Pid e) e env'))
    return (aref (Pid e))
  become = void . spawn

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

analyze :: Exp -> SchemeStore V Adr Adr Adr Adr
analyze e = let ((varSto, strSto, paiSto, vecSto, _), state) = (EF.setup initialState >>= EF.iterate intra)
                    & EF.runEffectT [Main e]
                    & runIdentity
            in SchemeStore {
                  values  = SVar.unify varSto state,
                  strings = SVar.unify strSto state,
                  pairs   = SVar.unify paiSto state,
                  vecs    = SVar.unify vecSto state
            }
  where runIntra :: (EF.EffectM m Component, SVar.MonadStateVar m) => Component -> Pid -> Exp -> Env -> State -> m State
        runIntra cmp pid exp' env (varSto, strSto, paiSto, vecSto, mailboxes) = do
             (m, mailboxes') <- mailbox pid mailboxes
             r <-   (Analysis.Monad.eval exp' >>= writeAdr (RetAdr cmp))
                    & runEvalT
                    & runMayEscape @_ @(Set DomainError)
                    & runCallT'
                    & runEnv env
                    & runAlloc @PaAdr (const . HeapAdr)
                    & runAlloc @VeAdr (const . HeapAdr)
                    & runAlloc @StAdr (const . HeapAdr)
                    & runAlloc @VrAdr (const . VarAdr)
                    & runActorT m pid
                    & runCtx ()
                    & runJoinT
                    & runStoreT' @Adr @_ @VrAdr varSto
                    & runStoreT' @Adr @_ @StAdr strSto
                    & runStoreT' @Adr @_ @PaAdr paiSto
                    & runStoreT' @Adr @_ @VeAdr vecSto
                    & runActorSystemT mailboxes'
             let (((((_, varSto'), strSto'), paiSto'), vecSto'), mailboxes'') = r
             return (varSto', strSto', paiSto', vecSto', mailboxes'')
        mailbox pid mailboxes = do
            var <- maybe (SVar.depend Set.empty) pure (Map.lookup pid mailboxes)
            mb  <- SVar.read var
            return (mb, Map.insert pid var mailboxes)
        intra cmp@(Main expr) = runIntra cmp EntryPid expr analysisEnv
        intra cmp@(Actor pid expr env) = runIntra cmp pid expr env
        initialState = do
            values <- foldM (\m (adr, v) -> SVar.new v <&> flip (Map.insert adr) m) Map.empty (Map.toList (initialSto analysisEnv))
            return (values, Map.empty, Map.empty, Map.empty, Map.empty)
        analysisEnv  = initialEnv PrmAdr
