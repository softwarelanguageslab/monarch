-- | Provides typeclasses `Print` and `PrintShort` to 
-- print a full human-readable version of the data
-- or a shortened version of it
module Data.Print (Print(..), PrintShort(..)) where

class (Show a) => Print a where  
   print :: a -> String 
   print = show
class PrintShort a where   
   printShort :: a -> String
