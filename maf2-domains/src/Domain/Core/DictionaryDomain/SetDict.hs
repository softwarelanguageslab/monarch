module Domain.Core.DictionaryDomain.SetDict (SetDictionary(..)) where

import Lattice
import Domain.Core.DictionaryDomain.Class 
import Domain.Core.BoolDomain

import Data.Set (Set, intersection)
import qualified Data.Set as Set 
import Data.Map (Map)
import qualified Data.Map as Map 

-- | A simple dictionary for keys from a set domain
data SetDictionary k v = Bot 
                       | Dct (Map k v)
   deriving (Eq, Ord, Show)

type SetDict k v = (Ord k, JoinLattice v)

instance SetDict k v => Joinable (SetDictionary k v) where
   join Bot d = d
   join d Bot = d
   join (Dct d1) (Dct d2) = Dct $ Map.unionWith join d1 d2

instance SetDict k v => JoinLattice (SetDictionary k v) where
   bottom = Bot
   subsumes _ Bot = True
   subsumes Bot _ = False
   subsumes d1 d2 = join d1 d2 == d1

instance SetDict k v => DictionaryDomain (SetDictionary k v) where
   
   type DKey (SetDictionary k v) = Set k
   type DVlu (SetDictionary k v) = v
   
   empty :: SetDictionary k v
   empty = Dct Map.empty

   lookup :: Set k -> SetDictionary k v -> v
   lookup _ Bot = bottom
   lookup ks (Dct d) = joinMap (justOrBot . flip Map.lookup d) ks

   updateWeak :: Set k -> v -> SetDictionary k v -> SetDictionary k v 
   updateWeak _ v d
      | v == bottom = d 
   updateWeak _ _ Bot = Bot
   updateWeak ks v (Dct dct) = Dct $ foldr (\k -> Map.insertWith join k v) dct ks 

   isEmpty :: BoolDomain d => SetDictionary k v -> d
   isEmpty Bot = bottom
   isEmpty (Dct dct)
      | Map.null dct = true
      | otherwise = boolTop 
   
   contains :: BoolDomain d => Set k -> SetDictionary k v -> d
   contains _ Bot = bottom
   contains ks (Dct dct)
      | Set.null matchedKys = false
      | otherwise = boolTop 
      where matchedKys = Map.keysSet dct `intersection` ks