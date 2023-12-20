{-# LANGUAGE  FlexibleInstances, AllowAmbiguousTypes,  FlexibleContexts, UndecidableInstances, TypeSynonymInstances #-}
module Analysis.Store(Store(..), Typeable) where

import Data.Map (Map)
import qualified Data.Map as Map
import Lattice 

import Data.Typeable

-- | A generic store typeclass
class (JoinLattice v) => Store s a v where
   emptySto  :: s
   lookupSto :: a -> s -> v
   extendSto :: a -> v -> s -> s
   updateSto :: a -> v -> s -> s

-- | Simple map-based instance of the store with weak updates
instance (JoinLattice v, Ord a) => Store (Map a v) a v where
   emptySto = Map.empty
   lookupSto = Map.findWithDefault bottom
   extendSto adr vlu = Map.alter (Just . join vlu . justOrBot) adr
   updateSto adr vlu = Map.alter (Just . join vlu . justOrBot) adr
