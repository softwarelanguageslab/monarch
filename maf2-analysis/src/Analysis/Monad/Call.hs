{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Monad.Call (
  CallM(..),
  CallBottomT,
  runCallBottomT,  
) where

import Lattice 

import Control.Monad.Trans
import Control.Monad.Layer 
import Control.Monad.Join 

import Control.Monad.Identity

--- !!! TODO: This is Scheme-specific due to using `Exp` !!!
import Syntax.Scheme.AST

---
--- The CallM typeclass
---

class (Monad m) => CallM m env v where         
   call :: (Exp, env) -> m v

instance (Monad (t m), CallM m env v, MonadLayer t) => CallM (t m) env v where
   call = upperM . call
      
---
--- The CallBottomT monad transformer 
---

-- | Mock instance that ignores the call and always returns bottom.
newtype CallBottomT v m a = CallBottomT { _getCallBottomT :: IdentityT m a }
                        deriving (Applicative, Functor, Monad, MonadJoin, MonadLayer, MonadTrans)

instance {-# OVERLAPPING #-} (Monad m, BottomLattice v) => CallM (CallBottomT v m) env v where
   call _ = CallBottomT $ return bottom

runCallBottomT :: CallBottomT v m a -> m a
runCallBottomT (CallBottomT ma) = runIdentityT ma
