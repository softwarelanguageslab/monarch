module Control.Fixpoint.WorkList(WorkList(..)) where

import Data.Kind

-- | WorkList typeclass
class WorkList wl where
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

