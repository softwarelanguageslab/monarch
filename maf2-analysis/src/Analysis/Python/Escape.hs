{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}

module Analysis.Python.Escape (
    PyEsc(..),
    PyEscape(..),
) where

import Domain
import Control.Monad.DomainError
import Domain.Python.World
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.Join
import Lattice
import Debug.Trace

---
--- The PyEscape class
---

data PyEsc vlu = Return vlu
               | Exception vlu
               | Break
               | Continue
  deriving (Eq, Ord, Show)

class (Domain esc (PyEsc vlu), Show esc) => PyEscape esc vlu | esc -> vlu where
    isReturn     :: (MonadJoin m, BoolDomain b) => esc -> m b  -- TODO: this one is actuallly not needed if we have `getReturn`?
    isBreak      :: (MonadJoin m, BoolDomain b) => esc -> m b
    isContinue   :: (MonadJoin m, BoolDomain b) => esc -> m b
    getReturn    :: MonadJoin m  => esc -> m vlu
    isException  :: (MonadJoin m, BoolDomain b) => esc -> m b
    getException :: MonadJoin m  => esc -> m vlu

---
--- PyEscape instance 
---

instance Ord vlu => Domain (Set (PyEsc vlu)) DomainError where
    inject = const Set.empty -- ignore domain errors
instance Ord vlu => Domain (Set (PyEsc vlu)) PyError where
    inject = const Set.empty -- ignore Python-specific domain errors

instance (Ord vlu, Show vlu, Joinable vlu) => PyEscape (Set (PyEsc vlu)) vlu where
    isReturn = mjoinMap $ \case Return _ -> return true
                                _        -> return false
    isContinue = mjoinMap $ \case Continue -> return true
                                  _        -> return false
    isBreak = mjoinMap $ \case Break -> return true
                               _     -> return false
    getReturn = mjoinMap $ \case Return v -> return v
                                 _        -> mzero
    getException = mjoinMap $ \case Exception e -> return e
                                    _           -> mzero
    isException = mjoinMap $ \case Exception _ -> return true
                                   _           -> return false
