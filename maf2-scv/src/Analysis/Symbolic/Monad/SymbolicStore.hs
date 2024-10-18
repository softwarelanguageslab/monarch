{-# LANGUAGE UndecidableInstances #-}
-- | Store that contains symbolic representations of the values
module Analysis.Symbolic.Monad.SymbolicStore(SymbolicStoreT, runWithSymbolicStore, symbolicStore) where

import Lattice.Class
import Analysis.Monad.Store
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.Layer
import Domain.Symbolic.Class (SymbolicValue(..))
import Control.Monad.State (put, get)
import Analysis.Monad.Fix
import Syntax.FV
import qualified Data.Set as Set
import Analysis.Monad.Environment (EnvM(lookupEnv))

newtype SymbolicStoreT adr v m a = SymbolicStoreT (StoreT (Map adr (Symbolic v)) adr (Symbolic v) m a)
                                   deriving (Applicative, Monad, Functor, MonadTrans, MonadLayer)

runWithSymbolicStore :: Functor m => SymbolicStoreT adr v m a -> m a
runWithSymbolicStore (SymbolicStoreT m) = fst <$> runStoreT Map.empty m

underlying :: StoreT (Map adr (Symbolic v)) adr (Symbolic v) m a -> SymbolicStoreT adr v m a
underlying = SymbolicStoreT

instance (v' ~ Symbolic v, Monad m) => StoreM' (Map adr v') adr v (SymbolicStoreT adr v m) where
   -- TODO: apply these operations in a write-through fashion
   currentStore = SymbolicStoreT $ StoreT get
   putStore = SymbolicStoreT . StoreT . put 

-- | Store, writing through an underlying global store
instance (SymbolicValue v, Lattice (Symbolic v), Show (Symbolic v), StoreM adr v m) => StoreM adr v (SymbolicStoreT adr v m) where
  lookupAdr adr = do
      v  <- underlying (lookupAdr adr)
      v' <- upperM (lookupAdr adr)

      -- this only implements a local store for symbolic parts 
      -- all other parts are from a store lower in the stack
      return $ combine (abstractValue v') v

  writeAdr adr v = do
      -- write the symbolic value to the current store
      underlying (writeAdr adr (symbolicValue v))
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
symbolicStore :: forall v e m adr . (SymbolicValue v, EnvM m adr (Map String adr), StoreM' (Map adr (Symbolic v)) adr v m, FreeVariables e, BottomLattice v, Ord adr) => Kleisli m e v -> Kleisli m e v
symbolicStore f e = do  
   let fvs = Set.toList (fv e)
   ads <- mapM lookupEnv fvs
   -- generate symbolic variables for each 
   putStore $ Map.fromList $ zip ads (map (symbolicValue . flip var (bottom @v)) [0..length fvs])
   f e
