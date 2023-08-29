{-# LANGUAGE  FlexibleInstances, AllowAmbiguousTypes,  FlexibleContexts, UndecidableInstances #-}
module Analysis.Store(Store(..), Typeable, module Data.DMap, Associate) where

import qualified Data.DMap as DMap
import Data.Map (Map)
import qualified Data.Map as Map
import Domain
import Data.Maybe
import Data.DMap
import Data.Kind
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
   extendSto adr vlu = Map.alter (Just . Domain.join vlu . justOrBot) adr
   updateSto adr vlu = Map.alter (Just . Domain.join vlu . justOrBot) adr

-- | Simple DMap based store with weak updatess
instance (Has ks (KV adr v), Typeable adr, Typeable v, Hashable adr, JoinLattice v) => Store (DMap ks)  adr v where
   emptySto = DMap.empty
   lookupSto adr = fromJust . DMap.lookup adr
   extendSto adr vlu = DMap.alter (Just . Domain.join vlu . justOrBot) adr
   updateSto adr vlu = DMap.alter (Just . Domain.join vlu . justOrBot) adr

-- | Associate a value for each of the given addresses
type family Associate (adrs :: [Type]) where
   Associate '[] = '[]
   Associate (adr ': l) = ((adr :-> Vlu adr) ': Associate l)
