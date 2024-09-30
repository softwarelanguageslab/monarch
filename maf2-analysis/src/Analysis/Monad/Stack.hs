-- | Utility functions for interacting with 
-- monad transformer stacks
module Analysis.Monad.Stack(MonadStack) where

import Data.Kind (Type)

type family MonadStack (ts :: [(Type -> Type) -> Type -> Type]) (m :: Type -> Type) where
    MonadStack '[] m = m 
    MonadStack (t ': tr) m = t (MonadStack tr m)
