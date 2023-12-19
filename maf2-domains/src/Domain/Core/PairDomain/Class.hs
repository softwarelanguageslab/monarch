module Domain.Core.PairDomain.Class where 

import Lattice 

import Data.Kind 

class (JoinLattice p, JoinLattice (Content p)) => PairDomain p where
   type Content p :: Type
   car   :: p -> Content p
   cdr   :: p -> Content p
   cons  :: Content p -> Content p -> p