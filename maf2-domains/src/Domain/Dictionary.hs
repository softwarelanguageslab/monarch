{-# LANGUAGE UndecidableInstances, FlexibleContexts, ConstraintKinds #-}
module Domain.Dictionary(
   IsDict,
   DictionaryDomain(..),
   Dictionary(..),
   keys,
   values,
   dcontains,
   dIsEmpty,
   dJoinValues,
   dKeys,
   dUpdate,
   dLookup,
   dEmpty,
   dict
) where

import Domain.Lattice
import Data.Kind
import qualified Data.Map as Map
import Data.Map (Map)
import qualified Data.Set as Set
import Data.Set (Set)

-- | An abstract representation of a dictionary
class JoinLattice d => DictionaryDomain d where
   type DKey d :: Type
   type DVlu d :: Type

   -- | Look up the given key in the dictionary
   lookup  :: DKey d -> d -> DVlu d
   -- | Lookup and (strongly) update the given key in the dictionary
   update  :: DKey d -> DVlu d -> d -> d
   -- | Checks whether the dictionary is empty
   isEmpty :: BoolDomain b => d -> b
   -- | Checks whether the dictionary contains the given key
   contains :: BoolDomain b => d -> DKey d -> b

-- | A wrapper for a regular `Map` that also keeps track of the keys that are certainly present in the dictionary
data Dictionary k v = Dictionary (Set k) (Map k v) | Bottom deriving (Eq, Show)

keys :: Dictionary k v -> Set k
keys   (Dictionary k _) = k
keys   _ = error "no keys for bottom"
values :: Dictionary k v -> Map k v
values (Dictionary _ v) = v
values _ = error "no values for bottom"

-- Note that there is no Joinable (Dictionary k v) instance here.
-- Currently it is only implemented when values of the CP domain are used as keys.
instance IsDict k v => JoinLattice (Dictionary k v) where
   bottom = Bottom
   subsumes _ Bottom      = True
   subsumes Bottom _      = False
   subsumes d1 d2         =
      join d1 d2 == d1

-- | Checks whether the dictionary could possibly contain the given key
dcontains :: (Ord k, BoolDomain b) => k -> Dictionary k v -> b
dcontains k = convert . Set.member k . keys
   where convert True  = inject True
         convert False = boolTop

-- | Get an underapproximation of the keys in the dictionary
dKeys :: Dictionary k v -> Set k
dKeys = keys

-- | Checks whether the dictionary is empty
dIsEmpty :: BoolDomain b => Dictionary k v -> b
dIsEmpty = inject . (== 0) . Map.size . values

-- | Joins all the values of the dictionary together
dJoinValues :: JoinLattice v => Dictionary k v -> v
dJoinValues = foldl (\v -> join v . snd) bottom . Map.toList  . values

-- | Create a dictionary based on the given list
dict :: (Ord k) => [(k, v)] -> Set k -> Dictionary k v
dict l ks = Dictionary ks (Map.fromList l)

-- | Update the dictionary at the specified key
dUpdate :: (Ord k) => k -> k -> Dictionary k v -> v -> Dictionary k v
dUpdate k k' d v = Dictionary
                     (Set.insert k' (keys d))
                     (Map.insert k v (values d))

-- | Looks up the given key in the dictionary
dLookup :: (Ord k) => k -> Dictionary k v -> Maybe v
dLookup k = Map.lookup k . values

-- | Creates an empty dictionary
dEmpty :: Dictionary k v
dEmpty = Dictionary Set.empty Map.empty

-- Typical constraint for dictionaries
type IsDict k v = 
   (Ord k, Eq k, Ord v, Eq v, JoinLattice k, JoinLattice v, Joinable (Dictionary k v), JoinLattice (Dictionary k v), DKey (Dictionary k v) ~ k, DVlu (Dictionary k v) ~ v, DictionaryDomain (Dictionary k v))
