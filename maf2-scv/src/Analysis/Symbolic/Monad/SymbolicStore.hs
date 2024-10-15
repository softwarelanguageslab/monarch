{-# LANGUAGE UndecidableInstances #-}
-- | Store that contains symbolic representations of the values
module Analysis.Symbolic.Monad.SymbolicStore(SymbolicStoreT, symbolicStore) where

import Analysis.Monad.Store
import Data.Map
import Control.Monad.Layer
import Domain.Symbolic.Class (SymbolicValue(..))
import Control.Monad.State (put, get)
import Analysis.Monad.Fix
import Syntax.FV

newtype SymbolicStoreT adr v m a = SymbolicStoreT (StoreT (Map adr v) adr v m a)
                                   deriving (Applicative, Monad, Functor, MonadTrans, MonadLayer)

underlying :: StoreT (Map adr v) adr v m a -> SymbolicStoreT adr v m a
underlying = SymbolicStoreT

instance Monad m => StoreM' (Map adr v) adr v (SymbolicStoreT adr v m) where
   -- TODO: apply these operations in a write-through fashion
   currentStore = SymbolicStoreT $ StoreT get
   putStore = SymbolicStoreT . StoreT . put

-- | Store, writing through an underlying global store
instance (SymbolicValue v, StoreM adr v m) => StoreM adr v (SymbolicStoreT adr v m) where
  lookupAdr adr = do
      v  <- underlying (lookupAdr adr)
      v' <- upperM (lookupAdr adr)
      -- this only implements a local store for symbolic parts 
      -- all other parts are from a store lower in the stack
      return $ combine (abstractValue v') (symbolicValue v)

  writeAdr adr v = do
      -- write the symbolic value to the current store
      underlying (writeAdr adr v)
      -- write the unsymbolic value to the lower store,
      -- the `unsymbolic` is important as the lower store 
      -- should not have any symbolic representations.
      upperM $ writeAdr adr (unsymbolic v)

  updateAdr = writeAdr

-- | The default strategy for `SymbolicStoreT` is to fetch the current global store, 
-- compute the set of reachable addresses from the current environment and create 
-- fresh symbolic representations. This makes it so that each component gets new 
-- symbolic representations ensuring a finite number of symbolic representations.
--
-- This hampers the precision though, since symbolic representations are not 
-- carried over from function calls.
symbolicStore :: (SymbolicValue v) => Kleisli m e v -> Kleisli m e v
symbolicStore f = f
