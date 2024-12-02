{-# LANGUAGE FlexibleInstances, AllowAmbiguousTypes, FlexibleContexts, UndecidableInstances #-}
module Analysis.Store(Store(..), CountingMap(..), store, restrictSto, printSto) where

import Data.Map (Map)
import qualified Data.Map as Map
import Domain.Core.AbstractCount
import Lattice
import Data.List 
import Text.Printf
import Control.DeepSeq

import Data.Set (Set)

-- | A generic store typeclass
class Joinable v => Store s a v | s -> a v where
   emptySto  :: s
   lookupSto :: a -> s -> Maybe v
   extendSto :: a -> v -> s -> s
   extendsSto :: [(a,v)] -> s -> s 
   extendsSto = flip $ foldr (uncurry extendSto)
   from :: [(a,v)] -> s
   from = flip extendsSto emptySto 
   updateSto :: a -> v -> s -> s
   updateSto adr v = updateStoWith (const v) (`join` v) adr 
   updateStoWith :: {- strong update -} (v -> v) -> {- weak update -} (v -> v) -> a -> s -> s
   --updateStoWith fs _ adr s = let v' = fs (lookupSto adr s) in updateSto adr v' s
   {-# MINIMAL emptySto, lookupSto, extendSto, updateStoWith #-}


-- | Simple map-based instance of the store with weak updates
instance (Joinable v, Ord a) => Store (Map a v) a v where
   emptySto = Map.empty
   lookupSto = Map.lookup
   extendSto adr vlu = Map.alter (Just . maybe vlu (join vlu)) adr
   -- a simple store only supports weak updates
   updateStoWith _ fw = Map.alter (Just . maybe (error "updating at a non-existent address") fw)

-- | Restrict the store to the given addresses only
-- TODO: maybe this should be in the typeclass itself?
restrictSto :: (Ord a) => Set a -> Map a v -> Map a v
restrictSto = flip Map.restrictKeys


--
-- Store printing 
--

printSto :: (Show v) => (k -> String) -> (k -> Bool) -> CountingMap k v -> String
printSto printKey keepKey m  =
       intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (printKey k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (flip (const keepKey)) (store m)
         indent = maximum (map (length . printKey . fst) adrs) + 5

---
--- Abstract counting
---


newtype CountingMap a v = CountingMap { store :: Map a (v, AbstractCount) }
   deriving (Eq, Ord, Joinable, Show, BottomLattice, NFData)

instance (Joinable v, Ord a) => Store (CountingMap a v) a v where
   emptySto = CountingMap Map.empty
   lookupSto a = fmap fst . Map.lookup a . store 
   extendSto a v = CountingMap . Map.alter extend a . store
      where extend Nothing            = Just (v, CountOne)
            extend (Just (v', count)) = Just (v' `join` v, inc count)
   updateStoWith fs fw a = CountingMap . Map.alter update a . store 
      where update Nothing              = error "updating an unbound address"
            update (Just (v, CountOne)) = Just (fs v, CountOne)
            update (Just (v, count))    = Just (fw v, count)



