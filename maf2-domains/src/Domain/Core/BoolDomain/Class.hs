module Domain.Core.BoolDomain.Class (BoolDomain(..)) where 

import Lattice 
import Domain.Class 

class (Domain b Bool) => BoolDomain b where
   not :: b -> b
   -- default implementations for convenience (can be overriden with more efficient implementations)
   isTrue ::  b -> Bool
   isTrue = (`subsumes` true) 
   isFalse :: b -> Bool
   isFalse = (`subsumes` false)
   true :: b
   true = inject True
   false :: b
   false = inject False  
   boolTop :: b 
   boolTop = true `join` false  