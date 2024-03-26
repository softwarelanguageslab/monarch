{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Data.Finite where

import Prelude hiding (all)

-- | A typeclass to enumerate all values of a certain type
class Finite a where
  all :: [a]
  size :: Int
  size = length (all :: [a]) 

instance {-# OVERLAPPABLE #-} (Enum a, Bounded a) => Finite a where 
  all = [minBound..maxBound]