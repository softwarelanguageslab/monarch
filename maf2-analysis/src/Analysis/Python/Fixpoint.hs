{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

{-# OPTIONS_GHC -Wno-orphans #-}

module Analysis.Python.Fixpoint where

import Analysis.Python.Common
import Domain.Python.Syntax

import Control.Monad.Writer (WriterT (..), MonadWriter, tell)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.Layer
import Control.Monad.Trans
import Analysis.Python.Monad
import Prelude hiding (init, read)
import Control.Monad.Reader
import Control.Monad.State
import Control.Fixpoint.WorkList (WorkList)
import qualified Control.Fixpoint.WorkList as WL
import Lattice (justOrBot, JoinLattice)
import Analysis.Monad hiding (eval, call)
import Control.Monad.Cond (whenM, ifM, unlessM)
import Control.Monad.Identity
import Analysis.Python.Objects

import Analysis.Store
import Data.Maybe (fromMaybe)
import Data.Functor (($>))
import Domain.Python.Objects (PyObj, PyObjCP)
import Domain.Python.World
import Analysis.Python.Semantics hiding (call)
import Control.Monad.Join

import qualified Control.Monad as M

import qualified Analysis.Environment as Env
import qualified Data.Bifunctor as Bi
import Control.Monad.Escape
import Lattice
import Control.Monad.DomainError
import Data.Function ((&))
import Domain hiding (isTrue)
import Analysis.Monad.ComponentTracking

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

type PyAnalysisM m obj = (PyObj' obj,
                          StoreM m ObjAdr obj,
                          StoreM m VarAdr PyVal,
                          StoreM m PyCmp (MayEscape (Set PyEsc) PyVal),
                          DependencyTrackingM m PyCmp PyDep,
                          ComponentTrackingM m PyCmp,
                          WorkListM m PyCmp)

intra :: PyAnalysisM m obj => PyCmp -> m ()
intra cmp = runIntraAnalysis cmp $ do res <- run cmp
                                                & runMayEscape
                                                & runAlloc (const . allocPtr)
                                                & runCtx ()
                                                & runEnv (env cmp)
                                                & runJoinT
                                      writeAdr cmp res

inter :: PyAnalysisM m obj => PyPrg -> m ()
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
