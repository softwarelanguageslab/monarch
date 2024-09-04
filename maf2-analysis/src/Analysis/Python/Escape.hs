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
import Lattice

---
--- The PyEscape class
---

data PyEsc vlu = Return vlu
               | Exception vlu 
               | Break 
               | Continue 
  deriving (Eq, Ord, Show)

class (Domain esc (PyEsc vlu), Show esc) => PyEscape esc vlu | esc -> vlu where
    isReturn     :: BoolDomain b => esc -> b  -- TODO: this one is actuallly not needed if we have `getReturn`?
    isBreak      :: BoolDomain b => esc -> b
    isContinue   :: BoolDomain b => esc -> b
    getReturn    :: MonadJoin m  => esc -> m vlu 
    isException  :: BoolDomain b => esc -> b 
    getException :: MonadJoin m  => esc -> m vlu 

---
--- PyEscape instance 
---

instance Ord vlu => Domain (Set (PyEsc vlu)) DomainError where
    inject = const Set.empty -- ignore domain errors
instance Ord vlu => Domain (Set (PyEsc vlu)) PyError where
    inject = const Set.empty -- ignore Python-specific domain errors

instance (Ord vlu, Show vlu, Joinable vlu, BottomLattice vlu) => PyEscape (Set (PyEsc vlu)) vlu where
    isReturn = joinMap $ \case Return _ -> true 
                               _        -> false  
    isContinue = joinMap $ \case Continue -> true
                                 _        -> false  
    isBreak = joinMap $ \case Break -> true
                              _     -> false 
    getReturn = mjoinMap $ \case Return v -> return v 
                                 _        -> mzero 
    getException = mjoinMap $ \case Exception e -> return e
                                    _           -> mzero 
    isException = joinMap $ \case Exception _ -> true 
                                  _           -> false 