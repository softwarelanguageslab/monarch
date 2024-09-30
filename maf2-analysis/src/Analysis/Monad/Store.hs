{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Monad.Store (
    StoreM(..),
    StoreM'(..),
    StoreT(..),
    StoreT',
    StackStoreT,
    runStoreT,
    runWithStore,
    runStoreT',
    lookups,
    deref,
    deref',
    store,
    writeAdr',
    updateAdr',
    updateWith',
)
where

import Lattice (Joinable(..), BottomLattice(..), PartialOrder(..), Lattice)
import qualified Analysis.Store as Store
import Analysis.Monad.Allocation

import Control.Monad.State.SVar (SVar)
import qualified Control.Monad.State.SVar as SVar

import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.State hiding (mzero, join)
import Control.Monad.Join (MonadJoin(..), mjoinMap, mjoins)
import Analysis.Monad.Cache
import Control.Monad.Lift

import Control.Monad.Layer
import Analysis.Store (Store)
import Data.TypeLevel.AssocList
import Data.Kind

---
--- StoreM typeclass
---

class (Monad m, Lattice v) => StoreM a v m | m a -> v where
   -- | Write to a newly allocated address
   writeAdr  :: a -> v -> m ()
   -- | Update an existing address
   updateAdr :: a -> v -> m ()
   updateAdr adr v = updateWith (const v) (`join` v) adr
   -- | Update an existing address using either a strong or weak update function
   updateWith :: {- strong update -} (v -> v) -> {- weak update -} (v -> v) -> a -> m ()
   updateWith fs _ adr = lookupAdr adr >>= updateAdr adr . fs
   -- | Lookup the value at the given address, returns bottom if the address does not exist
   lookupAdr :: a -> m v

   {-# MINIMAL lookupAdr, writeAdr, (updateAdr | updateWith) #-}

instance (Monad (t m), StoreM adr v m, MonadLayer t) => StoreM adr v (t m) where
   writeAdr adr =  upperM . writeAdr adr
   updateAdr adr =  upperM . updateAdr adr
   lookupAdr  =  upperM . lookupAdr
   updateWith fs fw = upperM . updateWith fs fw

updateAndCheck :: StoreM a v m => a -> (a -> m ()) -> m Bool
updateAndCheck a f = do old <- lookupAdr a
                        f a
                        new <- lookupAdr a
                        return (old /= new)

-- | Convenience function: writes to an address `a` and checks if the value in the store at `a` has changed
writeAdr' :: StoreM a v m => a -> v -> m Bool
writeAdr' a v = updateAndCheck a (`writeAdr` v)

-- | Convenience function: updates an address `a` and checks if the value in the store at `a` has changed
updateAdr' :: StoreM a v m => a -> v -> m Bool
updateAdr' a v = updateAndCheck a (`updateAdr` v)

-- | Convenience function: updates an address `a` and checks if the value in the store at `a` has changed
updateWith' :: StoreM a v m => {- strong update -} (v -> v) -> {- weak update -} (v -> v) -> a -> m Bool
updateWith' fs fw a = updateAndCheck a (updateWith fs fw)

-- | Lookup
lookups :: (Lattice a, MonadJoin m) => (adr -> m v) -> (adr -> v -> m a) -> Set adr -> m a
lookups look f = mjoinMap (\adr -> look adr >>= f adr)

-- | Deref 
deref :: (StoreM a v m, MonadJoin m, Lattice r) => (a -> v -> m r) -> Set a -> m r
deref = lookups lookupAdr

deref' :: (StoreM a v m, MonadJoin m) => Set a -> m v
deref' = mjoins . map lookupAdr . Set.toList

-- | Store the given value in the store using the an address allocator on the monadic stack.
store :: (AllocM m from adr, StoreM adr v m) => from -> v -> m adr
store loc v = alloc loc >>= (\adr -> writeAdr adr v >> pure adr)

---
--- StoreM' typeclass
---

-- like StoreM, but also allows retrieving the current store
class (Store s a v, StoreM a v m) => StoreM' s a v m | m -> s a v where
   currentStore :: m s 
   putStore     :: s -> m ()

instance (Monad (t m), MonadLayer t, StoreM' s adr v m) => StoreM' s adr v (t m) where
   currentStore = upperM currentStore
   putStore = upperM . putStore 

---
--- StoreT monad transformer 
--- 

newtype StoreT s adr vlu m a = StoreT { getStoreT :: StateT s m a }
   deriving (Applicative, Functor, Monad, MonadJoin, MonadState s, MonadLayer, MonadTrans, MonadTransControl, MonadCache)

instance {-# OVERLAPPING #-} (Monad m, Store s a v) => StoreM a v (StoreT s a v m) where
   writeAdr adr vlu = modify (Store.extendSto adr vlu)
   updateAdr adr vlu = modify (Store.updateSto adr vlu)
   updateWith fs fw adr = modify (Store.updateStoWith fs fw adr)
   lookupAdr = gets . Store.lookupSto

instance {-# OVERLAPPING #-} (Monad m, Store s a v) => StoreM' s a v (StoreT s a v m) where
   currentStore = get 
   putStore = put 

runStoreT :: forall s adr vlu m a . s -> StoreT s adr vlu m a -> m (a, s)
runStoreT initialSto = flip runStateT initialSto . getStoreT

runWithStore :: forall s adr vlu m a . Store s adr vlu => StoreT s adr vlu m a -> m (a, s)
runWithStore = runStoreT Store.emptySto


---
--- StoreT' monad transformer 
---


-- TODO[medium]: deprecate and remove the SVar implementation
newtype StoreT' adr v m a = StoreT' { getStoreT' :: StateT (Map adr (SVar v)) m a }
                              deriving (Applicative, Functor, Monad, MonadJoin, MonadState (Map adr (SVar v)), MonadLayer, MonadTrans)

instance {-# OVERLAPPING #-} (SVar.MonadStateVar m, Lattice v, Ord adr) => StoreM adr v (StoreT' adr v m) where
   writeAdr adr vlu =
      gets (Map.lookup adr) >>=
         maybe (SVar.new vlu >>= (\var -> modify (Map.insert adr var) >> void (SVar.modify (const (Just vlu)) var)))
               (void . SVar.modify joinOld)
       where joinOld vlu' = if subsumes vlu' vlu then Nothing else Just (Lattice.join vlu vlu')
   updateAdr = writeAdr
   lookupAdr adr =
         gets (Map.lookup adr) >>= maybe (SVar.depend bottom >>= insert) SVar.read
      where insert var = modify (Map.insert adr var) >> return bottom

runStoreT' :: forall adr v m a . Map adr (SVar v) -> StoreT' adr v m a -> m (a, Map adr (SVar v))
runStoreT' initial = flip runStateT initial . getStoreT'

--
-- Run a stack of StoreT's given 
-- by the mapping 'stores'
--

type family StackStoreT stores m where 
   StackStoreT '[] m = m
   StackStoreT (adr ::-> v ': r) m = StoreT' adr v (StackStoreT r m)

-- | Construct a type for a stack of stores from the given mapping
type family FromMap stores m :: Type -> Type where
   FromMap '[] m =  m
   FromMap (kadr ::-> Map adr v ': r) m = StoreT (Map adr v) adr v (FromMap r m)

--class WithStores mp mp' m where
--   type FirstAdr mp' :: Type 
--   type FirstVal mp' :: Type
--   type Next mp'     :: Type -> Type
--   withStores :: HMap mp -> StoreT (Map (FirstAdr mp') (FirstVal mp')) (FirstAdr mp') (FirstVal mp') (Next mp') a -> Next mp' a

-- instance WithStores mp '[kadr ::-> (Map adr v)] m where  
--    type FirstAdr mp' 
-- | Run the given stack of stores using a HMap to provide 
-- the set of initial stores
--withStores :: HMap mp -> FromMap mp m a -> m (a, HMap mp) 
--withStores = undefined
