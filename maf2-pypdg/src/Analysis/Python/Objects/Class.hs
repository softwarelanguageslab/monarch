{-# LANGUAGE PolyKinds #-}

module Analysis.Python.Objects.Class (PyObj(..), AbsJoinLattice) where

import Domain 
import Lattice
import Data.TypeLevel.HMap
import Analysis.Python.Infrastructure
import Analysis.Python.Common 

import Data.Singletons
import Data.Kind 

data AbsJoinLattice obj :: k ~> Constraint
type instance Apply (AbsJoinLattice obj) k = JoinLattice (Abs obj k)

class (
    ForAll PyPrmKey (AbsJoinLattice obj),
    IntDomain     (Abs obj IntPrm),
    Domain.Boo    (Abs obj IntPrm) ~ Abs obj BlnPrm, 
    Domain.Rea    (Abs obj IntPrm) ~ Abs obj ReaPrm,
    Domain.Str    (Abs obj IntPrm) ~ Abs obj StrPrm, 
    RealDomain    (Abs obj ReaPrm),
    Domain.Boo    (Abs obj ReaPrm) ~ Abs obj BlnPrm,
    StringDomain  (Abs obj StrPrm)
  ) 
  => 
  PyObj obj where
    -- object creation (with a given class)
    new :: PyVal -> obj 
    -- an object should contain "primitive fields" ...
    type Abs obj (k :: PyPrmKey) :: Type
    has :: forall (k :: PyPrmKey) b . BoolDomain b => Sing k -> obj -> b  
    get :: forall k . Sing k -> obj -> Abs obj k
    set :: forall k . Sing k -> Abs obj k -> obj -> obj 
    -- ... and user-defined keyts/attributes
    hasAttr :: BoolDomain b => String -> obj -> b
    getAttr :: String -> obj -> PyVal 
    setAttr :: String -> PyVal -> obj -> obj 

