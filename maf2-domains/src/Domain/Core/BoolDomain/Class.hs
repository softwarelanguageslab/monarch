module Domain.Core.BoolDomain.Class (BoolDomain(..)) where 

import Lattice.Class
import Domain.Class 


------------------------------------------------------------
-- BoolDomain
------------------------------------------------------------

class (Domain b Bool) => BoolDomain b where
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
   iff :: (Joinable a, BottomLattice a) => b -> a -> a -> a
   iff cnd csq alt = tru `join` fls
      where tru = if isTrue cnd  then csq else bottom
            fls = if isFalse cnd then alt else bottom
   not :: b -> b
   not b = iff b false true
   and :: b -> b -> b
   and a b = iff a b false
   or :: b -> b -> b
   or a = iff a true  
