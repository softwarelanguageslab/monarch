{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}


module Analysis.Python.Fixpoint.Characteristics where

import Lattice
import Analysis.Python.Common
import Domain.Python.Objects as PyObj  
import Analysis.Python.Semantics.Class hiding (call)
import Analysis.Python.Semantics.Characteristics ()
import Analysis.Python.Monad.Class
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

import Control.Monad.Escape (MayEscapeT)
import Analysis.Python.Monad.Characteristics
import Analysis.Monad.FunctionCharacteristics (runWithCharacteristics, CharacteristicsM, CharacteristicsMap)

---
--- Python analysis fixpoint algorithm
---

type Store obj = CountingMap ObjAdr obj

type IntraT obj m  = MonadStack '[
                        MayEscapeT (Set (PyEsc PyRef)),
                        AllocT PyLoc [PyLoc] ObjAdr,
                        EnvT PyEnv,
                        CtxT [PyLoc],
                        CacheT,
                        StoreT (Store obj) ObjAdr obj,
                        JoinT
                    ] m

type IntraT' obj m = IntraT obj (IntraAnalysisT PyCmp m)    -- needed to avoid cycles in IntraT type synonym

type AnalysisM m obj = (CharacteristicsM PyLoc m,
                        PyDomain obj PyRef,
                        MapM PyCmp PyRes m,
                        MapM PyCmpStoreIn (Store obj) m,
                        MapM PyCmpStoreOut (Store obj) m,
                        ComponentTrackingM m PyCmp,
                        MonadDependencyTracking PyCmp ObjAdr m,
                        MonadDependencyTracking PyCmp PyCmp m,
                        MonadDependencyTracking PyCmp PyCmpStoreIn m,
                        MonadDependencyTracking PyCmp PyCmpStoreOut m,
                        GraphM (CP String) (CP Bool) m,
                        WorkListM m PyCmp,
                        Typeable obj,
                        Show obj)

newtype PyCmpStoreIn = PyCmpStoreIn PyCmp
    deriving (Eq, Ord, Show)
newtype PyCmpStoreOut = PyCmpStoreOut PyCmp
    deriving (Eq, Ord, Show)

type PyCmp = Key (IntraT () Identity) PyBdy
type PyRes = Val (IntraT () Identity) PyRef

intra :: forall obj m . (AnalysisM m obj) => PyCmp -> m ()
intra cmp = m
              & runIntraAnalysis cmp
    where m = do s <- fromJust <$> Analysis.Monad.get (PyCmpStoreIn cmp)
                 r <- cache cmp (\bdy -> evalBdy bdy
                                            & runPythonCharacteristicsAnalysisT
                                            & runCallT (uncurry callFix))
                        & runAlloc allocPtr
                        & runStoreT s
                        & runJoinT
                 case r of
                    BL.Value (_, s') -> Analysis.Monad.put (PyCmpStoreOut cmp) s'
                    _                -> return ()
          callFix :: PyLoc -> PyBdy -> IntraT' obj m PyRef
          callFix _ bdy = do cmp' <- key bdy
                             spawn cmp'
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
               Analysis.Monad.put (PyCmpStoreIn cmp) =<< initialStore
               iterateWL (intra @obj)                                              -- start the analysis 
               Analysis.Monad.getOrBot (PyCmpStoreOut cmp)

analyze :: forall obj . (Typeable obj, Show obj, PyDomain obj PyRef) => PyPrg -> (Map PyCmp PyRes, Store obj, Map PyLoc CharacteristicsMap)
analyze prg = (rsto, osto, characteristics)
    where (((osto, _), rsto), characteristics) = inter @obj prg
                                    & runWithGraph @(SimpleGraph (CP String) (CP Bool))
                                    & runWithMapping' @PyCmpStoreIn
                                    & runWithMapping' @PyCmpStoreOut
                                    & runWithMapping @PyCmp
                                    & runWithCharacteristics @PyLoc
                                    & runWithDependencyTracking @PyCmp @ObjAdr
                                    & runWithDependencyTracking @PyCmp @PyCmp
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
    void $ (initialStore >>= putStore >> repl)
            & runWithGraph @(SimpleGraph (CP String) (CP Bool))
            & runWithMapping' @PyCmpStoreIn
            & runWithMapping' @PyCmpStoreOut
            & runWithStore @(Store obj) @ObjAdr
            & runWithMapping' @PyCmp @PyRes
            & runWithMapping' @PyCmp
            & runWithCharacteristics @PyLoc
            & runWithDependencyTracking @PyCmp @ObjAdr
            & runWithDependencyTracking @PyCmp @PyCmp
            & runWithDependencyTracking @PyCmp @PyCmpStoreIn
            & runWithDependencyTracking @PyCmp @PyCmpStoreOut
            & runWithComponentTracking @PyCmp
            & runWithWorkList @(Set PyCmp)
    where repl = forever $ do prg <- addImplicitReturn <$> liftIO read
                              let cmp = ((Main prg, initialEnv), [])
                              add cmp
                              Analysis.Monad.put (PyCmpStoreIn cmp) =<< currentStore
                              iterateWL (intra @obj)
                              putStore =<< Analysis.Monad.getOrBot (PyCmpStoreOut cmp)
                              res <- fromJust <$> Analysis.Monad.get @PyCmp @PyRes cmp
                              traverse_ ((mapM lookupAdr . Set.toList . addrs) >=> liftIO . display . joins1) res

---
--- CP instantiation
---



type PyDomainCP = PyObjCP PyRef ObjAdr PyClo

analyzeCP :: PyPrg -> (Map PyCmp PyRes, Store PyDomainCP, Map PyLoc CharacteristicsMap)
analyzeCP = analyze @PyDomainCP

