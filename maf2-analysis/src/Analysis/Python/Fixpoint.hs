{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Analysis.Python.Fixpoint where

import Lattice
import Lattice.Tainted (Tainted(..))
import Analysis.Python.Common
import Domain.Python.Objects as PyObj  
import Analysis.Python.Semantics hiding (call)
import Analysis.Python.Monad
import Analysis.Python.Objects
import Analysis.Monad hiding (eval, call)

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

---
--- Python analysis fixpoint algorithm
---

type Store obj = CountingMap ObjAdr obj

type IntraT obj m  = MonadStack '[
                        MayEscapeTaintedT Taint (Set (PyEsc PyRef)),
                        AllocT PyLoc [PyLoc] ObjAdr, 
                        EnvT PyEnv,
                        CtxT [PyLoc],
                        CacheT,
                        TaintT Taint,
                        StoreT (Store obj) ObjAdr obj,
                        JoinT
                    ] m 

type IntraT' obj m = IntraT obj (IntraAnalysisT PyCmp m)    -- needed to avoid cycles in IntraT type synonym

type AnalysisM m obj = (PyDomain obj PyRef,
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
type PyRes = Val (IntraT () Identity) PyRef  

intra :: forall obj m . AnalysisM m obj => PyCmp -> m ()
intra cmp = runIntraAnalysis cmp m
    where m = do t <- fromJust <$> Analysis.Monad.get (PyCmpTaint cmp)
                 s <- fromJust <$> Analysis.Monad.get (PyCmpStoreIn cmp)
                 r <- cache cmp (runCallT (uncurry callFix) . evalBdy)
                        & runAlloc allocPtr
                        & runWithTaint t 
                        & runStoreT s 
                        & runJoinT
                 case r of 
                    BL.Value (_, s') -> Analysis.Monad.put (PyCmpStoreOut cmp) s'
                    _                -> return ()
          callFix :: PyLoc -> PyBdy -> IntraT' obj m PyRef
          callFix _ bdy = do cmp' <- key bdy
                             spawn cmp' 
                             Analysis.Monad.joinWith (PyCmpTaint cmp') =<< currentTaint 
                             changed <- Analysis.Monad.joinWith' (PyCmpStoreIn cmp') =<< currentStore
                             if changed
                             then MJoin.mbottom 
                             else do rv <- cached cmp'
                                     rs <- Analysis.Monad.get (PyCmpStoreOut cmp')
                                     v <- maybe MJoin.mbottom return rv
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

analyze :: forall obj . (Typeable obj, Show obj, PyDomain obj PyRef) => PyPrg -> (Map PyCmp PyRes, Store obj, SimpleGraph (CP String) (CP Bool))
analyze prg = (rsto, osto, graph)
    where ((osto, graph), rsto) = inter @obj prg
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
                                    & runIdentity

initialStore :: forall m obj . AnalysisM m obj => m (Store obj)
initialStore = snd <$> runWithStore @(Store obj) @ObjAdr @obj init

analyzeREPL :: forall obj . (PyDomain obj PyRef, Typeable obj, Show obj)
    => IO PyPrg         -- a read function
    -> (obj -> IO ())   -- a display function
    -> IO ()
analyzeREPL read display = 
    void $ (initialStore >>= repl) 
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
            & runWithWorkList @(Set PyCmp)
    where repl sto = do prg <- addImplicitReturn <$> liftIO read
                        let cmp = ((Main prg, initialEnv), [])
                        add cmp 
                        Analysis.Monad.put (PyCmpTaint cmp) mempty
                        Analysis.Monad.put (PyCmpStoreIn cmp) sto
                        iterateWL (intra @obj)
                        res <- fromJust <$> Analysis.Monad.get @PyCmp @PyRes cmp 
                        upd <- Analysis.Monad.getOrBot (PyCmpStoreOut cmp)
                        putStore upd
                        traverse_ ((\(Tainted s _) -> mapM lookupAdr (Set.toList (addrs s))) >=> liftIO . display . joins1) res
                        repl upd

---
--- CP instantiation
---

type PyDomainCP = PyObjCP PyRef ObjAdr PyClo

analyzeCP :: PyPrg -> (Map PyCmp PyRes, Store PyDomainCP, SimpleGraph (CP String) (CP Bool))
analyzeCP = analyze @PyDomainCP

