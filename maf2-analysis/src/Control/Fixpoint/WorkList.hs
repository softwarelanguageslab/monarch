{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# LANGUAGE PolyKinds #-}
module Control.Fixpoint.WorkList(WorkList(..), LIFOWorklist, FIFOWorkList) where

import Data.Maybe (isNothing)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.List (uncons)
import Data.Sequence (Seq ((:<|)), (|>))
import qualified Data.Sequence as Seq
import Data.Kind

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


-- | LIFO worklist 
data LIFOWorklist a = LIFOWorklist { seen :: Set a, worklist :: [a] }
                        deriving (Ord, Eq, Show)

instance Ord a => WorkList (LIFOWorklist a) a where
   empty = LIFOWorklist Set.empty []
   add a wl@LIFOWorklist { .. } =
      if not (Set.member a seen) then
         wl { seen = Set.insert a seen, worklist = a:worklist }
      else wl
   pop wl@LIFOWorklist {..}
     | null worklist = Nothing
     | otherwise = let (el:worklist') = worklist
                   in Just (el, wl { seen = seen Set.\\ Set.singleton el, worklist = worklist' })

-- | FIFO worklist
data FIFOWorkList a = FIFOWorkList { seenFIFO :: Set a, worklistFIFO :: Seq a }
instance Ord a => WorkList (FIFOWorkList a) a where
   empty = FIFOWorkList Set.empty Seq.empty
   add a wl@FIFOWorkList { .. } =
      if not (Set.member a seenFIFO) then
         wl { seenFIFO = Set.insert a seenFIFO, worklistFIFO = worklistFIFO |> a }
      else wl
   pop wl@FIFOWorkList { .. }
      | Seq.null worklistFIFO = Nothing
      | otherwise = let (el :<| worklist') = worklistFIFO
                    in Just (el, wl { seenFIFO  =  seenFIFO Set.\\ Set.singleton el, worklistFIFO = worklist' })

