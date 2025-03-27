{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
module Analysis.Scheme.Monad(SchemeM, SchemeM',SchemeDomainM,  stoPai, stoStr, derefPai, derefVec, derefStr, writeVar, lookupVar) where

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
import Domain.Scheme.Store (StoreVal(..))
import Data.Set (Set)
import Lattice.Class

-- | Store a pair in the store by allocating a suiteable address
--  storing the value on that address and returning a pointer to
-- the resulting allocated address
stoPai :: SchemeDomainM e v m => e -> PaiDom v -> m v
stoPai ex v = alloc ex >>= (\adr -> writeAdr adr (PaiVal v) $> pptr adr)
-- | Same as @stoPai@ but for strings
stoStr :: SchemeDomainM e v m => e -> StrDom v -> m v
stoStr ex v = alloc ex >>= (\adr -> writeAdr adr (StrVal v) $> sptr adr)

-- | Dereference a pointer containing a pair value, resulting in an error
-- if it is not a pair
derefPai :: (StoreM (Adr v) (StoreVal v) m, SchemeDomainM e v m, Joinable r) => (Adr v -> PaiDom v -> m r) -> Set (Adr v) -> m r
derefPai = lookups (fmap coerce . lookupAdr)
   where coerce (PaiVal v) = v
         coerce _  = error "derefPai: expected pair"
derefVec :: (StoreM (Adr v) (StoreVal v) m, SchemeDomainM e v m, Joinable r) => (Adr v -> VecDom v -> m r) -> Set (Adr v) -> m r
derefVec = lookups (fmap coerce . lookupAdr)
   where coerce (VecVal v) = v
         coerce _  = error "derefVec: expected pair"
derefStr :: (StoreM (Adr v) (StoreVal v) m, SchemeDomainM e v m, Joinable r) => (Adr v -> StrDom v -> m r) -> Set (Adr v) -> m r
derefStr = lookups (fmap coerce . lookupAdr)
   where coerce (StrVal v) = v
         coerce _  = error "derefStr: expected pair"

-- | Write a enviromnent variable value to the store
writeVar :: (StoreM (Adr v) (StoreVal v) m) => Adr v -> VarDom v -> m ()
writeVar adr = writeAdr adr . VarVal

-- | Lookup a variable from the store, errors if the address  does not have a variable value
lookupVar :: (StoreM (Adr v) (StoreVal v) m ) => Adr v -> m (VarDom v)
lookupVar = fmap coerce . lookupAdr 
   where coerce (VarVal v) = v
         coerce _ = error "lookupVar: not a variable value at the given address"          


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
   StoreM (Adr v) (StoreVal v) m,
   -- Allocation
   AllocM m e (Adr v),    -- address allocation
   AllocM m Ide (Adr v),  -- generate addresses out of identifiers
   S.Exp v ~ e
   )

type SchemeEM' e v m = (
   SchemeDomainM e v m,
   -- Stores for variables
   StoreM (Adr v)  (StoreVal v) m,
   -- Environment
   EnvM m (Adr v) (Env v))

-- | Scheme analysis monad (without open recursion on @eval@) 
type SchemeM' m v = SchemeEM' Exp v m

-- | Full Scheme analysis monad
type SchemeM m v = (SchemeM' m v, MonadFixpoint m Exp v)
