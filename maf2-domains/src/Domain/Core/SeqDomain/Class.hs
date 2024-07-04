module Domain.Core.SeqDomain.Class (SeqDomain(..)) where 

import Lattice hiding (insert)
import Control.Monad.AbstractM 
import Domain.Class
import Domain.Core.NumberDomain.Class

import Prelude hiding (length)
import Data.Kind 

-- | A typeclass for a domain representing linear sequences (e.g., tuples, lists, vectors, ...)
class (JoinLattice v, IntDomain (Idx v), JoinLattice (Vlu v)) => SeqDomain v where
  type Vlu v :: Type
  type Idx v :: Type
  empty :: v
  empty = fromList [] 
  fromList :: [Vlu v] -> v
  ref :: AbstractM m => Idx v -> v -> m (Vlu v)
  head :: AbstractM m => v -> m (Vlu v)
  head = ref (inject @_ @Integer 0)
  set :: AbstractM m => Idx v -> Vlu v -> v -> m v
  setWeak :: AbstractM m => Idx v -> Vlu v -> v -> m v
  setWeak idx vlu lst = join lst <$> set idx vlu lst 
  length :: v -> Idx v
  insert :: Idx v -> Vlu v -> v -> v 
  insertFront :: Vlu v -> v -> v
  insertFront = insert (inject @_ @Integer 0) 
  insertRear :: Vlu v -> v -> v 
  insertRear v s = insert (length s) v s
  slice :: AbstractM m => Idx v -> Idx v -> v -> m v