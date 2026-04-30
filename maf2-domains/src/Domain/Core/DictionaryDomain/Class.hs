module Domain.Core.DictionaryDomain.Class(
   DictionaryDomain(..)
) where

import Lattice.Class (join)
import qualified Lattice.Class as Lattice
import Domain.Core.BoolDomain
import Control.Monad.AbstractM

import Prelude hiding (lookup)
import Data.Kind
import Control.Monad (foldM)
import Control.Monad.Escape (orElse)
import qualified Control.Monad.Join as MonadJoin

-- | An abstract representation of a dictionary
class Lattice.Joinable d => DictionaryDomain d where
   type DKey d :: Type
   type DVlu d :: Type
   -- | Create an empty dictionary 
   empty :: d  
   -- | Create a dictionary from a list of bindings
   from :: AbstractM m => [(DKey d, DVlu d)] -> m d
   from = foldM (flip $ uncurry update) empty 
   -- | Look up the given key in the dictionary
   lookup  :: (AbstractM m, MonadJoin.Joinable m (DVlu d)) => DKey d -> d -> m (DVlu d)
   -- | Lookup and (strongly) update the given key in the dictionary
   update  :: AbstractM m => DKey d -> DVlu d -> d -> m d
   update = updateWeak
   -- | Lookup and weakly update the given key in the dictionary
   updateWeak :: AbstractM m => DKey d -> DVlu d -> d -> m d
   updateWeak k v d = join d <$> update k v d  
   -- | Checks whether the dictionary is empty
   isEmpty :: BoolDomain b => d -> b
   -- | Checks whether the dictionary contains the given key
   contains :: (AbstractM m, MonadJoin.Joinable m b, MonadJoin.Joinable m (DVlu d), BoolDomain b) => DKey d -> d -> m b
   contains k d = (lookup k d >> return true) `orElse` return false 

   {-# MINIMAL empty, lookup, isEmpty, (update | updateWeak) #-}
