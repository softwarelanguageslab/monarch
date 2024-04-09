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
import Lattice

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import Prelude hiding (init, read)
import Control.Monad.Reader
import Control.Monad.Identity
import Data.Functor (($>))
import Control.Monad.Join
import Control.Monad.Escape
import Control.Monad.DomainError
import Data.Function ((&))
import Analysis.Monad.Result

---
--- Python components 
---

data PyCmp = MainCmp PyPrg
           | LoopCmp PyExp PyStm PyEnv
           | CallCmp PyStm PyEnv
  deriving (Eq, Ord, Show)

callComponent :: (EnvM m VarAdr PyEnv) => PyStm -> m PyCmp
callComponent bdy = CallCmp bdy <$> getEnv

loopComponent :: (EnvM m VarAdr PyEnv) => PyExp -> PyStm -> m PyCmp
loopComponent cnd bdy = LoopCmp cnd bdy <$> getEnv

env :: PyCmp -> PyEnv
env (MainCmp _) = initialEnv
env (LoopCmp _ _ env) = env
env (CallCmp _ env) = env

run :: PyM m obj => PyCmp -> m PyVal
run (MainCmp prg) = exec (programStmt prg) $> constant None
run (LoopCmp cnd bdy _) = cond (eval cnd >>= isTrue)
                               (exec bdy >> callWhi cnd bdy)
                               (return $ constant None)
run (CallCmp bdy _) = exec bdy $> constant None

---
--- Python dependencies
---

data PyDep = VarDep VarAdr
           | ObjDep ObjAdr
           | RetDep PyCmp
    deriving (Eq, Ord, Show)

instance StoreDep ObjAdr PyDep where
    dep = ObjDep
instance StoreDep VarAdr PyDep where
    dep = VarDep
instance StoreDep PyCmp PyDep where
    dep = RetDep

instance (Monad m,
          EnvM m VarAdr PyEnv,
          ComponentTrackingM m PyCmp,
          MonadJoin m,
          MonadCache m,
          ResultM m PyCmp (Cache m PyVal)) => PyCache m where
  callBdy = callComponent >=> call 
  callWhi cnd bdy = loopComponent cnd bdy >>= call

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

type AnalysisM m obj = (PyObj' obj, 
                        StoreM m VarAdr PyVal,
                        StoreM m ObjAdr obj,
                        ResultM m PyCmp (MayEscape (Set PyEsc) PyVal),
                        ComponentTrackingM m PyCmp,
                        DependencyTrackingM m PyCmp PyDep,
                        WorkListM m PyCmp)


--intra :: forall m obj . AnalysisM m obj => PyCmp -> m () 
intra cmp = void $ save cmp (run cmp) 
                    & runMayEscape @(Set PyEsc)
                    & runAlloc (const . allocPtr)
                    & runCtx ()
                    & runEnv (env cmp)
                    & runJoinT
                    & runCacheT
                    & runIntraAnalysis cmp

--inter :: forall m obj . AnalysisM m obj => PyPrg -> m () 
inter prg = do init                   -- initialize Python infrastructure
               add (MainCmp prg)      -- add the main component to the worklist
               iterateWL intra        -- start the analysis 

analyze :: forall obj. PyObj' obj => PyPrg -> (Map VarAdr PyVal, Map ObjAdr obj)
analyze prg =
    let ((_,vsto),osto) = inter prg
                            & runWithStore @(Map VarAdr PyVal) @VarAdr
                            & runWithStore @(Map ObjAdr obj) @ObjAdr
                            & runWithResultMap @PyCmp
                            & runWithDependencyTracking @PyCmp @PyDep
                            & runWithComponentTracking @PyCmp
                            & runWithWorkList @(Set PyCmp)
                            & runIdentity
     in (vsto, osto)

---
--- CP instantiation
---

type PyObjCP' = PyObjCP PyVal ObjAdr PyClo

analyzeCP :: PyPrg -> (Map VarAdr PyVal, Map ObjAdr PyObjCP')
analyzeCP = analyze @PyObjCP'