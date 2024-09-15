{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Analysis.Python.Fixpoint where

import Lattice
import Analysis.Python.Common
import Domain.Python.Objects as PyObj  
import Analysis.Python.Semantics hiding (call)
import Analysis.Python.Monad
import Analysis.Python.Objects
import Analysis.Monad hiding (eval, call)
import Analysis.Monad.ComponentTracking hiding (has)

import Domain.Python.Syntax

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import Prelude hiding (init, read)
import Control.Monad.Reader
import Control.Monad.Escape
import Data.Function ((&))
import Analysis.Python.Escape
import Analysis.Monad.Stack
import Analysis.Monad.Call
import qualified Control.Monad.Join as MJoin
import Control.Monad.Identity

---
--- Python analysis fixpoint algorithm
---

type IntraT m = MonadStack '[
                    MayEscapeT (Set (PyEsc PyRef)),
                    EnvT PyEnv,
                    CtxT (),
                    JoinT,
                    CacheT
                ] m 

type IntraT' m = IntraT (IntraAnalysisT PyCmp m)    -- needed to avoid cycles in IntraT type synonym

type AnalysisM m obj = (PyDomain obj PyRef,
                        StoreM m ObjAdr obj,
                        MapM PyCmp PyRes m,
                        MapM PyCmpTaint () m,
                        ComponentTrackingM m PyCmp,
                        DependencyTrackingM m PyCmp ObjAdr,
                        DependencyTrackingM m PyCmp PyCmp,
                        DependencyTrackingM m PyCmp PyCmpTaint,
                        WorkListM m PyCmp)

newtype PyCmpTaint = PyCmpTaint PyCmp
    deriving (Eq, Ord)

type PyCmp = Key (IntraT Identity) PyBdy
type PyRes = Val (IntraT Identity) PyRef  

intra :: forall m obj . AnalysisM m obj => PyCmp -> m ()
intra cmp = runIntraAnalysis cmp m 
    where m = do t <- justOrBot <$> Analysis.Monad.get (PyCmpTaint cmp)
                 cache cmp $ runCallT callFix . runAlloc (const . allocPtr) . runWithTaint t . evalBdy
          callFix :: PyBdy -> IntraT' m PyRef
          callFix bdy = do k <- key bdy
                           spawn k
                           Analysis.Monad.put (PyCmpTaint k) () 
                           r <- cached k
                           maybe MJoin.mzero return r

inter :: forall m obj . AnalysisM m obj => PyPrg -> m () 
inter prg = do init                                 -- initialize Python infrastructure
               add ((Main prg, initialEnv), ())     -- add the main component to the worklist
               iterateWL intra                      -- start the analysis 

analyze :: forall obj . PyDomain obj PyRef => PyPrg -> (Map PyCmp PyRes, Map ObjAdr obj)
analyze prg = (rsto, osto)
    where ((_,osto),rsto) = inter prg
                                & runWithStore @(Map ObjAdr obj) @ObjAdr
                                & runWithMapping @PyCmp
                                & runWithMapping' @PyCmpTaint
                                & runWithDependencyTracking @PyCmp @ObjAdr
                                & runWithDependencyTracking @PyCmp @PyCmp
                                & runWithDependencyTracking @PyCmp @PyCmpTaint 
                                & runWithComponentTracking @PyCmp
                                & runWithWorkList @(Set PyCmp)
                                & runIdentity

analyzeREPL :: forall obj . PyDomain obj PyRef
    => IO PyPrg         -- a read function
    -> (obj -> IO ())   -- a display function
    -> IO ()
analyzeREPL read display = 
    void $ (init >> repl) 
            & runWithStore @(Map ObjAdr obj) @ObjAdr
            & runWithMapping' @PyCmp @PyRes 
            & runWithMapping' @PyCmpTaint 
            & runWithDependencyTracking @PyCmp @ObjAdr
            & runWithDependencyTracking @PyCmp @PyCmp
            & runWithDependencyTracking @PyCmp @PyCmpTaint 
            & runWithComponentTracking @PyCmp
            & runWithWorkList @(Set PyCmp)
    where repl = forever $ do prg <- addImplicitReturn <$> liftIO read
                              let cmp = ((Main prg, initialEnv), ())
                              add cmp 
                              iterateWL intra 
                              res <- justOrBot <$> Analysis.Monad.get @PyCmp @PyRes cmp 
                              traverse (mapM lookupAdr . Set.toList . addrs >=> liftIO . display . joins) res

---
--- CP instantiation
---

type PyDomainCP = PyObjCP PyRef ObjAdr PyClo

analyzeCP :: PyPrg -> (Map PyCmp (MayEscape (Set (PyEsc PyRef)) PyRef), Map ObjAdr PyDomainCP)
analyzeCP = analyze @PyDomainCP
