module Domain.Core.DictionaryDomain.SetDict (SetDictionary(..)) where

import Lattice
import Domain.Core.DictionaryDomain.Class 
import Domain.Core.BoolDomain

import Data.Set (Set)
import qualified Data.Set as Set 
import Data.Map (Map)
import qualified Data.Map as Map 
import Control.Monad.Join (mjoinMap, MonadJoinable (..), MonadBottom(..))
import Control.Monad.DomainError (DomainError(..))
import Control.Monad.Escape (escape)

-- | A simple dictionary for keys from a set domain
newtype SetDictionary k v = Dct (Map k v)
   deriving (Eq, Ord, Show)

type SetDict k v = (Ord k, Lattice v)

instance SetDict k v => Joinable (SetDictionary k v) where
   join (Dct d1) (Dct d2) = Dct $ Map.unionWith join d1 d2

instance SetDict k v => DictionaryDomain (SetDictionary k v) where
   
   type DKey (SetDictionary k v) = Set k
   type DVlu (SetDictionary k v) = v
   
   empty = Dct Map.empty

   lookup ks (Dct d) = mjoinMap (maybe (escape KeyNotFound) (mjoin (escape KeyNotFound) . return) . flip Map.lookup d) ks 

   updateWeak ks v (Dct dct)
      | Set.null ks = mbottom
      | otherwise   = return $ Dct $ foldr (\k -> Map.insertWith join k v) dct ks 

   isEmpty (Dct dct)
      | Map.null dct = true
      | otherwise    = boolTop 
