-- | This module provides monadic operations shared between many analyses.
--
-- To make instantiations for combinations of these typeclasses easier, this module also provides an abstraction based on Monad **layers**.
-- These layers corresponds to monads in a monad transformer stack. However, since `MonadTrans` lacks a method for peeling away a single layer
-- from the monad transformer stack, the `MonadLayer` typeclass is used instead. 
--
module Analysis.Monad(
   module Analysis.Monad.Allocation,
   module Analysis.Monad.Assertion,
   module Analysis.Monad.Cache,
   module Analysis.Monad.Call,
--   module Analysis.Monad.ComponentTracking,
   module Analysis.Monad.Context,
   module Analysis.Monad.DependencyTracking, 
   module Analysis.Monad.Environment,
   module Analysis.Monad.Eval,
   module Analysis.Monad.IntraAnalysis, 
   module Analysis.Monad.Join,
   module Analysis.Monad.Map,
   module Analysis.Monad.Span,
   module Analysis.Monad.Store, 
   module Analysis.Monad.WorkList, 
) where

import Analysis.Monad.Allocation
import Analysis.Monad.Assertion
import Analysis.Monad.Cache 
import Analysis.Monad.Call
--import qualified Analysis.Monad.ComponentTracking
import Analysis.Monad.Context
import Analysis.Monad.DependencyTracking
import Analysis.Monad.Environment
import Analysis.Monad.Eval
import Analysis.Monad.IntraAnalysis
import Analysis.Monad.Join
import Analysis.Monad.Map 
import Analysis.Monad.Span
import Analysis.Monad.Store 
import Analysis.Monad.WorkList 