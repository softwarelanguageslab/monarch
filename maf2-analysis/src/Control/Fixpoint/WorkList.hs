{-# LANGUAGE FlexibleInstances #-}
module Control.Fixpoint.WorkList(WorkList(..)) where

import Data.Maybe (isNothing)
import Data.Set (Set)
import qualified Data.Set as Set 
import Data.List (uncons)

-- | WorkList typeclass
class WorkList wl e | wl -> e where
   empty :: wl 
   isEmpty :: wl -> Bool
   isEmpty = isNothing . peek 
   add :: e -> wl -> wl
   addAll :: Foldable t => t e -> wl -> wl
   addAll = flip (foldr add)
   pop :: wl -> Maybe (e, wl)
   peek :: wl -> Maybe e
   peek = fmap fst . pop 

-- | LIFO worklist using a list 
-- | Not recommended due to duplicates
instance WorkList [a] a where
   empty = []
   add = (:)
   pop = uncons    

-- | Arbitrary worklist algorithm using a Set 
-- | Ensures no duplicates are added to the worklist
instance Ord a => WorkList (Set a) a where 
   empty = Set.empty
   add = Set.insert 
   pop s
      | Set.null s = Nothing
      | otherwise = Just (Set.deleteFindMin s) 