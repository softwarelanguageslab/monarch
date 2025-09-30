-- | Utilities for debugging and tracing tailored to analyses
module Debug.Trace.Extra (traceSetSize) where

import Data.Set (Set)
import qualified Data.Set as Set
import qualified Debug.Trace as Debug

-- | Trace the size of the given set and prefix
-- it with the given prefix string
traceSetSize :: String -> Set a -> Set a
traceSetSize prefix = Debug.traceWith ((prefix ++) . show . Set.size)

