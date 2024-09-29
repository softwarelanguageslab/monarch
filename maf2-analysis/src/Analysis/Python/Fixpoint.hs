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
import Domain.Core.TaintDomain
import qualified Domain.Core.TaintDomain as Taint 

import Data.Maybe
import Lattice.Tainted (Tainted(..))
import qualified Debug.Trace as Debug
import Data.Graph

---
--- Python analysis fixpoint algorithm
---

type IntraT m = MonadStack '[
                    MayEscapeTaintedT Taint (Set (PyEsc PyRef)),
                    AllocT PyLoc [PyLoc] ObjAdr, 
                    EnvT PyEnv,
                    CtxT [PyLoc],
                    JoinT,
                    CacheT,
                    TaintT Taint 
                ] m 

type IntraT' m = IntraT (IntraAnalysisT PyCmp m)    -- needed to avoid cycles in IntraT type synonym

type AnalysisM m obj = (PyDomain obj PyRef,
                        StoreM ObjAdr obj m,
                        MapM PyCmp PyRes m,
                        MapM PyCmpTaint Taint m,
                        ComponentTrackingM m PyCmp,
                        DependencyTrackingM m PyCmp ObjAdr,
                        DependencyTrackingM m PyCmp PyCmp,
                        DependencyTrackingM m PyCmp PyCmpTaint,
                        GraphM (CP String) () m,
                        WorkListM m PyCmp)

newtype PyCmpTaint = PyCmpTaint PyCmp
    deriving (Eq, Ord)

type PyCmp = Key (IntraT Identity) PyBdy
type PyRes = Val (IntraT Identity) PyRef  

-- TODO: parameterize this
k :: Int
k = 10

intra :: forall m obj . AnalysisM m obj => PyCmp -> m ()
intra cmp = runIntraAnalysis cmp m 
    where m = do t <- fromJust <$> Analysis.Monad.get (PyCmpTaint cmp)
                 cache cmp (runCallT (uncurry callFix) . evalBdy)
                    & runAlloc allocPtr
                    & runWithTaint t 
          callFix :: PyLoc -> PyBdy -> IntraT' m PyRef
          callFix loc bdy = do cmp' <- key bdy
                               spawn cmp'
                               Analysis.Monad.put (PyCmpTaint cmp') =<< currentTaint 
                               r <- cached cmp'
                               maybe MJoin.mzero return r

inter :: forall m obj . AnalysisM m obj => PyPrg -> m () 
inter prg = do init                                 -- initialize Python infrastructure
               let cmp = ((Main prg, initialEnv), [])
               add cmp                              -- add the main component to the worklist
               Analysis.Monad.put (PyCmpTaint cmp) mempty 
               iterateWL intra                      -- start the analysis 

analyze :: forall obj . PyDomain obj PyRef => PyPrg -> (Map PyCmp PyRes, Map ObjAdr obj, SimpleGraph (CP String) ())
analyze prg = (rsto, osto, graph)
    where (((_, graph),osto),rsto) = inter prg
                                        & runWithGraph @(SimpleGraph (CP String) ())
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
            & runWithGraph @(SimpleGraph (CP String) ())
    where repl = forever $ do prg <- addImplicitReturn <$> liftIO read
                              let cmp = ((Main prg, initialEnv), [])
                              add cmp 
                              Analysis.Monad.put (PyCmpTaint cmp) mempty
                              iterateWL intra 
                              res <- justOrBot <$> Analysis.Monad.get @PyCmp @PyRes cmp 
                              traverse ((\(Tainted s _) -> mapM lookupAdr (Set.toList (addrs s))) >=> liftIO . display . joins) res

---
--- CP instantiation
---

type PyDomainCP = PyObjCP PyRef ObjAdr PyClo

analyzeCP :: PyPrg -> (Map PyCmp (MayEscape PyRet PyRef), Map ObjAdr PyDomainCP, SimpleGraph (CP String) ())
analyzeCP = analyze @PyDomainCP
