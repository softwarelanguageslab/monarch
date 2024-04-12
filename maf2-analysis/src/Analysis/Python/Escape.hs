{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}
module Analysis.Python.Escape where

import Domain
import Analysis.Python.Common 
import Control.Monad.DomainError
import Domain.Python.World
import Data.Set (Set)
import qualified Data.Set as Set
import qualified Data.Foldable as Set
import Control.Monad.Join (mjoinMap)
import Lattice (joinMap)
import Control.Monad.Join

---
--- The PyEscape class
---

data PyControlEsc = Return PyVal 
                  | Break 
                  | Continue 
  deriving (Eq, Ord)

class Domain esc PyControlEsc => PyEscape esc where
    isReturn   :: BoolDomain b => esc -> b
    isBreak    :: BoolDomain b => esc -> b
    isContinue :: BoolDomain b => esc -> b
    getReturn  :: MonadJoin m => esc -> m PyVal 


---
--- PyEscape instance 
---

data PyEsc = EscPyError PyError
           | EscDomainError DomainError
           | EscPyControl PyControlEsc
    deriving (Eq, Ord)

instance Domain (Set PyEsc) DomainError where
    inject = Set.singleton . EscDomainError
instance Domain (Set PyEsc) PyError where
    inject = Set.singleton . EscPyError
instance Domain (Set PyEsc) PyControlEsc where
    inject = Set.singleton . EscPyControl

instance PyEscape (Set PyEsc) where
    isReturn = joinMap $ \case EscPyControl (Return _) -> true
                               _ -> false  
    isContinue = joinMap $ \case EscPyControl Continue -> true
                                 _ -> false  
    isBreak = joinMap $ \case EscPyControl Break -> true
                              _ -> false 
    getReturn = mjoinMap $ \case EscPyControl (Return v) -> return v 
                                 _ -> mzero 