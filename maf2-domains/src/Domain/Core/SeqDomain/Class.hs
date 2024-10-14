module Domain.Core.SeqDomain.Class (SeqDomain(..)) where 

import Lattice hiding (insert)
import Control.Monad.AbstractM 
import Domain.Class
import Domain.Core.NumberDomain.Class

import Prelude hiding (length)
import Data.Kind 

-- | A typeclass for a domain representing linear sequences (e.g., tuples, lists, vectors, ...)
class (Joinable v, PartialOrder v, IntDomain (Idx v), Lattice (Vlu v)) => SeqDomain v where
  type Vlu v :: Type
  type Idx v :: Type
  empty :: v
  empty = fromList [] 
  fromList :: [Vlu v] -> v
  ref :: AbstractM m => Idx v -> v -> m (Vlu v)
  head :: AbstractM m => v -> m (Vlu v)
  head = ref (inject @_ @Integer 0)
  tail :: AbstractM m => v -> m v
  tail l = slice (inject @_ @Integer 1) (length l) l
  set :: AbstractM m => Idx v -> Vlu v -> v -> m v
  setWeak :: AbstractM m => Idx v -> Vlu v -> v -> m v
  setWeak idx vlu lst = join lst <$> set idx vlu lst 
  length :: v -> Idx v
  insert :: AbstractM m => Idx v -> Vlu v -> v -> m v 
  insertFront :: AbstractM m => Vlu v -> v -> m v
  insertFront = insert (inject @_ @Integer 0) 
  insertRear :: AbstractM m => Vlu v -> v -> m v 
  insertRear v s = insert (length s) v s
  slice :: AbstractM m => Idx v -> Idx v -> v -> m v
