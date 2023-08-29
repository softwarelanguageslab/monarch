{-# LANGUAGE FlexibleInstances, FlexibleContexts, AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Analysis.ModF where

import GHC.Generics (Generic)
import Domain
import Domain.Scheme hiding (Env)
import Domain.Scheme.CPDomain
import Data.Kind
import Data.Map (Map)
import Syntax.Scheme
import Analysis.ModX
import Analysis.Monad
import Analysis.Scheme.Monad
import qualified Analysis.Scheme.Primitives as Prims
import Control.Monad.State hiding (join)
import Analysis.Store
import qualified Analysis.Scheme.Semantics as Sem
import Data.Function
import Data.Functor.Identity
import Control.Monad.Trans.Identity
import Control.Monad.Layer
import Data.Maybe

--
-- Type aliases for convience
--

type Env c  = Map String (ModfAdr c)
type Adrs c = StoreAdrs  (ModfAdr c) (ModfAdr c)
type Sto c  = DMap (StoreAdrs (ModfAdr c) (ModfAdr c))


--
-- Value domain
--

type ModfVlu c = CPValue (ModfAdr c) (ModfAdr c)

--
-- Components 
--

data ModfAdr c = PtrAdr Exp (Ctx c) | VarAdr Ide (Ctx c) | RetAdr (Ctx c) | PrmAdr String (Ctx c) deriving (Eq, Ord, Show, Generic)

alloaPai :: forall c . Exp -> Ctx c -> CPPaiAdr (ModfAdr c) (ModfAdr c)
alloaPai exp = CPPaiAdr . (PtrAdr @c) exp

alloaVec :: forall c . Exp -> Ctx c -> CPVecAdr (ModfAdr c) (ModfAdr c)
alloaVec exp = CPVecAdr . (PtrAdr @c) exp

alloaStr :: forall c . Exp -> Ctx c -> CPStrAdr (ModfAdr c) (ModfAdr c)
alloaStr exp = CPStrAdr . (PtrAdr @c) exp


instance (Hashable c) => Hashable (ModfAdr c)
instance (Show c, Ord c, Hashable c) => Address (ModfAdr c) where
   type Vlu (ModfAdr c) = ModfVlu c

-- 

newtype Ctx c = Ctx c deriving (Eq, Ord, Show, Generic)
instance (Hashable c) => Hashable (Ctx c)

data ModfComponent c = Main Exp | Call Exp (Env c) c
newtype ModfEffect c = AdrDependency (ModfAdr c) deriving (Eq, Ord)

deriving instance (Eq c) => Eq (ModfComponent c)
deriving instance (Ord c) => Ord (ModfComponent c)
deriving instance (Show c) => Show (ModfComponent c)
deriving instance Generic (ModfComponent c)
instance (Hashable c) => Hashable (ModfComponent c)

--
-- ModX configuration
-- 

data ModF (c :: Type)
instance (Ord c) => ModxConfig (ModF c) where
   type Component (ModF c) = ModfComponent c
   type Effect (ModF c) = ModfEffect c
   type State (ModF c) = Sto c

--
-- Effect registration on stores
-- 

instance (Ord c, StoreM m (ModfAdr c)) => StoreM (EffectT (ModF c) m) (ModfAdr c) where
   writeAdr adr vlu = do
      old <- lift $ lookupAdr adr
      if old == vlu then return ()
      else trigger (AdrDependency adr) >> lift (updateAdr adr vlu)
   updateAdr = writeAdr
   lookupAdr adr = register (AdrDependency adr) >> lift (lookupAdr adr)

--
-- Configuration
-- 

runConfig :: forall c l m a . Cap (() ': l) (AnalysisConfig (Ctx c) (ModfAdr c) m) a -> Cap l m a
runConfig (Cap (AnalysisConfig m)) = Cap m

--
-- Calls
-- 

data CallCap
instance {-# OVERLAPPING #-} (Monad m) => CallM (Cap (CallCap ': l) (IdentityT m)) env v where
   call = undefined
instance (Monad m, MonadLayer m, CallM (Cap l (Lower m)) env v) => CallM (Cap (c ': l) m) env v where
   call = undefined

runCall :: Cap (CallCap ': l) (IdentityT m) a -> Cap l m a
runCall = Cap . runIdentityT . getInner

--
-- Intra 
--

runIntra :: forall c . (Ord c, Show c, Typeable c, Hashable c) =>
            Exp
         -> Sto c
         -> c
         -> Env c
         -> (Exp -> Ctx c -> Ctx c)
         -> (Maybe (ModfVlu c), Sto c)
runIntra exp sto ctx env newCtx =
   Sem.eval exp            &
   runEval Sem.eval        &
   runConfig @c            &
   runErr'                 &
   runCall                 &
   runAlloc newCtx         &
   runAlloc (VarAdr @c)    &
   runAlloc (alloaPai @c)  &
   runAlloc (alloaStr @c)  &
   runAlloc (alloaVec @c)  &
   runEnv env              &
   runCtx (Ctx ctx)        &
   runSto sto              &
   runCap                  &
   runIdentity


initialEnv :: Env ()
initialEnv = Prims.initialEnv (`PrmAdr` Ctx ())

initialSto :: Env () -> Sto ()
initialSto = fromMap . Prims.initialSto @(ModfVlu ())

-- test 
eval :: Exp -> Maybe (ModfVlu ())
eval e = fst $ runIntra e sto () env (\_ -> const $ Ctx ())
   where env = initialEnv 
         sto = initialSto env

evalStr :: String -> Maybe (ModfVlu ())
evalStr = Analysis.ModF.eval . fromJust . parseSchemeExp
