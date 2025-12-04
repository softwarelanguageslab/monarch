-- | Simpleactor specific primitives and open architecture to add additional or other primitives to the SimpleActor semantics
module Analysis.SimpleActor.Primitives(SimpleActorPrim(..), SimpleActorPrimitive(..)) where

import Analysis.SimpleActor.Monad
import qualified Analysis.Scheme.Primitives as Scheme
import Syntax.AST

-- | Object that has a `runPrimitive` method
data SimpleActorPrim v where
  Prm :: SimpleActorPrimitive v p => p -> SimpleActorPrim v

-- | Primitives must be able to provide a function to run them
class SimpleActorPrimitive v p | p -> v where
  runPrimitive :: forall k m . PrimM v k m => p -> (Exp -> [v] -> m v)
  
-- | 'SimpleActorPrim' objects are also primitives
instance SimpleActorPrimitive v (SimpleActorPrim v) where
  runPrimitive (Prm p) = runPrimitive p


-- | Instance for 'SchemePrimitive'
instance SimpleActorPrimitive v (Scheme.Prim v) where
  runPrimitive (Scheme.Prim _ run) = run

