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

instance (Joinable e,
          EnvM m VarAdr PyEnv,
          ComponentTrackingM m PyCmp,
          StoreM m PyCmp (MayEscape e PyVal)) => PyCache (MayEscapeT e m) where
  callBdy = callComponent >=> MayEscapeT . call
  callWhi cnd bdy = loopComponent cnd bdy >>= MayEscapeT . call

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

intra cmp = runIntraAnalysis cmp $ do res <- run cmp
                                                & runMayEscape
                                                & runAlloc (const . allocPtr)
                                                & runCtx ()
                                                & runEnv (env cmp)
                                                & runJoinT
                                      writeAdr cmp res

inter prg = do init                   -- initialize Python infrastructure
               add (MainCmp prg)      -- add the main component to the worklist
               iterateWL intra        -- start the analysis 

analyze :: forall obj. PyObj' obj => PyPrg -> (Map VarAdr PyVal, Map ObjAdr obj)
analyze prg =
    let (((_,vsto),osto),rsto) = inter prg
                                    & runWithStore @(Map VarAdr PyVal) @VarAdr
                                    & runWithStore @(Map ObjAdr obj) @ObjAdr
                                    & runWithStore @(Map PyCmp (MayEscape (Set PyEsc) PyVal)) @PyCmp
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