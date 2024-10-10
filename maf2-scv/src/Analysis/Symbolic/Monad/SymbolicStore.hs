-- | Store that contains symbolic representations of the values
module Analysis.Symbolic.Monad.SymbolicStore(SymbolicStoreT) where

import Analysis.Monad.Fix
import Analysis.Monad.Store
import Analysis.Monad.Cache
import Data.Map
import Control.Monad.Layer
import Domain.Symbolic.Class (SymbolicValue(..))

newtype SymbolicStoreT adr v b c m a = SymbolicStoreT (StoreT (Map adr v) adr v m a) 
                                   deriving (Applicative, Monad, Functor, MonadTrans, MonadLayer)

underlying :: StoreT (Map adr v) adr v m a -> SymbolicStoreT adr v b c m a
underlying = SymbolicStoreT

-- | Store, writing through an underlying global store
instance (SymbolicValue v, StoreM adr v m) => StoreM adr v (SymbolicStoreT adr v b c m) where
  lookupAdr adr = do  
      v  <- underlying (lookupAdr adr)
      v' <- upperM (lookupAdr adr)
      -- this only implements a local store for symbolic parts 
      -- all other parts are from a store lower in the stack
      return $ combine (abstractValue v') (symbolicValue v)
      
  writeAdr adr v = do
      -- write the unsymbolic value to the lower store,
      -- write the symbolic value to the current store
      underlying (writeAdr adr v)
      -- the `unsymbolic` is important as the lower store 
      -- should not have any symbolic representations.
      upperM $ writeAdr adr (unsymbolic v)

  updateAdr = writeAdr


-- | The local store is not added to the component itself, neither to 
-- its cached output.
instance (MonadCache m) => MonadCache (SymbolicStoreT adr v b c m) where
   type Key  (SymbolicStoreT adr v b c m) k  = Key m k
   type Val  (SymbolicStoreT adr v b c m) v1 = Val m v1
   type Base (SymbolicStoreT adr v b c m)    = m

   key = upperM . key
   val = upperM . val
   run = undefined



-- | The default strategy for `SymbolicStoreT` is to fetch the current global store, 
-- compute the set of reachable addresses from the current environment and create 
-- fresh symbolic representations. This makes it so that each component gets new 
-- symbolic representations ensuring a finite number of symbolic representations.
--
-- This hampers the precision though, since symbolic representations are not 
-- carried over from function calls.
instance (MonadFixpoint m b c) => MonadFixpoint (SymbolicStoreT adr v b c m) b c where
   fix f = undefined

-- | Run the store as fixpoint (on top of the stack)
