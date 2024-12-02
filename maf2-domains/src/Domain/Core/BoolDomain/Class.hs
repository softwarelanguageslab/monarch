{-# OPTIONS_GHC -Wno-orphans #-}
module Domain.Core.BoolDomain.Class (BoolDomain(..)) where 

import Lattice.Class
import Domain.Class 


------------------------------------------------------------
-- BoolDomain
------------------------------------------------------------

class (Joinable b, Domain b Bool) => BoolDomain b where
   -- default implementations for convenience (can all be overriden with more efficient implementations)
   true :: b
   true = inject True
   false :: b
   false = inject False  
   isTrue ::  b -> Bool
   isTrue = (`subsumes` true) 
   isFalse :: b -> Bool
   isFalse = (`subsumes` false)
   boolTop :: b 
   boolTop = true `join` false  
   not :: b -> b
   and :: b -> b -> b
   or  :: b -> b -> b