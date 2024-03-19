module Control.Fixpoint.WorkList(WorkList(..)) where

import Data.Kind

-- | WorkList typeclass
class WorkList wl where
   peek :: wl e -> Maybe e
   peek wl = if isEmpty wl then Nothing else Just (fst (remove wl))
   add :: e -> wl e -> wl e
   remove :: wl e -> (e, wl e)
   isEmpty :: wl e -> Bool
   addAll :: [e] -> wl e -> wl e
   addAll es wl = foldr add wl es

-- | FIFO worklist
instance WorkList [] where
   add           = (:)
   remove (e:wl) = (e, wl)
   isEmpty []    = True
   isEmpty _     = False

