{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Analysis.Python.Fixpoint where

import Analysis.Python.Common
import Domain.Python.Objects (PyObjCP)
import Domain.Python.World
import Analysis.Python.Semantics hiding (call)
import Analysis.Python.Monad
import Analysis.Python.Objects
import Analysis.Monad hiding (eval, call)
import Analysis.Monad.ComponentTracking

import Domain.Python.Syntax
import Domain hiding (isTrue)

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import Prelude hiding (init, read)
import Control.Monad.Reader
import Control.Monad.Identity
import Control.Monad.Escape
import Control.Monad.DomainError
import Data.Function ((&))
import Lattice (EqualLattice (..))
import Control.Lens (Field1(_1))
import Analysis.Python.Escape

---
--- Python analysis fixpoint algorithm
---

-- type AnalysisM m obj = (PyObj' obj, 
--                         StoreM m VarAdr PyVal,
--                         StoreM m ObjAdr obj,
--                         MapM PyCmp (MayEscape (Set PyEsc) PyVal) m,
--                         ComponentTrackingM m PyCmp,
--                         DependencyTrackingM m PyCmp VarAdr,
--                         DependencyTrackingM m PyCmp ObjAdr,
--                         DependencyTrackingM m PyCmp PyCmp,
--                         WorkListM m PyCmp)

type PyCmp = ((PyBdy, PyEnv), ())

--intra :: forall m obj . AnalysisM m obj => PyCmp -> m (MayEscape (Set PyEsc) PyVal)
intra cmp@((bdy, env), ctx) = cache bdy (evalBdy bdy) 
                                & runMayEscape @(Set PyEsc)
                                & runAlloc (const . allocPtr)
                                & runEnv env
                                & runCtx ctx 
                                & runJoinT
                                & runCacheT
                                & runIntraAnalysis cmp

--inter :: forall m obj . AnalysisM m obj => PyPrg -> m () 
inter prg = do init                                 -- initialize Python infrastructure
               add ((Main prg, initialEnv), ())     -- add the main component to the worklist
               iterateWL intra                      -- start the analysis 

analyze :: forall obj. PyObj' obj => PyPrg -> (Map VarAdr PyVal, Map ObjAdr obj)
analyze prg = (vsto, osto)
    where ((_,vsto),osto) = inter prg
                                & runWithStore @(Map VarAdr PyVal) @VarAdr
                                & runWithStore @(Map ObjAdr obj) @ObjAdr
                                & runWithMapping @PyCmp
                                & runWithDependencyTracking @PyCmp @VarAdr
                                & runWithDependencyTracking @PyCmp @ObjAdr
                                & runWithDependencyTracking @PyCmp @PyCmp
                                & runWithComponentTracking @PyCmp
                                & runWithWorkList @(Set PyCmp)
                                & runIdentity

---
--- CP instantiation
---

type PyObjCP' = PyObjCP PyVal ObjAdr PyClo

analyzeCP :: PyPrg -> (Map VarAdr PyVal, Map ObjAdr PyObjCP')
analyzeCP = analyze @PyObjCP'