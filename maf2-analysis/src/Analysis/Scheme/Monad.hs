{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
module Analysis.Scheme.Monad(SchemeM, SchemeM',SchemeDomainM,  allocPai, allocVec, allocStr, allocVar, stoPai, stoStr) where

import Data.Functor
import Syntax.Scheme.AST
import Domain hiding (Exp)
import qualified Domain.Scheme as S
import Analysis.Monad
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.Escape
import Syntax.Ide
import Lattice.Equal
import Analysis.Monad.Call 
import Analysis.Monad.Fix (MonadFixpoint)

stoPai :: SchemeDomainM e v m => e -> PaiDom v -> m v
stoPai ex v = allocPai ex >>= (\adr -> writeAdr adr v $> pptr adr)
stoStr :: SchemeDomainM e v m => e -> StrDom v -> m v
stoStr ex v = allocStr ex >>= (\adr -> writeAdr adr v $> sptr adr)

-- | Minimal Scheme monad for expressing primitive operations.
-- It is more general than SchemeM since it does not impose any
-- constraints on calling semantics, evaluation semantics and expression representations.
type SchemeDomainM e v m = (
   -- Domain
   SchemeValue v,
   MonadJoin m,
   MonadEscape m,
   Domain (Esc m) DomainError,
   VarDom v ~ v,
   EqualLattice v,
   -- Store interactions
   StoreM (PAdr v) (PaiDom v) m,
   StoreM (VAdr v) (VecDom v) m,
   StoreM (SAdr v) (StrDom v) m,
   -- Allocation
   AllocM m e (PAdr v),    -- pair allocation
   AllocM m e (VAdr v),    -- vector allocation
   AllocM m e (SAdr v),    -- string allocation
   S.Exp v ~ e
   )

type SchemeEM' e v m = (
   SchemeDomainM e v m,
   -- Allocation for variables
   AllocM m Ide (Adr v),   
   -- Stores for variables
   StoreM (Adr v)  (VarDom v) m,
   -- Environment
   EnvM m (Adr v) (Env v))

-- | Scheme analysis monad (without open recursion on @eval@) 
type SchemeM' m v = SchemeEM' Exp v m

-- | Full Scheme analysis monad
type SchemeM m v = (SchemeM' m v, MonadFixpoint m Exp v)

allocPai :: SchemeDomainM e v m => e -> m (PAdr v)
allocPai = alloc
allocVec :: SchemeDomainM e v m => e -> m (VAdr v)
allocVec = alloc
allocStr :: SchemeDomainM e v m => e -> m (SAdr v)
allocStr = alloc
allocVar :: SchemeEM' e v m => Ide -> m (Adr v)
allocVar = alloc
