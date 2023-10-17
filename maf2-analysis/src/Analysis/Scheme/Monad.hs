{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
module Analysis.Scheme.Monad(SchemeM, allocPai, allocVec, allocStr, allocVar, AnalysisConfig(..), stoPai, stoStr) where 

import Data.Functor
import Syntax.Scheme.AST
import Domain
import Domain.Scheme hiding (Exp)
import qualified Domain.Scheme as S
import Analysis.Monad
import Data.Kind
import Control.Monad.Trans
import Control.Monad.Layer
import Control.Monad.Join

stoPai :: SchemeM m v => Exp -> Vlu (PAdr v) -> m v
stoPai ex v = allocPai ex >>= (\adr -> writeAdr adr v $> pptr adr)
stoStr :: SchemeM m v => Exp -> Vlu (SAdr v) -> m v
stoStr ex v = allocStr ex >>= (\adr -> writeAdr adr v $> sptr adr)

class SchemeConfig (m :: Type -> Type) where
   type Adr m :: Type
   -- The context attached to each abstract state of the analysis
   type Ctx m :: Type

type SchemeM m v = (
   -- Config
   SchemeConfig m,
   -- Domain
   SchemeDomain v,
   PairDomain (Vlu (PAdr v)),
   VectorDomain (Vlu (VAdr v)),
   StringDomain (Vlu (SAdr v)),
   MonadJoin m,
   MonadDomainError m,
   -- Environment
   EnvM m (Adr m) (Env v),
   -- Store interactions
   StoreM m (PAdr v),
   StoreM m (Adr m),
   StoreM m (VAdr v),
   StoreM m (SAdr v),
   -- Allocation
   AllocM m Ide (Adr m),     -- variable allocation
   AllocM m Exp (PAdr v),    -- pair allocation
   AllocM m Exp (VAdr v),    -- vector allocation
   AllocM m Exp (SAdr v),    -- string allocation
   --
   CtxM m (Ctx m),
   CallM m (Env v) v,
   Boo v ~ v,
   EvalM m v Exp,
   Vlu (Adr m) ~ v,
   Exp ~ S.Exp v)

allocPai :: SchemeM m v => Exp -> m (PAdr v)
allocPai = alloc
allocVec :: SchemeM m v => Exp -> m (VAdr v)
allocVec = alloc
allocStr :: SchemeM m v => Exp -> m (SAdr v)
allocStr = alloc
allocVar :: SchemeM m v => Ide -> m (Adr m)
allocVar = alloc

newtype AnalysisConfig (ctx :: Type) (adr :: Type) m a = AnalysisConfig (m a) deriving (Monad, Applicative, Functor)

instance MonadTrans (AnalysisConfig ctx adr) where
   lift = AnalysisConfig

instance (Monad m) => MonadLayer (AnalysisConfig ctx adr m) where
   type Lower (AnalysisConfig ctx adr m) = m 
   upperM = lift
   lowerM f (AnalysisConfig m) = AnalysisConfig $ f m

instance (MonadJoin m) => MonadJoin (AnalysisConfig ctx adr m) where 
   mjoin (AnalysisConfig ma) (AnalysisConfig mb) = AnalysisConfig $ mjoin ma mb
   mzero = lift mzero

type family Adr' m where   
   Adr' (AnalysisConfig _ adr _) = adr
   Adr' m = (Adr' (Lower m))

type family Ctx' m where   
   Ctx' (AnalysisConfig ctx _ _) = ctx
   Ctx' m = (Ctx' (Lower m))

instance SchemeConfig m where  
   type Adr m = Adr' m
   type Ctx m = Ctx' m
