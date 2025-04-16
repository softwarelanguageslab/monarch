{-# LANGUAGE FlexibleInstances, AllowAmbiguousTypes, FlexibleContexts, UndecidableInstances, Strict #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveFunctor #-}
module Analysis.Store(Store(..), CountingMap(..), store, restrictSto, printSto, emptyCountingMap, traceStore, traceStore') where

import Data.Map (Map)
import qualified Data.Map as Map
import Domain.Core.AbstractCount
import Lattice
import qualified Data.List 
import Text.Printf
import Control.DeepSeq

import Data.Set (Set)
import Lattice.Trace (Trace(..))
import qualified Data.Set as Set

-- | A generic store typeclass
class Joinable v => Store s a v | s -> a v where
   size      :: s ->  Int 
   emptySto  :: s
   lookupSto :: a -> s -> Maybe v
   extendSto :: a -> v -> s -> s
   extendsSto :: [(a,v)] -> s -> s 
   extendsSto = flip $ Data.List.foldr (uncurry extendSto)
   from :: [(a,v)] -> s
   from = flip extendsSto emptySto 
   updateSto :: a -> v -> s -> s
   updateSto adr v = updateStoWith (const v) (`join` v) adr 
   updateStoWith :: {- strong update -} (v -> v) -> {- weak update -} (v -> v) -> a -> s -> s
   --updateStoWith fs _ adr s = let v' = fs (lookupSto adr s) in updateSto adr v' s
   {-# MINIMAL size, emptySto, lookupSto, extendSto, updateStoWith #-}


-- | Simple map-based instance of the store with weak updates
instance (Joinable v, Ord a) => Store (Map a v) a v where
   size = Map.size
   emptySto = Map.empty
   lookupSto = Map.lookup
   extendSto adr vlu = Map.alter (Just . maybe vlu (join vlu)) adr
   -- a simple store only supports weak updates
   updateStoWith _ fw = Map.alter (Just . maybe (error "updating at a non-existent address") fw)

-- | Restrict the store to the given addresses only
-- TODO: maybe this should be in the typeclass itself?
restrictSto :: (Ord a) => Set a -> Map a v -> Map a v
restrictSto = flip Map.restrictKeys

-- | Trace the addresses reachable in a single step from the given set of addresses according to the given store
traceStore' :: (Trace adr v) => Set adr -> Map adr v  -> Set adr
traceStore' adrs m = Set.unions (Set.map (maybe Set.empty trace . (`Map.lookup` m)) adrs)

-- | Trace the addresses reachable from the given set of addresses in any number of steps
traceStore :: (Trace adr v) => Set adr -> Map adr v -> Set adr 
traceStore adrs m = if adrs /= adrs' then traceStore adrs' m else adrs
   where adrs' = traceStore' adrs m

--
-- Store printing 
--

printSto :: (Show v) => (k -> String) -> (k -> Bool) -> CountingMap k v -> String
printSto printKey keepKey m  =
       Data.List.intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (printKey k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (flip (const keepKey)) (store m)
         indent = Data.List.maximum (map (Data.List.length . printKey . fst) adrs) + 5

---
--- Abstract counting
---


newtype CountingMap a v = CountingMap { store :: Map a (v, AbstractCount) }
   deriving (Eq, Ord, Joinable, Show, BottomLattice, NFData, Functor)

emptyCountingMap :: CountingMap a v
emptyCountingMap = CountingMap Map.empty

instance (Joinable v, Show a, Ord a) => Store (CountingMap a v) a v where
   size = Map.size . store 
   emptySto = CountingMap Map.empty
   lookupSto a = fmap fst . Map.lookup a . store 
   extendSto a v = CountingMap . Map.alter extend a . store
      where extend Nothing            = Just (v, CountOne)
            extend (Just (v', count)) = Just (v' `join` v, inc count)
   updateStoWith :: (Joinable v, Show a, Ord a) => (v -> v) -> (v -> v) -> a -> CountingMap a v -> CountingMap a v
   updateStoWith fs fw a = CountingMap . Map.alter update a . store 
      where update Nothing              = error ("updating an unbound address " Data.List.++ show a)
            update (Just (v, CountOne)) = Just (fs v, CountOne)
            update (Just (v, count))    = Just (fw v, count)



