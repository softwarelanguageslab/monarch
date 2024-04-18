{-# LANGUAGE FlexibleInstances, AllowAmbiguousTypes, FlexibleContexts, UndecidableInstances #-}
module Analysis.Store(Store(..), restrictSto) where

import Data.Map (Map)
import qualified Data.Map as Map
import Lattice

import Data.Set (Set)

-- | A generic store typeclass
class (JoinLattice v) => Store s a v | s -> a v where
   emptySto  :: s
   lookupSto :: a -> s -> v
   extendSto :: a -> v -> s -> s
   extendsSto :: [(a,v)] -> s -> s 
   extendsSto = flip $ foldr (uncurry extendSto)
   from :: [(a,v)] -> s
   from = flip extendsSto emptySto 
   updateSto :: a -> v -> s -> s
   updateSto adr v = updateStoWith (const v) (`join` v) adr 
   updateStoWith :: {- strong update -} (v -> v) -> {- weak update -} (v -> v) -> a -> s -> s
   updateStoWith fs _ adr s = let v' = fs (lookupSto adr s) in updateSto adr v' s
   {-# MINIMAL emptySto, lookupSto, extendSto, (updateSto | updateStoWith) #-}


-- | Simple map-based instance of the store with weak updates
instance (JoinLattice v, Ord a) => Store (Map a v) a v where
   emptySto = Map.empty
   lookupSto = Map.findWithDefault bottom
   extendSto adr vlu = Map.alter (Just . join vlu . justOrBot) adr
   -- a simple store only supports weak updates
   updateStoWith _ fw = Map.alter (Just . fw . justOrBot)

-- | Restrict the store to the given addresses only
-- TODO: maybe this should be in the typeclass itself?
restrictSto :: (Ord a) => Set a -> Map a v -> Map a v
restrictSto = flip Map.restrictKeys
