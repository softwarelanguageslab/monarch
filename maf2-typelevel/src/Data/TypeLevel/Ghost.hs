-- | In some cases to satisfy injectivity constraints
-- some information needs to be added to a concrete type
-- while not keeping that information available at run-time.
module Data.TypeLevel.Ghost (GT(..)) where 
   
import GHC.Generics
import Data.Hashable

-- | A ghost type that ignores its type parameter.
--
-- Instances of this type are `Ghost`s. 
-- NOTE: if the compiler is smart it can use 
-- a zero-sized value for this type.
data GT a = Ghost deriving (Eq, Ord, Generic, Show)
instance Hashable (GT a)
