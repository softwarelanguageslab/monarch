module Data.SetExtra(maybeSingle, (∪)) where 

import Data.Set (Set)
import qualified Data.Set as Set

maybeSingle :: Maybe a -> Set a
maybeSingle Nothing = Set.empty
maybeSingle (Just v) = Set.singleton v

a ∪ b = Set.union a b
infixl 0 ∪
