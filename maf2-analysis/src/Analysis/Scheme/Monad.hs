{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds, AllowAmbiguousTypes #-}
module Analysis.Scheme.Monad(SchemeM, SchemeM',SchemeDomainM, SchemeStoreM, SchemeDomainStoreM, stoPai, stoStr, stoVec, derefPai, derefVec, derefStr, writeVar, updateVar, lookupVar, SchemeStoreT, runSchemeStoreT) where

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
import Analysis.Monad.Fix (MonadFixpoint)
import Data.Set (Set)
import Lattice.Class
import Control.Monad.Layer (MonadLayer)
import Control.Monad.State
import qualified Control.Monad.State as State
import Domain.Scheme.Store (SchemeStore, ForAllStored, StoreL)
import Domain.Scheme.Store (StoreL(..))
import Control.Lens
import qualified Data.Map as Map
import qualified Analysis.Store as Store
import Data.Maybe (fromMaybe, isJust)
import Data.Map (Map)


----------------------------------------
-- Allocations
----------------------------------------

type SchemeAllocM e v m = 
    (  AllocM m Ide (VaAdr v)
     , AllocM m e (PaAdr v) 
     , AllocM m e (VeAdr v)
     , AllocM m e (StAdr v))


----------------------------------------
-- Store interactions
----------------------------------------

-- | Monadic constraints needed for storing values (strings, pairs and vectors)
-- into the Scheme store 
type SchemeStoreM e v m = 
    (  StoreM (VaAdr v) (VarDom v) m
     , StoreM (PaAdr v) (PaiDom v) m
     , StoreM (VeAdr v) (VecDom v) m
     , StoreM (StAdr v) (StrDom v) m
     , SchemeDomain v )

-- | Store a pair in the store by allocating a suiteable address
--  storing the value on that address and returning a pointer to
-- the resulting allocated address
stoPai :: forall v m e . (AllocM m e (PaAdr v), StoreM (PaAdr v) (PaiDom v) m, SchemeDomain v) => e -> PaiDom v -> m v
stoPai ex v = alloc ex >>= (\adr -> writeAdr adr v $> pptr adr)
-- | Same as @stoPai@ but for strings
stoStr :: forall v m from . (AllocM m from (StAdr v), StoreM (StAdr v) (StrDom v) m, SchemeDomain v) => from -> StrDom v -> m v
stoStr ex v = alloc ex >>= (\adr -> writeAdr adr v $> sptr adr)
-- | Same as @stoPai@ but for vectors
stoVec :: forall v m from . (AllocM m from (VeAdr v), StoreM (VeAdr v) (VecDom v) m, SchemeDomain v) => from -> VecDom v -> m v
stoVec ex v = alloc ex >>= (\adr -> writeAdr adr v $> vptr adr)


-- | Dereference a pointer containing a pair value, resulting in an error
-- if it is not a pair
derefPai :: forall v m r . (StoreM (PaAdr v) (PaiDom v) m, MonadJoinable m, MonadBottom m, Joinable r) => (PaAdr v -> PaiDom v -> m r) -> Set (PaAdr v) -> m r
derefPai = lookups lookupAdr
derefVec :: forall v m r . (StoreM (VeAdr v) (VecDom v) m, MonadJoinable m, MonadBottom m, Joinable r) => (VeAdr v -> VecDom v -> m r) -> Set (VeAdr v) -> m r
derefVec = lookups lookupAdr
derefStr :: forall v m r . (StoreM (StAdr v) (StrDom v) m, MonadJoinable m, MonadBottom m, Joinable r) => (StAdr v -> StrDom v -> m r) -> Set (StAdr v) -> m r
derefStr = lookups lookupAdr

-- | Write a enviromnent variable value to the store
writeVar :: (StoreM (VaAdr v) (VarDom v) m) => VaAdr v -> VarDom v -> m ()
writeVar adr = writeAdr adr 

updateVar :: (StoreM (VaAdr v) (VarDom v) m) => VaAdr v -> VarDom v -> m ()
updateVar adr = updateAdr adr 

-- | Lookup a variable from the store, errors if the address  does not have a variable value
lookupVar :: (SchemeDomainM e v m) => VaAdr v -> m (VarDom v)
lookupVar = lookupAdr

-- This monad transformer adds a a Scheme store (one that includes pairs, vectors, strings and variables) to the monadic computation. 

newtype SchemeStoreT exp ctx v m a = SchemeStoreT { runSchemeStoreT' :: StateT (SchemeStore exp ctx v) m a }
    deriving (Functor, Applicative, Monad, MonadLayer, MonadState (SchemeStore exp ctx v))

deriving instance (ForAllStored Joinable v, Ord exp, Ord ctx, MonadJoinable m) => MonadJoinable (SchemeStoreT exp ctx v m)
deriving instance (MonadBottom m) => MonadBottom (SchemeStoreT exp ctx v m)

-- The key to implementing this succinctly is to use the Lens operations -- defined over the SchemeStore. By varying over the type of address, we ensure that the correct store component (e.g., pair store, vector store,, ...) is accessed and updated.
instance (StoreL adr vlu (SchemeStore exp ctx v), Joinable vlu, Monad m, Show adr, Ord adr) => StoreM adr vlu (SchemeStoreT exp ctx v m) where
    storeSize = uses (storeLens @adr @vlu) Map.size
    writeAdr adr vlu = modify (over (storeLens @adr @vlu) (Store.extendSto adr vlu))
    updateAdr adr vlu = 
        modify (over (storeLens @adr @vlu) (Store.updateSto adr vlu))
    updateWith fs fw adr = 
        modify (over (storeLens @adr @vlu) (Store.updateStoWith fs fw adr))
    lookupAdr adr = 
        uses (storeLens @adr @vlu) (fromMaybe (error $ "Address " ++ show adr ++ " not found") . Store.lookupSto adr)
    hasAdr adr = 
        uses (storeLens @adr @vlu) (isJust . Store.lookupSto adr)

instance (StoreL adr vlu (SchemeStore exp ctx v), Monad m) => StoreM' (Map adr vlu) adr vlu (SchemeStoreT exp ctx v m) where
  currentStore = use (storeLens @adr @vlu)
  putStore s = modify (over (storeLens @adr @vlu) (const s))

instance (Monad m) => MonadMultiStore (SchemeStore exp ctx v) (SchemeStoreT exp ctx v m) where
  getMultiStore = SchemeStoreT State.get
  putMultiStore = SchemeStoreT . State.put

runSchemeStoreT :: SchemeStore exp ctx v -> SchemeStoreT exp ctx v m a -> m (a, SchemeStore exp ctx v)
runSchemeStoreT initialStore = flip runStateT initialStore . runSchemeStoreT'

----------------------------------------
-- Monads
----------------------------------------

type SchemeDomainStoreM e v m = (
   -- Domain
   SchemeValue v,
   MonadJoin m,
   MonadEscape m,
   Domain (Esc m) DomainError,
   VarDom v ~ v,
   EqualLattice v,
   -- Allocations
   SchemeAllocM e v m, 
   -- Store interactions
   SchemeStoreM e v m,
   S.Exp v ~ e
  )

-- | Minimal Scheme monad for expressing primitive operations.
-- It is more general than SchemeM since it does not impose any
-- constraints on calling semantics, evaluation semantics and expression representations.
type SchemeDomainM e v m = SchemeDomainStoreM e v m

type SchemeEM' e v m = (
   SchemeDomainM e v m,
   -- Environment
   EnvM m (VaAdr v) (Env v))

-- | Scheme analysis monad (without open recursion on @eval@) 
type SchemeM' m v = SchemeEM' Exp v m

-- | Full Scheme analysis monad
type SchemeM m v = (SchemeM' m v, MonadFixpoint m Exp v)
