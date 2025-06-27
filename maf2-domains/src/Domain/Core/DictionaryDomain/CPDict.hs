module Domain.Core.DictionaryDomain.CPDict (
   CPDictionary(..), 
   fromList, 
   updateAt, 
   updateAtWeak,
   containsKey,
) where

import Prelude hiding (lookup)
import Lattice hiding (contains)
import Domain.Core.DictionaryDomain.Class 
import Domain.Core.BoolDomain

import Data.Set (Set, intersection)
import qualified Data.Set as Set 
import Data.Map (Map, (!))
import qualified Data.Map as Map 
import Control.Monad.AbstractM
import Control.Monad.Join (MonadJoinable (mjoin))
import Control.Monad.DomainError (DomainError(..))
import Control.Monad.Escape
import Lattice.BottomLiftedLattice (BottomLifted, joinWithBL, joinsBL)
import qualified Lattice.BottomLiftedLattice as BL
import GHC.Generics (Generic)
import Control.DeepSeq (NFData)

-- | A dictionary that only works for keys from a CP domain 
data CPDictionary k v = CPDict (Set k) (Map k v) (BottomLifted v)   
                      | TopDict (Set k) v
   deriving (Eq, Ord, Show, Generic)

instance (NFData k, NFData v) => NFData (CPDictionary k v) where

-- Typical constraints for dictionaries
type CPDict k v = (Ord k, Joinable v)

fromList :: CPDict k v => [(k, v)] -> CPDictionary k v
fromList bds = CPDict (Set.fromList kys) (Map.fromList bds) vlu
   where (kys, vls) = unzip bds
         vlu = joinsBL vls 

updateAt :: CPDict k v => k -> v -> CPDictionary k v -> CPDictionary k v 
updateAt key vlu (CPDict kys dct joi) = CPDict kys' dct' joi'
      where kys' = Set.insert key kys
            dct' = Map.insert key vlu dct
            joi' | Map.member key dct = BL.Value $ joins1 dct'          -- update joi after overwriting
                 | otherwise          = BL.Value $ joinWithBL joi vlu   -- otherwise, just `join` the new value to joi
updateAt key vlu (TopDict kys joi) = TopDict (Set.insert key kys) (joi `join` vlu)

updateAtWeak :: CPDict k v => k -> v -> CPDictionary k v -> CPDictionary k v 
updateAtWeak key vlu (CPDict kys dct joi) = CPDict kys (Map.insertWith join key vlu dct) (joi `join` BL.Value vlu)
updateAtWeak _   vlu (TopDict kys joi)    = TopDict kys (joi `join` vlu)

containsKey :: (CPDict k v, BoolDomain b) => k -> CPDictionary k v -> b 
containsKey key (CPDict kys dct _)
   | Set.member key kys = true 
   | Map.member key dct = boolTop
   | otherwise = false
containsKey key (TopDict kys _)
   | Set.member key kys = true
   | otherwise = boolTop 

instance CPDict k v => Joinable (CPDictionary k v) where 
   join (CPDict kys1 dct1 vlu1) (CPDict kys2 dct2 vlu2) =
      CPDict (kys1 `intersection` kys2) (Map.unionWith join dct1 dct2) (vlu1 `join` vlu2)
   join (CPDict kys1 _ vlu1) (TopDict kys2 vlu2) =
      TopDict (kys1 `intersection` kys2) (joinWithBL vlu1 vlu2)
   join (TopDict kys1 vlu1) (TopDict kys2 vlu2) =
      TopDict (kys1 `intersection` kys2) (vlu1 `join` vlu2)
   join a b = join b a

instance CPDict k v => DictionaryDomain (CPDictionary k v) where
   
   type DKey (CPDictionary k v) = CP k
   type DVlu (CPDictionary k v) = v 

   empty :: CPDictionary k v
   empty = CPDict Set.empty Map.empty BL.Bottom 

   lookup :: AbstractM m => CP k -> CPDictionary k v -> m v
   lookup _ (CPDict _ _ BL.Bottom) = escape KeyNotFound 
   lookup (Constant key) (CPDict kys dct _)
      | Set.member key kys = return (dct ! key)
      | Map.member key dct = return (dct ! key) `mjoin` escape KeyNotFound
      | otherwise          = escape KeyNotFound 
   lookup (Constant key) (TopDict kys vlu)
      | Set.member key kys = return vlu
      | otherwise          = return vlu `mjoin` escape KeyNotFound
   lookup Top (CPDict _ dct (BL.Value vlu))
      | Map.null dct       = escape KeyNotFound
      | otherwise          = return vlu `mjoin` escape KeyNotFound 
   lookup Top (TopDict _ vlu) = return vlu `mjoin` escape KeyNotFound                                                                      -- imprecise dict: take the top value 

   update :: AbstractM m => CP k -> v -> CPDictionary k v -> m (CPDictionary k v)
   update (Constant key) vlu dct = return $ updateAt key vlu dct
   update Top vlu (CPDict kys _ joi) = return $ TopDict kys (joinWithBL joi vlu)
   update Top vlu (TopDict kys joi)  = return $ TopDict kys (joi `join` vlu)
   
   updateWeak :: AbstractM m => CP k -> v -> CPDictionary k v -> m (CPDictionary k v)
   updateWeak (Constant key) vlu dct = return $ updateAtWeak key vlu dct
   updateWeak Top vlu (CPDict kys _ joi) = return $ TopDict kys (joinWithBL joi vlu)
   updateWeak Top vlu (TopDict kys joi)  = return $ TopDict kys (joi `join` vlu)

   isEmpty :: BoolDomain b => CPDictionary k v -> b
   isEmpty (CPDict kys dct _)
      | Map.null dct = true 
      | Set.null kys = boolTop      -- if we don't have any known keys, we don't know 
      | otherwise = false           -- if there are definitely some keys, it is definitely not empty
   isEmpty (TopDict kys _) 
      | Set.null kys = boolTop      -- if there are no keys that are guaranteed to be present, it may be empty 
      | otherwise = false           -- otherwise, we don't know 
