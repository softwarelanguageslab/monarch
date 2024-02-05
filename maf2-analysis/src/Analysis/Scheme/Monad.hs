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
   StoreM m PaAdr (PAdr v) (PaiDom v),
   StoreM m VrAdr (Adr v)  (VarDom v),
   StoreM m VeAdr (VAdr v) (VecDom v),
   StoreM m StAdr (SAdr v) (StrDom v),
   -- Allocation
   AllocM m Ide VrAdr (Adr v),     -- variable allocation
   AllocM m Exp PaAdr (PAdr v),    -- pair allocation
   AllocM m Exp VeAdr (VAdr v),    -- vector allocation
   AllocM m Exp StAdr (SAdr v),    -- string allocation
   --
   CallM m (Env v) v,
   Boo v ~ v,
   VarDom v ~ v,
   Exp ~ S.Exp v)

type SchemeM m v = (
   SchemeM' m v,
   EvalM m v Exp)

allocPai :: SchemeM m v => Exp -> m (PAdr v)
allocPai = alloc @_ @_ @PaAdr
allocVec :: SchemeM m v => Exp -> m (VAdr v)
allocVec = alloc @_ @_ @VeAdr
allocStr :: SchemeM m v => Exp -> m (SAdr v)
allocStr = alloc @_ @_ @StAdr
allocVar :: SchemeM m v => Ide -> m (Adr v)
allocVar = alloc @_ @_ @VrAdr
