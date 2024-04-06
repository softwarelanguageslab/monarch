{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Monad.Store (
    StoreM(..),
    StoreT,
    StoreT',
    runStoreT,
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

import Lattice (Joinable(..), JoinLattice(..))
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

import Control.Monad.Layer



---
--- StoreM typeclass
---

class (Monad m, Joinable v) => StoreM m a v | m a -> v where
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

updateAndCheck :: (StoreM m a v, Eq v) => a -> (a -> m ()) -> m Bool
updateAndCheck a f = do old <- lookupAdr a
                        f a
                        new <- lookupAdr a
                        return (old == new)

-- | Convenience function: writes to an address `a` and checks if the value in the store at `a` has changed
writeAdr' :: (StoreM m a v, Eq v) => a -> v -> m Bool
writeAdr' a v = updateAndCheck a (`writeAdr` v)

-- | Convenience function: updates an address `a` and checks if the value in the store at `a` has changed
updateAdr' :: (StoreM m a v, Eq v) => a -> v -> m Bool
updateAdr' a v = updateAndCheck a (`updateAdr` v)

-- | Convenience function: updates an address `a` and checks if the value in the store at `a` has changed
updateWith' :: (StoreM m a v, Eq v) => {- strong update -} (v -> v) -> {- weak update -} (v -> v) -> a -> m Bool
updateWith' fs fw a = updateAndCheck a (updateWith fs fw)

-- | Lookup
lookups :: (JoinLattice a, MonadJoin m) => (adr -> m v) -> (adr -> v -> m a) -> Set adr -> m a
lookups look f = mjoinMap (\adr -> look adr >>= f adr)

-- | Deref 
deref :: (StoreM m a v, MonadJoin m, JoinLattice r) => (a -> v -> m r) -> Set a -> m r
deref = lookups lookupAdr

deref' :: (StoreM m a v, MonadJoin m, JoinLattice v) => Set a -> m v
deref' = mjoins . map lookupAdr . Set.toList

-- | Store the given value in the store using the an address allocator on the monadic stack.
store :: (AllocM m from adr, StoreM m adr v) => from -> v -> m adr
store loc v = alloc loc >>= (\adr -> writeAdr adr v >> pure adr)


---
--- StoreT monad transformer 
--- 

newtype StoreT adr v m a = StoreT { getStoreT :: StateT (Map adr v) m a }
                              deriving (Applicative, Functor, Monad, MonadJoin, MonadState (Map adr v), MonadLayer, MonadTrans)

instance {-# OVERLAPPING #-} (Monad m, JoinLattice v, Ord adr) => StoreM (StoreT adr v m) adr v where
   writeAdr adr vlu = modify (Store.extendSto adr vlu)
   updateAdr adr vlu = modify (Store.updateSto adr vlu)
   updateWith fs fw adr = modify (Store.updateStoWith fs fw adr)
   lookupAdr = gets . Store.lookupSto

instance (Monad (t m), StoreM m adr v, MonadLayer t) => StoreM (t m) adr v where
   writeAdr adr =  upperM . writeAdr adr
   updateAdr adr =  upperM . updateAdr adr
   lookupAdr  =  upperM . lookupAdr
   updateWith fs fw = upperM . updateWith fs fw

runStoreT :: forall adr v m a . Map adr v -> StoreT adr v m a -> m (a, Map adr v)
runStoreT initialSto = flip runStateT initialSto . getStoreT



---
--- StoreT' monad transformer 
---

newtype StoreT' adr v m a = StoreT' { getStoreT' :: StateT (Map adr (SVar v)) m a }
                              deriving (Applicative, Functor, Monad, MonadJoin, MonadState (Map adr (SVar v)), MonadLayer, MonadTrans)

instance {-# OVERLAPPING #-} (SVar.MonadStateVar m, JoinLattice v, Ord adr) => StoreM (StoreT' adr v m) adr v where
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