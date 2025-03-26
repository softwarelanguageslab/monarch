module Lattice.Trace(Trace(..)) where

import Data.Set
import qualified Data.Set as Set

------------------------------------------------------------
-- Type class
------------------------------------------------------------

-- | Class of values for which we can compute the set of reachable addresses
class Ord adr => Trace adr v where
  -- | Compute the set of addresses reachable from this abstract value
  trace :: v -> Set adr


------------------------------------------------------------
-- Trivial instances
------------------------------------------------------------

instance Ord adr => Trace adr () where
  trace = const Set.empty

instance (Trace adr a, Trace adr b) => Trace adr (a, b) where
  trace (a,b) = Set.union (trace a) (trace b)

instance (Trace adr a, Trace adr b) => Trace adr (Either a b) where
  trace = either trace trace

instance (Trace adr a) => Trace adr (Maybe a) where
  trace = maybe Set.empty trace

