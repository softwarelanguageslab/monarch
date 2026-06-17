module Lattice.Trace(Trace(..)) where

import Data.Set
import qualified Data.Set as Set
import Data.Void (Void)
import GHC.Base (absurd)
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.HashMap.Lazy as HashMap
import Data.HashMap.Lazy (HashMap)

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

instance Ord adr => Trace adr Void where
  trace = absurd

instance (Ord adr, Trace adr v) => Trace adr (Map k v) where 
  trace = Map.foldr (Set.union . trace) Set.empty 

instance (Ord adr, Trace adr v) => Trace adr (HashMap k v) where 
  trace = HashMap.foldr (Set.union . trace) Set.empty

