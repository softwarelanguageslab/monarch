{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
module Analysis.Scheme.Monad(SchemeM, SchemeM', allocPai, allocVec, allocStr, allocVar, stoPai, stoStr) where

import Data.Functor
import Syntax.Scheme.AST
import Domain hiding (Exp)
import Domain.Scheme hiding (Exp)
import qualified Domain.Scheme as S
import Analysis.Monad
import Control.Monad.Join
import Control.Monad.DomainError

stoPai :: SchemeM m v => Exp -> PaiDom v -> m v
stoPai ex v = allocPai ex >>= (\adr -> writeAdr adr v $> pptr adr)
stoStr :: SchemeM m v => Exp -> StrDom v -> m v
stoStr ex v = allocStr ex >>= (\adr -> writeAdr adr v $> sptr adr)

type SchemeM' m v = (
   -- Domain
   SchemeValue v,
   MonadJoin m,
   MonadEscape m,
   Domain (Esc m) DomainError,
   -- Environment
   EnvM m (Adr v) (Env v),
   -- Store interactions
   StoreM m (PAdr v) (PaiDom v),
   StoreM m (Adr v)  (VarDom v),
   StoreM m (VAdr v) (VecDom v),
   StoreM m (SAdr v) (StrDom v),
   -- Allocation
   AllocM m Ide (Adr v),     -- variable allocation
   AllocM m Exp (PAdr v),    -- pair allocation
   AllocM m Exp (VAdr v),    -- vector allocation
   AllocM m Exp (SAdr v),    -- string allocation
   --
   CallM m (Env v) v,
   Boo v ~ v,
   VarDom v ~ v,
   Exp ~ S.Exp v)

type SchemeM m v = (
   SchemeM' m v,
   EvalM m v Exp)

allocPai :: SchemeM m v => Exp -> m (PAdr v)
allocPai = alloc
allocVec :: SchemeM m v => Exp -> m (VAdr v)
allocVec = alloc 
allocStr :: SchemeM m v => Exp -> m (SAdr v)
allocStr = alloc
allocVar :: SchemeM m v => Ide -> m (Adr v)
allocVar = alloc
