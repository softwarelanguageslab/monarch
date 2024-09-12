{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Analysis.Python.Fixpoint where

import Lattice
import Analysis.Python.Common
import Domain.Python.Objects (PyObjCP)
import Domain.Python.Objects as PyObj  
import Domain.Python.World
import Analysis.Python.Semantics hiding (call)
import Analysis.Python.Monad
import Analysis.Python.Objects
import Analysis.Monad hiding (eval, call)
import Analysis.Monad.ComponentTracking hiding (has)

import Domain.Python.Syntax
import Domain hiding (isTrue)

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import Prelude hiding (init, read)
import Control.Monad.Reader
import Control.Monad.Identity
import Control.Monad.Escape
import Data.Function ((&))
import Analysis.Python.Escape
import Analysis.Monad.Stack

---
--- Python analysis fixpoint algorithm
---

type IntraT m vlu = MonadStack '[
                        MayEscapeT (Set (PyEsc vlu)),
                        AllocT PyLoc () ObjAdr,
                        EnvT PyEnv,
                        CtxT (),
                        JoinT,
                        CacheT
                    ] m 

type AnalysisM m obj vlu = (vlu ~ ObjAddrSet,
                            PyDomain obj vlu, 
                            StoreM m ObjAdr obj,
                            MapM (PyCmp vlu) (PyRes vlu) m,
                            ComponentTrackingM m  (PyCmp vlu),
                            DependencyTrackingM m (PyCmp vlu) ObjAdr,
                            DependencyTrackingM m (PyCmp vlu) (PyCmp vlu),
                            WorkListM m (PyCmp vlu))

type PyCmp vlu = Key (IntraT Identity vlu) PyBdy
type PyRes vlu = Val (IntraT Identity vlu) vlu 

intra :: forall m obj vlu . AnalysisM m obj vlu => PyCmp vlu -> m ()
intra cmp = cache @(IntraT (IntraAnalysisT (PyCmp vlu) m) vlu) cmp evalBdy
                & runAlloc (const . allocPtr)
                & runIntraAnalysis cmp 
                

inter :: forall m obj vlu . AnalysisM m obj vlu => PyPrg -> m () 
inter prg = do init                                 -- initialize Python infrastructure
               add ((Main prg, initialEnv), ())     -- add the main component to the worklist
               iterateWL intra                      -- start the analysis 

analyze :: forall obj . PyDomain obj ObjAddrSet => PyPrg -> (Map (PyCmp ObjAddrSet) (PyRes ObjAddrSet), Map ObjAdr obj)
analyze prg = (rsto, osto)
    where ((_,osto),rsto) = inter prg
                                & runWithStore @(Map ObjAdr obj) @ObjAdr
                                & runWithMapping @(PyCmp ObjAddrSet)
                                & runWithDependencyTracking @(PyCmp ObjAddrSet) @ObjAdr
                                & runWithDependencyTracking @(PyCmp ObjAddrSet) @(PyCmp ObjAddrSet)
                                & runWithComponentTracking @(PyCmp ObjAddrSet)
                                & runWithWorkList @(Set (PyCmp ObjAddrSet))
                                & runIdentity

analyzeREPL :: forall obj . PyDomain obj ObjAddrSet
    => IO PyPrg         -- a read function
    -> (obj -> IO ())   -- a display function
    -> IO ()
analyzeREPL read display = 
    void $ (init >> repl) 
            & runWithStore @(Map ObjAdr obj) @ObjAdr
            & runWithMapping @(PyCmp ObjAddrSet)
            & runWithDependencyTracking @(PyCmp ObjAddrSet) @ObjAdr
            & runWithDependencyTracking @(PyCmp ObjAddrSet) @(PyCmp ObjAddrSet)
            & runWithComponentTracking @(PyCmp ObjAddrSet)
            & runWithWorkList @(Set (PyCmp ObjAddrSet))
    where repl = forever $ do prg <- addImplicitReturn <$> liftIO read
                              let cmp = ((Main prg, initialEnv), ())
                              add cmp 
                              iterateWL intra 
                              res <- justOrBot <$> Analysis.Monad.get cmp 
                              traverse (mapM lookupAdr . Set.toList . addrs >=> liftIO . display . joins) res

---
--- CP instantiation
---

type PyDomainCP = PyObjCP ObjAddrSet ObjAdr PyClo

analyzeCP :: PyPrg -> (Map (PyCmp ObjAddrSet) (MayEscape (Set (PyEsc ObjAddrSet)) ObjAddrSet), Map ObjAdr PyDomainCP)
analyzeCP = analyze @PyDomainCP
