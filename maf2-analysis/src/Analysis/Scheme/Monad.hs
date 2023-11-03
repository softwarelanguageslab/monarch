{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
module Analysis.Scheme.Monad(SchemeM, SchemeM', allocPai, allocVec, allocStr, allocVar, stoPai, stoStr) where 

import Data.Functor
import Syntax.Scheme.AST
import Domain
import Domain.Scheme hiding (Exp)
import qualified Domain.Scheme as S
import Analysis.Monad
import Control.Monad.Join

stoPai :: SchemeM m v => Exp -> Vlu (PAdr v) -> m v
stoPai ex v = allocPai ex >>= (\adr -> writeAdr adr v $> pptr adr)
stoStr :: SchemeM m v => Exp -> Vlu (SAdr v) -> m v
stoStr ex v = allocStr ex >>= (\adr -> writeAdr adr v $> sptr adr)

type SchemeM' m v = (
   -- Domain
   SchemeDomain v,
   PairDomain (Vlu (PAdr v)),
   VectorDomain (Vlu (VAdr v)),
   StringDomain (Vlu (SAdr v)),
   MonadJoin m,
   MonadDomainError m,
   -- Environment
   EnvM m (Adr v) (Env v),
   -- Store interactions
   StoreM m (PAdr v),
   StoreM m (Adr v),
   StoreM m (VAdr v),
   StoreM m (SAdr v),
   -- Allocation
   AllocM m Ide VrAdr (Adr v),     -- variable allocation
   AllocM m Exp PaAdr (PAdr v),    -- pair allocation
   AllocM m Exp VeAdr (VAdr v),    -- vector allocation
   AllocM m Exp StAdr (SAdr v),    -- string allocation
   --
   CallM m (Env v) v,
   Boo v ~ v,
   Vlu (Adr v) ~ v,
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




