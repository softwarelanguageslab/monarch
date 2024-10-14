module Domain.Core.SeqDomain.Class (SeqDomain(..)) where

import Lattice hiding (insert)
import Control.Monad.AbstractM
import Domain.Class
import Domain.Core.NumberDomain.Class

import Prelude hiding (length)
import qualified Control.Monad as M
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
  tail l = M.join $ slice (inject @_ @Integer 1) <$> length l <*> pure l
  set :: AbstractM m => Idx v -> Vlu v -> v -> m v
  setWeak :: AbstractM m => Idx v -> Vlu v -> v -> m v
  setWeak idx vlu lst = join lst <$> set idx vlu lst
  length :: AbstractM m => v -> m (Idx v)
  insert :: AbstractM m => Idx v -> Vlu v -> v -> m v
  insertFront :: AbstractM m => Vlu v -> v -> m v
  insertFront = insert (inject @_ @Integer 0)
  insertRear :: AbstractM m => Vlu v -> v -> m v
  insertRear v s = M.join $ insert <$> length s <*> pure v <*> pure s
  slice :: AbstractM m => Idx v -> Idx v -> v -> m v
