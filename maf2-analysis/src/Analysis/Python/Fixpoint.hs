{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Analysis.Python.Fixpoint where

import Lattice
import Analysis.Python.Common
import Domain.Python.Objects as PyObj  
import Analysis.Python.Semantics hiding (call)
import Analysis.Python.Monad
import Analysis.Python.Objects
import Analysis.Monad hiding (eval, call)

import Domain.Python.Syntax

import Data.Set (Set)
import Data.Map (Map)
import Prelude hiding (init, read)
import Data.Function ((&))
import Analysis.Python.Escape
import Analysis.Monad.Stack
import Analysis.Monad.Call
import qualified Control.Monad.Join as MJoin
import Control.Monad.Identity

import Data.Maybe
import Data.Graph
import Analysis.Store (CountingMap)

---
--- Python analysis fixpoint algorithm
---

type Store obj = CountingMap ObjAdr obj

type IntraT obj m  = MonadStack '[
                        MayEscapeTaintedT Taint (Set (PyEsc PyRef)),
                        AllocT PyLoc [PyLoc] ObjAdr, 
                        EnvT PyEnv,
                        CtxT [PyLoc],
                        JoinT,
                        CacheT,
                        TaintT Taint,
                        StoreT (Store obj) ObjAdr obj 
                    ] m 

type IntraT' obj m = IntraT obj (IntraAnalysisT PyCmp m)    -- needed to avoid cycles in IntraT type synonym

type AnalysisM m obj = (PyDomain obj PyRef,
                        MapM PyCmp PyRes m,
                        MapM PyCmpTaint Taint m,
                        MapM PyCmpStoreIn (Store obj) m,
                        MapM PyCmpStoreOut (Store obj) m,
                        ComponentTrackingM m PyCmp,
                        DependencyTrackingM m PyCmp ObjAdr,
                        DependencyTrackingM m PyCmp PyCmp,
                        DependencyTrackingM m PyCmp PyCmpTaint,
                        DependencyTrackingM m PyCmp PyCmpStoreIn,
                        DependencyTrackingM m PyCmp PyCmpStoreOut,
                        GraphM (CP String) () m,
                        WorkListM m PyCmp)

newtype PyCmpTaint = PyCmpTaint PyCmp
    deriving (Eq, Ord, Show)
newtype PyCmpStoreIn = PyCmpStoreIn PyCmp
    deriving (Eq, Ord, Show)
newtype PyCmpStoreOut = PyCmpStoreOut PyCmp
    deriving (Eq, Ord, Show)


type PyCmp = Key (IntraT () Identity) PyBdy
type PyRes = Val (IntraT () Identity) PyRef  

intra :: forall obj m . AnalysisM m obj => PyCmp -> m ()
intra cmp = runIntraAnalysis cmp m
    where m = do t <- fromJust <$> Analysis.Monad.get (PyCmpTaint cmp)
                 s <- fromJust <$> Analysis.Monad.get (PyCmpStoreIn cmp)
                 ((),s') <- cache cmp (runCallT (uncurry callFix) . evalBdy)
                                & runAlloc allocPtr
                                & runWithTaint t 
                                & runStoreT s 
                 Analysis.Monad.put (PyCmpStoreOut cmp) s'
          callFix :: PyLoc -> PyBdy -> IntraT' obj m PyRef
          callFix _ bdy = do cmp' <- key bdy
                             Analysis.Monad.joinWith (PyCmpTaint cmp')   =<< currentTaint 
                             Analysis.Monad.joinWith (PyCmpStoreIn cmp') =<< currentStore
                             spawn cmp'
                             rv <- cached cmp'
                             rs <- Analysis.Monad.get (PyCmpStoreOut cmp')
                             v <- maybe MJoin.mzero return rv
                             s <- maybe MJoin.mzero return rs 
                             putStore s
                             return v 

inter :: forall obj m . AnalysisM m obj => PyPrg -> m (Store obj)
inter prg = do ((), initialStore) <- runWithStore @(Store obj) @ObjAdr @obj init   -- initialize Python infrastructure                              
               let cmp = ((Main prg, initialEnv), [])
               add cmp                                                  -- add the main component to the worklist
               Analysis.Monad.put (PyCmpTaint cmp) mempty 
               Analysis.Monad.put (PyCmpStoreIn cmp) initialStore
               iterateWL (intra @obj)                                   -- start the analysis 
               Analysis.Monad.getOrBot (PyCmpStoreOut cmp)

analyze :: forall obj . PyDomain obj PyRef => PyPrg -> (Map PyCmp PyRes, Store obj, SimpleGraph (CP String) ())
analyze prg = (rsto, osto, graph)
    where ((osto, graph), rsto) = inter @obj prg
                                    & runWithGraph @(SimpleGraph (CP String) ())
                                    & runWithMapping' @PyCmpStoreIn
                                    & runWithMapping' @PyCmpStoreOut 
                                    & runWithMapping @PyCmp
                                    & runWithMapping' @PyCmpTaint
                                    & runWithDependencyTracking @PyCmp @ObjAdr
                                    & runWithDependencyTracking @PyCmp @PyCmp
                                    & runWithDependencyTracking @PyCmp @PyCmpTaint 
                                    & runWithDependencyTracking @PyCmp @PyCmpStoreIn 
                                    & runWithDependencyTracking @PyCmp @PyCmpStoreOut
                                    & runWithComponentTracking @PyCmp
                                    & runWithWorkList @(Set PyCmp)
                                    & runIdentity

-- analyzeREPL :: forall obj . PyDomain obj PyRef
--     => IO PyPrg         -- a read function
--     -> (obj -> IO ())   -- a display function
--     -> IO ()
-- analyzeREPL read display = 
--     void $ (init >> repl) 
--             & runWithStore @(Map ObjAdr obj) @ObjAdr
--             & runWithMapping' @PyCmp @PyRes 
--             & runWithMapping' @PyCmpTaint 
--             & runWithDependencyTracking @PyCmp @ObjAdr
--             & runWithDependencyTracking @PyCmp @PyCmp
--             & runWithDependencyTracking @PyCmp @PyCmpTaint 
--             & runWithComponentTracking @PyCmp
--             & runWithWorkList @(Set PyCmp)
--             & runWithGraph @(SimpleGraph (CP String) ())
--     where repl = forever $ do prg <- addImplicitReturn <$> liftIO read
--                               let cmp = ((Main prg, initialEnv), [])
--                               add cmp 
--                               Analysis.Monad.put (PyCmpTaint cmp) mempty
--                               iterateWL intra 
--                               res <- justOrBot <$> Analysis.Monad.get @PyCmp @PyRes cmp 
--                               traverse ((\(Tainted s _) -> mapM lookupAdr (Set.toList (addrs s))) >=> liftIO . display . joins) res

---
--- CP instantiation
---

type PyDomainCP = PyObjCP PyRef ObjAdr PyClo

analyzeCP :: PyPrg -> (Map PyCmp PyRes, Store PyDomainCP, SimpleGraph (CP String) ())
analyzeCP = analyze @PyDomainCP
