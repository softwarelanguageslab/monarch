{-# LANGUAGE UndecidableInstances #-}
module Analysis.Contracts where

import Prelude hiding (exp)
import Syntax.Scheme (Exp, Ide)
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
import Analysis.Scheme.Store
import Data.Set (Set)
import Domain.Contract.Store
import Analysis.Contracts.Monad
import Control.Monad.Join

------------------------------------------------------------
-- Environment
------------------------------------------------------------

type Env = Map String Addr

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
       StrConf ::-> Addr,
       PaiConf ::-> Addr,
       VecConf ::-> Addr,
       VarConf ::-> Addr,
       PidConf ::-> CP.Pid (),
       BeCConf ::-> UnorderedBehaviorContract Addr,
       FlaConf ::-> Addr,
       PMeConf ::-> Addr]

type V = SchemeVal M

type instance VarDom V = V
type instance PaiDom V = SimplePair V
type instance VecDom V = PIVector V V
type instance StrDom V = SchemeString (CP String) V

------------------------------------------------------------
-- EvalT
------------------------------------------------------------

newtype EvalT m a = EvalT { getEvalT :: (IdentityT m a) }
                  deriving (Monad, Applicative, Functor, MonadTrans, MonadJoin, MonadLayer)


instance (Esc m ~ Set Error, MonadJoin m, ContractM (EvalT m) V, Monad m) => EvalM (EvalT m) V Exp where 
   eval = Sem.eval

runEvalT :: EvalT m a -> m a
runEvalT (EvalT m) = runIdentityT m


instance (Monad m, MonadEscape m, Esc m ~ Set Error) => MonadEscape (EvalT m) where
   type Esc (EvalT m) = Set Error
   escape = upperM . escape
   catch (EvalT (IdentityT m)) hdl = EvalT $ IdentityT $ catch @_ m (runIdentityT . getEvalT . hdl)

------------------------------------------------------------
-- Store
------------------------------------------------------------

data Addr = VarAdr Ide ()
            | PtrAdr Exp ()
            deriving (Eq, Ord, Show)

instance Address Addr

type Sto = Map Addr V

runAnalysis :: Exp -> (MayEscape (Set Error) V, Sto)
runAnalysis exp = let ((((((v, _), _), _), _), _), sto) =  Sem.eval @V exp
                         & runEvalT 
                         & runMayEscape @(Set Error)
                         & runCallBottomT @V
                         & runEnv Map.empty
                         & runStoreT @PaAdr @Addr @_ Map.empty
                         & runStoreT @VeAdr @Addr @_ Map.empty
                         & runStoreT @StAdr @Addr @_ Map.empty
                         & runStoreT @ConAdr @Addr Map.empty 
                         & runStoreT @FlaAdr @Addr Map.empty
                         & runStoreT @VrAdr @Addr @V Map.empty
                         & runSchemeAllocT VarAdr PtrAdr
                         & runAlloc @ConAdr PtrAdr
                         & runAlloc @FlaAdr PtrAdr
                         & runCtx ()
                         & runIdentity
                  in (v, sto)
