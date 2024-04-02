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
    store,
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
import Control.Monad.Join (MonadJoin(..))

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


-- | Lookup
lookups :: (JoinLattice a, MonadJoin m) => (adr -> m v) -> (adr -> v -> m a) -> Set adr -> m a
lookups look f = Set.fold (mjoin . deref') Control.Monad.Join.mzero
      where deref' adr = look adr >>= f adr

-- | Deref 
deref :: (StoreM m adr v, MonadJoin m, JoinLattice a) => (adr -> v -> m a) -> Set adr -> m a
deref = lookups lookupAdr

-- | Store the given value in the store using the an address allocator on the monadic stack.
store :: (AllocM m from adr, StoreM m adr v) => from -> v -> m adr
store loc v = alloc loc >>= (\adr -> writeAdr adr v >> pure adr)


---
--- StoreT monad transformer 
--- 

newtype StoreT adr v m a = StoreT { getStoreT :: StateT (Map adr v) m a }
                              deriving (Applicative, Functor, Monad, MonadState (Map adr v), MonadLayer, MonadTrans)

instance (MonadJoin m, Ord adr, Eq v, Joinable v) => MonadJoin (StoreT adr v m) where
   mjoin (StoreT ma) (StoreT mb) = StoreT $ mjoin ma mb
   mzero = StoreT mzero

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
                              deriving (Applicative, Functor, Monad, MonadState (Map adr (SVar v)), MonadLayer, MonadTrans)

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

instance (MonadJoin m, Ord adr, Eq v, Joinable v) => MonadJoin (StoreT' adr v m) where
   mjoin (StoreT' ma) (StoreT' mb) = StoreT' $ mjoin ma mb
   mzero = StoreT' mzero

runStoreT' :: forall adr v m a . Map adr (SVar v) -> StoreT' adr v m a -> m (a, Map adr (SVar v))
runStoreT' initial = flip runStateT initial . getStoreT'