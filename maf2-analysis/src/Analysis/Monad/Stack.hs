-- | Utility functions for interacting with 
-- monad transformer stacks
module Analysis.Monad.Stack(MonadStack) where

type family MonadStack (ts :: [(* -> *) -> * -> *]) (m :: * -> *) where
    MonadStack '[] m = m 
    MonadStack (t ': tr) m = t (MonadStack tr m)
