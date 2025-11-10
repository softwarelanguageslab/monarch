{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Analysis.Python.Fixpoint.TaintTracked where

import Lattice
import Lattice.Tainted (Tainted(..))
import Analysis.Python.Common
import Domain.Python.Objects as PyObj  
import Analysis.Python.Semantics.Class hiding (call)
import Analysis.Python.Semantics.TaintTracked ()
import Analysis.Python.Monad.Class
import Analysis.Python.Objects
import Analysis.Monad hiding (eval, call)
import Analysis.Python.Monad.TaintTracked

import Domain.Python.Syntax

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import Prelude hiding (init, read)
import Data.Function ((&))
import Analysis.Python.Escape
import Analysis.Monad.Stack
import Analysis.Monad.Call
import qualified Control.Monad.Join as MJoin
import Control.Monad.Identity
import Control.Monad.IO.Class
import Control.Monad
import qualified Lattice.BottomLiftedLattice as BL

import Data.Maybe
import Data.Typeable
import Data.Graph
import Analysis.Store (CountingMap)
import Data.Foldable (traverse_)
import Analysis.Python.Diagnostics

type PyCtx = [PyLoc]
type Store obj = CountingMap ObjAdr obj

type IntraT obj m  = MonadStack '[
                        MayEscapeTaintedT Taint (Set (PyEsc PyRefTaint)),
                        AllocT PyLoc PyCtx ObjAdr, 
                        EnvT PyEnv,
                        CtxT PyCtx,
                        CacheT,
                        TaintT Taint,
                        StoreT (Store obj) ObjAdr obj,
                        JoinT
                    ] m 

type IntraT' obj m = IntraT obj (IntraAnalysisT PyCmp m)    -- needed to avoid cycles in IntraT type synonym

type AnalysisM m obj = (PyDomain obj PyRefTaint,
                        MapM PyCmp PyRes m,
                        MapM PyCmpTaint Taint m,
                        MapM PyCmpStoreIn (Store obj) m,
                        MapM PyCmpStoreOut (Store obj) m,
                        ComponentTrackingM m PyCmp,
                        MonadDependencyTracking PyCmp ObjAdr m,
                        MonadDependencyTracking PyCmp PyCmp m,
                        MonadDependencyTracking PyCmp PyCmpTaint m,
                        MonadDependencyTracking PyCmp PyCmpStoreIn m,
                        MonadDependencyTracking PyCmp PyCmpStoreOut m,
                        MonadReport (DiagnosticType PyRefTaint) m,
                        GraphM (CP String) (CP Bool) m,
                        WorkListM m PyCmp,
                        Typeable obj,
                        Show obj)

newtype PyCmpTaint = PyCmpTaint PyCmp
    deriving (Eq, Ord, Show)
newtype PyCmpStoreIn = PyCmpStoreIn PyCmp
    deriving (Eq, Ord, Show)
newtype PyCmpStoreOut = PyCmpStoreOut PyCmp
    deriving (Eq, Ord, Show)

type PyCmp = Key (IntraT () Identity) PyBdy
type PyRes = Val (IntraT () Identity) PyRefTaint  

