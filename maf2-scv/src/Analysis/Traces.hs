module Analysis.Traces where

import Data.Set (Set)


-- An abstract trace keeps the set of messages
-- that are send during the turn of an actor. 
--
-- Since traces are used for elliminating program
-- states they have to be an **under approximation**
-- of the actual program behavior. Thus, the 
-- intersection rather than the union across
-- program paths to ensure that only the messages
-- present in all paths is kept in the trace.
newtype Trace m = Trace (Set m)


