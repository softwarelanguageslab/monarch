module Domain.Core.DictionaryDomain.CPDict (CPDictionary(..)) where

import Lattice
import Domain.Core.DictionaryDomain.Class 
import Domain.Core.BoolDomain

import Data.Set (Set, intersection)
import qualified Data.Set as Set 
import Data.Map (Map)
import qualified Data.Map as Map 

-- | A dictionary that only works for keys from a CP domain 
data CPDictionary k v = BotDict
                      | CPDict (Set k) (Map k v) v
                      | TopDict (Set k) v
   deriving (Eq, Ord, Show)

-- Typical constraints for dictionaries
type CPDict k v = (Ord k, Lattice v)

instance CPDict k v => Joinable (CPDictionary k v) where 
   join BotDict d = d
   join (CPDict kys1 dct1 vlu1) (CPDict kys2 dct2 vlu2) =
      CPDict (kys1 `intersection` kys2) (Map.unionWith join dct1 dct2) (vlu1 `join` vlu2)
   join (CPDict kys1 _ vlu1) (TopDict kys2 vlu2) =
      TopDict (kys1 `intersection` kys2) (vlu1 `join` vlu2)
   join (TopDict kys1 vlu1) (TopDict kys2 vlu2) =
      TopDict (kys1 `intersection` kys2) (vlu1 `join` vlu2)
   join a b = join b a

instance BottomLattice (CPDictionary k v) where 
   bottom = BotDict

instance CPDict k v => PartialOrder (CPDictionary k v) where
   subsumes _ BotDict   = True
   subsumes BotDict _   = False
   subsumes d1 d2       = join d1 d2 == d1

instance CPDict k v => DictionaryDomain (CPDictionary k v) where
   
   type DKey (CPDictionary k v) = CP k
   type DVlu (CPDictionary k v) = v 

   empty :: CPDictionary k v
   empty = CPDict Set.empty Map.empty bottom

   lookup :: CP k -> CPDictionary k v -> v
   lookup Bottom _ = bottom                                                   -- lookup preserves bottom
   lookup _ BotDict = bottom                                                  -- lookup preserves bottom 
   lookup (Constant key) (CPDict _ dct _) = justOrBot $ Map.lookup key dct    -- constant key: just look there 
   lookup Top (CPDict _ _ vlu) = vlu                                          -- unknown key: use the joined value
   lookup _ (TopDict _ vlu) = vlu                                             -- imprecise dict: take the top value 

   update :: CP k -> v -> CPDictionary k v -> CPDictionary k v
   update Bottom _ _ = bottom                         -- update preserves bottom
   update _ v _                                       
      | v == bottom = bottom                          -- update preserves bottom
   update _ _ BotDict = bottom                        -- update preserves bottom
   update (Constant key) vlu (CPDict kys dct joi) 
      | Map.member key dct = CPDict kys' dct' (joins dct')  -- update joi after overwriting
      | otherwise = CPDict kys' dct' (joi `join` vlu)       -- otherwise, just `join` the new value to joi
      where kys' = Set.insert key kys
            dct' = Map.insert key vlu dct
   update (Constant key) vlu (TopDict kys joi) = TopDict (Set.insert key kys) (joi `join` vlu)
   update Top vlu (CPDict kys _ joi) = TopDict kys (joi `join` vlu)
   update Top vlu (TopDict kys joi) = TopDict kys (joi `join` vlu)
   
   updateWeak :: CP k -> v -> CPDictionary k v -> CPDictionary k v
   updateWeak Bottom _ d = d                           
   updateWeak _ v d                                       
      | v == bottom = d                                
   updateWeak _ _ d@BotDict = d                           
   updateWeak (Constant key) vlu (CPDict kys dct joi) =
      CPDict kys (Map.insertWith join key vlu dct) (joi `join` vlu)
   updateWeak (Constant _) vlu (TopDict kys joi) = TopDict kys (joi `join` vlu)
   updateWeak Top vlu (CPDict kys _ joi) = TopDict kys (joi `join` vlu)
   updateWeak Top vlu (TopDict kys joi) = TopDict kys (joi `join` vlu)

   isEmpty :: BoolDomain b => CPDictionary k v -> b
   isEmpty BotDict = bottom         -- isEmpty preserves bottom
   isEmpty (CPDict kys dct _)
      | Map.null dct = true         -- if the dictionary is empty, there are definitely no bindings present due to the over-approximation
      | Set.null kys = boolTop      -- if we don't have any known keys, we don't know 
      | otherwise = false           -- if there are definitely some keys, it is definitely not empty
   isEmpty (TopDict kys _) 
      | Set.null kys = boolTop      -- if there are no keys that are guaranteed to be present, it may be empty 
      | otherwise = false           -- otherwise, we don't know 

   contains :: BoolDomain b => CP k -> CPDictionary k v -> b
   contains Bottom _ = bottom                -- contains preserves bottom 
   contains _ BotDict = bottom               -- contains preserves bottom 
   contains (Constant k) (CPDict kys dct _) 
      | Set.member k kys = true              -- if it is in the set of keys that are definitely present
      | Map.member k dct = boolTop           -- if it is in the map, it may be present
      | otherwise = false                    -- if it is not in the map, it is definitely not present
   contains (Constant k) (TopDict kys _)
      | Set.member k kys = true              -- if it is in the set of keys that are definitely present  
      | otherwise = boolTop                  -- otherwise, we don't know 
   contains Top (CPDict _ dct _)
      | Map.null dct = false                 -- if there are no bindings (in the over-approximation), it can't be present
      | otherwise = boolTop                  -- otherwise, we don't know
   contains Top (TopDict _ _) = boolTop      -- we don't know 

