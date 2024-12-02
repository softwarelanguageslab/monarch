{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Monad.Store (
    StoreM(..),
    StoreM'(..),
    StoreT(..),
    AbstractCountM(..),
    WidenedStoreT,
    runStoreT,
    runWithStore,
    evalWithStore,
    evalWithWidenedStore,
    lookups,
    deref,
    deref',
    store,
    writeAdr',
    updateAdr',
    updateWith',
    flowSensitiveStore,
    flowSensitiveEval
)
where

import Lattice (Joinable(..))
import qualified Analysis.Store as Store
import Analysis.Monad.Allocation


import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.State hiding (mzero, join)
import Control.Monad.Lift

import Control.Monad.Layer
import Analysis.Store (Store, CountingMap)
import Domain.Address (Address)
import Control.Monad.Join
import Data.Maybe (fromMaybe, isJust)
import Control.Monad.Cond (ifM)
import Domain.Core.AbstractCount (AbstractCount)
import qualified Analysis.Monad.Map as Map
import qualified Analysis.Monad.Cache as Cache
import Analysis.Monad.Cache (MonadCache (..))
import Analysis.Monad.Fix (AroundT(..))

---
--- StoreM typeclass
---

class (Monad m, Joinable v, Address a) => StoreM a v m | m a -> v where
   -- | Write to a newly allocated address
   writeAdr  :: a -> v -> m ()
   -- | Update an existing address
   updateAdr :: a -> v -> m ()
   updateAdr adr v = updateWith (const v) (`join` v) adr
   -- | Update an existing address using either a strong or weak update function
   updateWith :: {- strong update -} (v -> v) -> {- weak update -} (v -> v) -> a -> m ()
   -- | Lookup the value at the given address, returns an error if the address does not exist
   lookupAdr :: a -> m v
   -- | Checks whether an address already exists in the store
   hasAdr :: a -> m Bool

   {-# MINIMAL lookupAdr, writeAdr, updateWith, hasAdr #-}

instance {-# OVERLAPPABLE #-} (Monad (t m), StoreM adr v m, MonadLayer t) => StoreM adr v (t m) where
   writeAdr adr =  upperM . writeAdr adr
   updateAdr adr =  upperM . updateAdr adr
   lookupAdr  =  upperM . lookupAdr
   updateWith fs fw = upperM . updateWith fs fw
   hasAdr = upperM . hasAdr

updateAndCheck :: (Eq v, StoreM a v m) => a -> (a -> m ()) -> m Bool
updateAndCheck a f = do ifM (hasAdr a)
                            (do old <- lookupAdr a
                                f a
                                new <- lookupAdr a
                                return (old /= new))
                            (f a >> return True)


-- | Convenience function: writes to an address `a` and checks if the value in the store at `a` has changed
writeAdr' :: (Eq v, StoreM a v m) => a -> v -> m Bool
writeAdr' a v = updateAndCheck a (`writeAdr` v)

-- | Convenience function: updates an address `a` and checks if the value in the store at `a` has changed
updateAdr' :: (Eq v, StoreM a v m) => a -> v -> m Bool
updateAdr' a v = updateAndCheck a (`updateAdr` v)

-- | Convenience function: updates an address `a` and checks if the value in the store at `a` has changed
updateWith' :: (Eq v, StoreM a v m) => {- strong update -} (v -> v) -> {- weak update -} (v -> v) -> a -> m Bool
updateWith' fs fw a = updateAndCheck a (updateWith fs fw)

-- | Lookup
lookups :: (Joinable a, MonadJoin m) => (adr -> m v) -> (adr -> v -> m a) -> Set adr -> m a
lookups look f = mjoinMap (\adr -> look adr >>= f adr)

-- | Deref 
deref :: (StoreM a v m, MonadJoin m, Joinable r) => (a -> v -> m r) -> Set a -> m r
deref = lookups lookupAdr

deref' :: (StoreM a v m, MonadJoin m) => Set a -> m v
deref' = mjoins . map lookupAdr . Set.toList

-- | Store the given value in the store using the an address allocator on the monadic stack.
store :: (AllocM m from adr, StoreM adr v m) => from -> v -> m adr
store loc v = alloc loc >>= (\adr -> writeAdr adr v >> pure adr)

---
--- StoreM' typeclass
---

-- | Like StoreM, but also allows retrieving the current store
class Monad m => StoreM' s a v m | m -> s a v where
   currentStore :: m s
   putStore     :: s -> m ()

instance {-# OVERLAPPABLE #-} (Monad (t m), MonadLayer t, StoreM' s adr v m) => StoreM' s adr v (t m) where
   currentStore = upperM currentStore
   putStore = upperM . putStore

--
-- AbstractCountM typeclass 
--

-- | Keeps track of the abstract count for each variable 
class AbstractCountM adr m | m -> adr where
   count :: m (Map adr AbstractCount)

instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, AbstractCountM adr m) => AbstractCountM adr (t m) where
   count = upperM count



---
--- StoreT monad transformer 
--- 

newtype StoreT s adr vlu m a = StoreT { getStoreT :: StateT s m a }
   deriving (Applicative, Functor, Monad, MonadJoinable, MonadState s, MonadLayer, MonadTrans, MonadTransControl, MonadCache)

instance {-# OVERLAPPING #-} (Monad m, Store s a v, Address a) => StoreM a v (StoreT s a v m) where
   writeAdr adr vlu = modify (Store.extendSto adr vlu)
   updateAdr adr vlu = modify (Store.updateSto adr vlu)
   updateWith fs fw adr = modify (Store.updateStoWith fs fw adr)
   lookupAdr adr = gets (fromMaybe (error $ "Address " ++ show adr ++ " not found") . Store.lookupSto adr)
   hasAdr adr = gets (isJust . Store.lookupSto adr)

instance {-# OVERLAPPING #-} (Monad m, Store s a v) => StoreM' s a v (StoreT s a v m) where
   currentStore = get
   putStore = put

------------------------------------------------------------
-- Store widening
------------------------------------------------------------

newtype WidenedStoreT s adr v m a = WidenedStoreT { widenedStoreT :: StoreT s adr v m a }
                                  deriving (Applicative, Functor, Monad, MonadLayer, MonadTrans, MonadJoinable)

instance (Monad (Base m), MonadCache m) => MonadCache (WidenedStoreT s adr v m) where
   type Key (WidenedStoreT s adr v m) k  = Key m k
   type Val (WidenedStoreT s adr v m) v' = Val m v'
   type Base (WidenedStoreT s adr v m) = WidenedStoreT s adr v (Base m)

   key = lift . key
   val = lift . val
   run f k = WidenedStoreT $ StoreT $ StateT $ \sto -> (,sto) <$> run (fmap fst . runStoreT sto . widenedStoreT . f) k


instance {-# OVERLAPPING #-} (Store s adr v, Address adr, Monad m) => StoreM adr v (WidenedStoreT s adr v m) where
  lookupAdr = WidenedStoreT . lookupAdr 
  writeAdr adr  = WidenedStoreT . writeAdr adr
  updateWith fs fw = WidenedStoreT . updateWith fs fw
  hasAdr = WidenedStoreT . hasAdr

instance {-# OVERLAPPING #-} (Store s adr v, Monad m) => StoreM' s adr v (WidenedStoreT s adr v m) where 
   currentStore = WidenedStoreT currentStore 
   putStore = WidenedStoreT . putStore

instance (Monad m) => AbstractCountM adr (WidenedStoreT (CountingMap adr v) adr v m) where 
   count = WidenedStoreT count

evalWithWidenedStore :: forall s adr vlu m a . (Store s adr vlu, Functor m) => WidenedStoreT s adr vlu m a -> m a
evalWithWidenedStore (WidenedStoreT m) = 
   evalWithStore m

------------------------------------------------------------
-- Abstract counting
------------------------------------------------------------

instance (Monad m) => AbstractCountM adr (StoreT (CountingMap adr v) adr v m) where
  count = gets (fmap snd . Store.store)

runStoreT :: forall s adr vlu m a . s -> StoreT s adr vlu m a -> m (a, s)
runStoreT initialSto = flip runStateT initialSto . getStoreT

runWithStore :: forall s adr vlu m a . Store s adr vlu => StoreT s adr vlu m a -> m (a, s)
runWithStore = runStoreT Store.emptySto


-- | Same as @runWithStore@ but ignores the output store
evalWithStore :: forall s adr vlu m a . (Functor m, Store s adr vlu) => StoreT s adr vlu m a -> m a
evalWithStore = fmap fst . runWithStore


--
-- Flow sensitive stores
-- 


-- | A flow sensitive store can be obtained by wrapping 
-- the evaluation function with instructions to write 
-- the current store to the @In(component)@ were 
-- @component@ is the target component and reading 
-- from the @Out(component) after the component's evaluation
flowSensitiveStore :: forall v m s e a . (Cache.MonadCache m, Map.Widened (Cache.Key m e) s m, StoreM' s a v m) 
                   => (e -> AroundT e v m v) 
                   -> e 
                   -> AroundT e v m v
flowSensitiveStore f e = do
   cmp <- upperM $ Cache.key e
   sto <- upperM (currentStore @s @a)
   upperM $ Map.joinWith (Map.In cmp) sto
   v <- f e
   sto' <-  maybe mzero return =<< upperM (Map.get @_ @s (Map.Out cmp))
   upperM $ putStore sto'
   return v

-- |  Flow-sensitive evaluation function
flowSensitiveEval :: forall v m s e a . (Cache.MonadCache m, Map.Widened (Cache.Key m e) s m, StoreM' s a v m)
                  => (e -> AroundT e v m v) 
                  -> e 
                  -> AroundT e v m v
flowSensitiveEval eval e = do
   cmp <- upperM $ Cache.key e
   putStore =<< maybe mzero return =<< upperM (Map.get @_ @s (Map.In cmp))
   v <- eval e
   upperM currentStore >>= (upperM . Map.joinWith (Map.Out cmp))
   return v