intra :: forall obj m . AnalysisM m obj => PyCmp -> m ()
intra cmp = m 
                & runIntraAnalysis cmp 
    where m = do t <- fromJust <$> Analysis.Monad.get (PyCmpTaint cmp)
                 s <- fromJust <$> Analysis.Monad.get (PyCmpStoreIn cmp)
                 r <- cache' cmp (\bdy -> evalBdy bdy 
                                            & runPythonTaintAnalysisT
                                            & runCallT (uncurry callFix))
                        & runAlloc allocPtr
                        & runWithTaint t 
                        & runStoreT s 
                        & runJoinT
                 case r of 
                    BL.Bottom        -> return ()
                    BL.Value (_, s') -> Analysis.Monad.joinWith (PyCmpStoreOut cmp) s'
          callFix :: PyLoc -> PyBdy -> IntraT' obj m PyRefTaint
          callFix _ bdy = do cmp' <- key bdy
                             spawn cmp' 
                             Analysis.Monad.joinWith (PyCmpTaint cmp') =<< currentTaint 
                             changed <- Analysis.Monad.joinWith' (PyCmpStoreIn cmp') =<< currentStore
                             rv <- cached cmp'
                             rs <- Analysis.Monad.get (PyCmpStoreOut cmp')
                             if changed 
                             then MJoin.mbottom 
                             else do v <- maybe MJoin.mbottom return rv
                                     s <- maybe MJoin.mbottom return rs 
                                     putStore s 
                                     return v 

inter :: forall obj m . AnalysisM m obj => PyPrg -> m (Store obj)
inter prg = do let cmp = ((Main prg, initialEnv), [])
               add cmp                                                             -- add the main component to the worklist
               Analysis.Monad.put (PyCmpTaint cmp) mempty 
               Analysis.Monad.put (PyCmpStoreIn cmp) =<< initialStore
               iterateWL (intra @obj)                                              -- start the analysis 
               Analysis.Monad.getOrBot (PyCmpStoreOut cmp)

type PyTaintDiagnostic = Diagnostic (DiagnosticType PyRefTaint)

analyze :: forall obj . (Typeable obj, Show obj, PyDomain obj PyRefTaint) => PyPrg -> (Map PyCmp PyRes, Store obj, SimpleGraph (CP String) (CP Bool), Set PyTaintDiagnostic)
analyze prg = (rsto, osto, graph, reports)
    where (((osto, graph), rsto), reports) = inter @obj prg
                                    & runWithGraph @(SimpleGraph (CP String) (CP Bool))
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
                                    & runReportT @(DiagnosticType PyRefTaint)
                                    & runIdentity
                                    

initialStore :: forall m obj . AnalysisM m obj => m (Store obj)
initialStore = snd <$> runWithStore @(Store obj) @ObjAdr @obj init

analyzeREPL :: forall obj . (PyDomain obj PyRefTaint, Typeable obj, Show obj)
    => IO PyPrg         -- a read function
    -> (obj -> IO ())   -- a display function
    -> IO ()
analyzeREPL read display = 
    void $ (initialStore >>= putStore >> repl) 
            & runWithGraph @(SimpleGraph (CP String) (CP Bool))
            & runWithMapping' @PyCmpStoreIn
            & runWithMapping' @PyCmpStoreOut
            & runWithStore @(Store obj) @ObjAdr
            & runWithMapping' @PyCmp @PyRes 
            & runWithMapping' @PyCmpTaint 
            & runWithDependencyTracking @PyCmp @ObjAdr
            & runWithDependencyTracking @PyCmp @PyCmp
            & runWithDependencyTracking @PyCmp @PyCmpTaint
            & runWithDependencyTracking @PyCmp @PyCmpStoreIn 
            & runWithDependencyTracking @PyCmp @PyCmpStoreOut 
            & runWithComponentTracking @PyCmp
            & runReportT @(DiagnosticType PyRefTaint)
            & runWithWorkList @(Set PyCmp)
    where repl = forever $ do prg <- addImplicitReturn <$> liftIO read
                              let cmp = ((Main prg, initialEnv), [])
                              add cmp 
                              Analysis.Monad.put (PyCmpTaint cmp) mempty
                              Analysis.Monad.put (PyCmpStoreIn cmp) =<< currentStore
                              iterateWL (intra @obj)
                              putStore =<< Analysis.Monad.getOrBot (PyCmpStoreOut cmp)
                              res <- fromJust <$> Analysis.Monad.get @PyCmp @PyRes cmp 
                              traverse_ ((\(Tainted s _) -> mapM lookupAdr (Set.toList (addrs s))) >=> liftIO . display . joins1) res 

--
-- Extract information from components
-- 

locOfCmp :: PyCmp -> Maybe PyLoc
locOfCmp ((Main _, _), _) = Nothing
locOfCmp ((LoopBdy loc _ _, _), _) = Just loc
locOfCmp ((FuncBdy loc _, _), _) = Just loc

---
--- CP instantiation
---

type PyDomainCP = PyObjCP PyRefTaint ObjAdr PyClo

analyzeCP :: PyPrg -> (Map PyCmp PyRes, Store PyDomainCP, SimpleGraph (CP String) (CP Bool), Set PyTaintDiagnostic)
analyzeCP = analyze @PyDomainCP
