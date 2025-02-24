module Domain.Core.BoolDomain.TopLifted() where 

import Prelude hiding (not, and, or)

import Lattice.TopLiftedLattice
import Domain.Core.BoolDomain.Class

instance (BoolDomain a) => BoolDomain (TopLifted a) where
   isTrue Top = True
   isTrue (Value v) = isTrue v
   isFalse Top = True
   isFalse (Value v) = isFalse v
   not = fmap not
   and = liftA2 and 
   or  = liftA2 or
