module Domain.Core.DictionaryDomain.Class(DictionaryDomain(..),  lookupM) where

import Lattice hiding (contains, empty)
import Domain.Core.BoolDomain
import Control.Monad.AbstractM
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.Escape

import Prelude hiding (lookup)
import Data.Kind

-- | An abstract representation of a dictionary
class (Lattice d, Lattice (DVlu d)) => DictionaryDomain d where
   type DKey d :: Type
   type DVlu d :: Type
   -- | Create an empty dictionary 
   empty   :: d  
   -- | Create a dictionary from a list of bindings
   from :: [(DKey d, DVlu d)] -> d
   from = foldr (uncurry update) empty
   -- | Look up the given key in the dictionary
   lookup  :: DKey d -> d -> DVlu d
   -- | Lookup and (strongly) update the given key in the dictionary
   update  :: DKey d -> DVlu d -> d -> d
   update = updateWeak
   -- | Lookup and weakly update the given key in the dictionary
   updateWeak :: DKey d -> DVlu d -> d -> d
   updateWeak k v d = d `join` update k v d  
   -- | Checks whether the dictionary is empty
   isEmpty :: BoolDomain b => d -> b
   -- | Checks whether the dictionary contains the given key
   contains :: BoolDomain b => DKey d -> d -> b

   {-# MINIMAL empty, lookup, isEmpty, contains, (update | updateWeak) #-}

-- | Lookup a key in a dictionary, potentially throwing an error if the key is not present
lookupM :: (AbstractM m, DictionaryDomain d) => DKey d -> d -> m (DVlu d)
lookupM k d = cond (pure $ contains @_ @(CP Bool) k d) 
                   (pure $ lookup k d)
                   (escape KeyNotFound) 
