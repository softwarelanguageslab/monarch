{-# LANGUAGE FlexibleInstances, AllowAmbiguousTypes, FlexibleContexts, UndecidableInstances #-}
module Analysis.Store(Store(..), CountingMap, store, restrictSto) where

import Data.Map (Map)
import qualified Data.Map as Map
import Lattice

import Data.Set (Set)
import Data.Kind (FUN)

-- | A generic store typeclass
class (Lattice v) => Store s a v | s -> a v where
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
instance (Lattice v, Ord a) => Store (Map a v) a v where
   emptySto = Map.empty
   lookupSto = Map.findWithDefault bottom
   extendSto adr vlu = Map.alter (Just . join vlu . justOrBot) adr
   -- a simple store only supports weak updates
   updateStoWith _ fw = Map.alter (Just . fw . justOrBot)


-- | Restrict the store to the given addresses only
-- TODO: maybe this should be in the typeclass itself?
restrictSto :: (Ord a) => Set a -> Map a v -> Map a v
restrictSto = flip Map.restrictKeys


---
--- Abstract counting
---

data AbstractCount = CountZero | CountOne | CountInf
   deriving (Eq, Ord, Show)

inc :: AbstractCount -> AbstractCount
inc CountZero = CountOne
inc _ = CountInf

instance Joinable AbstractCount where
   join CountZero a = a
   join CountOne CountInf = CountInf
   join CountOne _ = CountOne 
   join CountInf _ = CountInf 

instance BottomLattice AbstractCount where
   bottom = CountZero 

instance PartialOrder AbstractCount where
   leq CountZero _ = True
   leq _ CountZero = False
   leq _ CountInf  = True 
   leq CountInf _  = False 
   leq _ _         = True 

newtype CountingMap a v = CountingMap { store :: Map a (v, AbstractCount) }
   deriving (Eq, Ord, Joinable, BottomLattice)

instance (Lattice v, Ord a) => Store (CountingMap a v) a v where
   emptySto = CountingMap Map.empty
   lookupSto a = justOrBot . fmap fst . Map.lookup a . store 
   extendSto a v = CountingMap . Map.alter extend a . store
      where extend Nothing            = Just (v, CountOne)
            extend (Just (v', count)) = Just (v' `join` v, inc count)
   updateStoWith fs fw a = CountingMap . Map.alter update a . store 
      where update Nothing              = error "updating an unbound address"
            update (Just (v, CountOne)) = Just (fs v, CountOne)
            update (Just (v, count))    = Just (fw v, count)



