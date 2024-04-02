{-# LANGUAGE UndecidableInstances #-}
module Analysis.Contracts where

import Prelude hiding (exp)
import Syntax.Scheme (Exp)
import Domain hiding (Exp, Env)
import qualified Domain.Scheme.Actors.CP as CP
import Data.Map (Map)
import Data.TypeLevel.HMap ((::->))
import Analysis.Contracts.Behavior
import Analysis.Monad
import qualified Analysis.Contracts.Semantics as Sem
import Lattice
import Data.Function ((&))
import Control.Monad.Identity
import Control.Monad.DomainError
import Control.Monad.Trans.Class
import Control.Monad.Layer
import qualified Data.Map as Map
import Analysis.Scheme (EnvAdr (..), PaiAdr (..), VecAdr (VecAdr), StrAdr (..))
import Data.Set (Set)
import qualified Data.Set as Set
import Analysis.Contracts.Monad
import Control.Monad.Join
import Analysis.Actors.Mailbox (SimpleMessage)
import Analysis.Actors.Monad

------------------------------------------------------------
-- Environment
------------------------------------------------------------

type Env = Map String (EnvAdr K)

------------------------------------------------------------
-- Domain
------------------------------------------------------------

type M = '[
       RealConf ::-> CP Double,
       IntConf  ::-> CP Integer,
       CharConf ::-> CP Char,
       BoolConf ::-> CP Bool,
       EnvConf ::-> Env,
       ExpConf ::-> Exp,
       StrConf ::-> StrAdr K,
       PaiConf ::-> PaiAdr K,
       VecConf ::-> VecAdr K,
       VarConf ::-> EnvAdr K,
       PidConf ::-> CP.Pid K,
       BeCConf ::-> UnorderedBehaviorContract MsCAdr,
       MoαConf ::-> MoαAdr,
       FlaConf ::-> FlaAdr,
       PMeConf ::-> MsCAdr]

type V = SchemeVal M

type instance VarDom V = V
type instance PaiDom V = SimplePair V
type instance VecDom V = PIVector V V
type instance StrDom V = SchemeString (CP String) V

------------------------------------------------------------
-- Actors
------------------------------------------------------------

type Msg = SimpleMessage V
type MB  = Set Msg

------------------------------------------------------------
-- EvalT
------------------------------------------------------------

newtype EvalT m a = EvalT { getEvalT :: IdentityT m a }
                  deriving (Monad, Applicative, Functor, MonadTrans, MonadJoin, MonadLayer)


instance (Esc m ~ Set Error, ContractM (EvalT m) V Msg MB) => EvalM (EvalT m) V Exp where
   eval = Sem.eval

runEvalT :: EvalT m a -> m a
runEvalT (EvalT m) = runIdentityT m


instance (Monad m, MonadEscape m, Esc m ~ Set Error) => MonadEscape (EvalT m) where
   type Esc (EvalT m) = Set Error
   escape = upperM . escape
   catch (EvalT (IdentityT m)) hdl = EvalT $ IdentityT $ catch @_ m (runIdentityT . getEvalT . hdl)

------------------------------------------------------------
-- Addresses
------------------------------------------------------------

data MsCAdr = MsCAdr Exp () deriving (Eq, Ord, Show)
data MoαAdr = MoαAdr Exp () deriving (Eq, Ord, Show)
data FlaAdr = FlaAdr Exp () deriving (Eq, Ord, Show)

instance Address MsCAdr
instance Address MoαAdr
instance Address FlaAdr

------------------------------------------------------------
-- Store
------------------------------------------------------------

type K = ()
type Sto = Map (EnvAdr K) V

runAnalysis :: Exp -> (MayEscape (Set Error) V, Sto)
runAnalysis exp = let ((((((((v, _), _), _), _), _), _), sto), _) =  Sem.eval @V exp
                         & runEvalT
                         & runMayEscape @(Set Error)
                         & runCallBottomT @V
                         & runEnv Map.empty
                         & runStoreT @(PaiAdr K) Map.empty
                         & runStoreT @(VecAdr K) Map.empty
                         & runStoreT @(StrAdr K) Map.empty
                         & runStoreT @MsCAdr Map.empty
                         & runStoreT @FlaAdr Map.empty
                         & runStoreT @MoαAdr Map.empty
                         & runStoreT @(EnvAdr K) @V Map.empty
                         & runAlloc @_ @K PaiAdr
                         & runAlloc @_ @K VecAdr
                         & runAlloc @_ @K StrAdr
                         & runAlloc @_ @K EnvAdr
                         & runAlloc @_ @K MsCAdr
                         & runAlloc @_ @K MoαAdr
                         & runAlloc @_ @K FlaAdr
                         & runActorT @MB Set.empty EntryPid
                         & runCtx ()
                         & runNoSpawnT
                         & runNoSendT
                         & runIdentity
                  in (v, sto)
