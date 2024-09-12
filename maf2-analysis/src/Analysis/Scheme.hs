{-# LANGUAGE UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
module Analysis.Scheme where

import Prelude hiding (iterate, exp, lookup)

import Analysis.Scheme.Primitives
import qualified Analysis.Scheme.Semantics as Semantics
import Analysis.Scheme.Monad (SchemeM)
import Analysis.Monad hiding (getEnv)

import Control.Monad.Trans.Class
import Control.Monad.Join
import Control.Monad.Layer

import Syntax.Scheme
import Domain.Scheme hiding (Exp, Env)
import Domain.Scheme.Store
import Data.Print
import Text.Printf

import Data.Set (Set)
import Data.Map (Map)
import Data.Functor.Identity
import Data.Function ((&))
import Analysis.Monad (EnvM(..))
import Analysis.Scheme.Store
import Control.Monad.DomainError (DomainError)
import Control.Monad.Escape
import Control.Monad.Identity (IdentityT(..))
import Control.Fixpoint.EffectDriven
import Control.Fixpoint.WorkList
import qualified Control.Monad.State.SVar as SVar
import qualified Data.Map as Map
import Control.Monad ((>=>))

-----------------------------------------
-- Shorthands
-----------------------------------------

type Program              = Exp

-----------------------------------------
-- Store & Environment
-----------------------------------------

-- | The initial environment used by 
-- the analysis
analysisEnv :: forall ctx . Env ctx
analysisEnv = initialEnv PrmAdr

-- | The initial store
analysisStore :: forall v ctx . (SchemeAnalysisConstraints (EnvAdr ctx) v ctx)
              => Env ctx -> DSto ctx v
analysisStore = fromValues . initialSto @v

-----------------------------------------
-- ModF
-----------------------------------------

data Component v ctx = Call Exp (Env ctx) ctx
                         | Main Exp
                         deriving (Eq, Ord, Show)

instance (Show ctx) => PrintShort (Component v ctx) where 
   printShort (Main _) = "Main"
   printShort (Call exp _ ctx) = printf "Call(%s, %s)" (show exp) (show ctx)
   

type State ctx v = DSto ctx v

-----------------------------------------
-- Open recursion for evaluation
-----------------------------------------

newtype BaseSchemeEvalT v m a = BaseSchemeEvalT { getInnerEvalT :: m a } deriving (Monad, Functor, MonadJoin, Applicative)

instance MonadLayer (BaseSchemeEvalT v) where
   upperM = BaseSchemeEvalT
   lowerM f m = BaseSchemeEvalT $ f (runEvalT m)

-- TODO: this is rather ugly right now but needed
-- since we cannot derive MonadEscape yet if it 
-- is not on top of the layers (see Control.Monad.Layer)
instance (Monad m, MonadEscape m, Esc m ~ Set DomainError) => MonadEscape (BaseSchemeEvalT v m) where
   type Esc (BaseSchemeEvalT v m) = Set DomainError
   throw = upperM . throw
   catch (BaseSchemeEvalT m) hdl = BaseSchemeEvalT $ catch @_ m (getInnerEvalT . hdl)

instance MonadTrans (BaseSchemeEvalT v) where
   lift = BaseSchemeEvalT

instance (SchemeM (BaseSchemeEvalT v m) v, SchemeAnalysisConstraints var v ctx) => (Analysis.Monad.EvalM (BaseSchemeEvalT v m) v Exp) where
   eval = Semantics.eval


runEvalT :: BaseSchemeEvalT v m a -> m a
runEvalT (BaseSchemeEvalT m) = m

-----------------------------------------
-- CallM & StoreM implementation
-----------------------------------------

newtype CallT v ctx m a = CallT (IdentityT m a) deriving (Monad, Functor, Applicative, MonadLayer, MonadTrans, MonadJoin)

-- | This instances spawns the called function as a component, 
-- and reads the return value from the store.
instance {-# OVERLAPPING #-} (
          CtxM m ctx,
          StoreM m (EnvAdr ctx) v,
          EnvM m (EnvAdr ctx) (Env ctx),
          StoreM m (Component v ctx) v,
          EffectSVarM m (Component v ctx),
          SchemeAnalysisConstraints (EnvAdr ctx) v ctx
         ) => CallM (CallT v ctx m) (Env ctx) v where
   call (Lam _ bdy _, _) = do
       -- get the extended environment 
       env' <- CallT $ lift getEnv
       -- get the current context
       ctx <- CallT $ lift getCtx
       -- create a new component from this context
       let comp = Call bdy env' ctx
       --  spawn  the new component
       _ <- CallT $ spawn comp
       -- lookup the return value of the component
       lookupAdr comp
   call _ = error "call can only be a lambda expression"

-- | Run the CallT monad and peel it off the stack whilst returning 
-- its encapsulated ModX state.
runCallT :: forall v ctx m a . CallT v ctx m a -> m a
runCallT (CallT m) = runIdentityT m

-----------------------------------------
-- Analysis
-----------------------------------------

-- TODO: too many constraints, makes it more difficult to parse the program
-- as written, try to simplify
type SchemeAnalysisConstraints var v ctx = (
         Show v,
         SchemeValue v,
         Adr v ~ var,
         EnvAdr ctx ~ Adr v,
         PaiAdr ctx ~ PAdr v,
         StrAdr ctx ~ SAdr v,
         VecAdr ctx ~ VAdr v,
         SchemeConstraints v Exp var (Env ctx),
         Ord ctx, 
         Ord v)


initialState :: forall m v ctx . (SchemeAnalysisConstraints (EnvAdr ctx) v ctx, SVar.MonadStateVar m) => m (SSto ctx v, Map (Component v ctx) (SVar.SVar v))
initialState = do
   let sto = Map.toList (initialSto @v @_ @(EnvAdr ctx) analysisEnv)
   vars <- mapM (\(k,v) -> (k,) <$> SVar.new v) sto
   return (fromValues (Map.fromList vars), Map.empty)

-- | Evaluates the given expression in the appropriate monad and writes its result to the store
-- on the return address

evalRet :: forall v ctx m . (EvalM m v Exp, StoreM m (Component v ctx) v) => Component v ctx -> Exp -> m ()
evalRet cmp = eval >=> writeAdr cmp

-- | Analyses the given program into an analysis
-- result. It uses the default initial environment
-- as specified in `Analysis.Scheme.Primitives`
analyzeProgram :: forall v ctx wl . 
                  (SchemeAnalysisConstraints (EnvAdr ctx) v ctx, WorkList wl (Component v ctx))
                => Exp -> ctx -> (DSto ctx v, Map (Component v ctx) v)
analyzeProgram program initialCtx = (store', retStore')
   where ((rsto, rretSto), state) = runIdentity $ runEffectT @wl (Main program) (setup initialState >>= iterate intra)
         store'     = unifyStore rsto state
         retStore'  = SVar.unify rretSto state
         run m env ctx (sto, retSto) = do
            ((_, sto'), retSto') <- m
                                     & runEvalT
                                     & runMayEscape @(Set DomainError)
                                     & runCallT @v @ctx
                                     & runEnv env
                                     & runAlloc (PaiAdr @Exp @ctx) 
                                     & runAlloc (VecAdr @Exp @ctx)
                                     & runAlloc (StrAdr @Exp @ctx)
                                     & runAlloc (EnvAdr @ctx)
                                     & runCtx ctx
                                     & runJoinT
                                     & runSchemeStoreT sto
                                     & runStoreT' retSto
            return (sto', retSto')
         intra cmp@(Main exp) = run (evalRet cmp exp) analysisEnv initialCtx
         intra cmp@(Call exp env ctx) = run (evalRet cmp exp) env ctx
